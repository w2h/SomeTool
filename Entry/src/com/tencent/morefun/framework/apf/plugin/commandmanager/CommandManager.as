package com.tencent.morefun.framework.apf.plugin.commandmanager
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces.ICommandManager;
   import com.tencent.morefun.framework.base.Command;
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsLoader;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces.IExecuter;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginInfo;
   import com.tencent.morefun.framework.apf.interfaces.IPlugin;
   import com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent;
   import com.tencent.morefun.framework.net.LoadManager;
   import com.tencent.morefun.framework.net.def.LoaderDef;
   import com.tencent.morefun.naruto.model.BaseModel;
   
   [Event(name="commandRequest",type="com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent")]
   [Event(name="commandCancel",type="com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent")]
   [Event(name="commandExecute",type="com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent")]
   [Event(name="commandLoadStart",type="com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent")]
   [Event(name="commandLoadError",type="com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent")]
   [Event(name="commandLoadComplete",type="com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManagerEvent")]
   public class CommandManager extends EventDispatcher implements ICommandManager
   {
       
      private var _queuedCommands:Vector.<Command>;
      
      private var _currentCommand:Command;
      
      private var _executerMap:Dictionary;
      
      private var _pluginExecutersMap:Object;
      
      private var _loader:NarutoAssetsLoader;
      
      private var _facade:Facade;
      
      public function CommandManager()
      {
         this._facade = Facade.getInstance();
         super();
         this.init();
      }
      
      private function init() : void
      {
         this._queuedCommands = new Vector.<Command>();
         this._pluginExecutersMap = new Dictionary(false);
         this._executerMap = new Dictionary(false);
      }
      
      public function callCommand(param1:Command) : void
      {
         var _loc2_:String = param1.getPluginName();
         param1.begin();
         this.dispatch(CommandManagerEvent.COMMAND_REQUEST,param1);
         if(this.checkCommandAssetsComplete(param1))
         {
            this.doCommand(param1);
         }
         else if(this._queuedCommands.indexOf(param1) < 0)
         {
            this._queuedCommands.push(param1);
            this.processNextCommand();
         }
      }
      
      public function doCommand(param1:Command) : void
      {
         var _loc5_:IExecuter = null;
         this.dispatch(CommandManagerEvent.COMMAND_EXECUTE,param1);
         var _loc2_:String = param1.getPluginName();
         logger.output("[COMMAND]","[" + _loc2_ + "]","[EXECUTE]",param1);
         var _loc3_:Vector.<IExecuter> = this.getPluginExecuters(_loc2_);
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc5_ = _loc3_[_loc4_] as IExecuter;
            if(_loc5_.commandFilter(param1))
            {
               _loc5_.doCommand(param1);
            }
            _loc4_++;
         }
         param1.loadingEnd();
      }
      
      public function cancelCommand(param1:Command) : void
      {
         this.dispatch(CommandManagerEvent.COMMAND_CANCEL,param1);
         if(param1 == this._currentCommand)
         {
            this._currentCommand = null;
            this.processNextCommand();
         }
         else if(this._queuedCommands.indexOf(param1) != -1)
         {
            this._queuedCommands.splice(this._queuedCommands.indexOf(param1),1);
         }
      }
      
      private function checkCommandAssetsComplete(param1:Command) : Boolean
      {
         var pluginName:String = null;
         var commandName:String = null;
         var plugin:IPluginInfo = null;
         var reliedAssets:Array = null;
         var key:String = null;
         var command:Command = param1;
         pluginName = command.getPluginName();
         commandName = command.getCommandName();
         if(!this._facade.hasPlugin(pluginName))
         {
            return false;
         }
         plugin = this._facade.pluginManager.getPluginInfo(pluginName);
         var cmdCfg:XML = plugin.info.commands.command.(@name == commandName)[0];
         if(!cmdCfg || String(cmdCfg.@ready) == "true")
         {
            return true;
         }
         reliedAssets = String(cmdCfg.@resources).replace(new RegExp("^\\s*|\\s*$","g"),"").split(new RegExp("\\s*,\\s*","g"));
         while(reliedAssets.length)
         {
            key = reliedAssets.shift();
            if(key)
            {
               if(!plugin.resObject[key])
               {
                  return false;
               }
            }
         }
         cmdCfg.@ready = "true";
         return true;
      }
      
      private function processNextCommand() : void
      {
         var _loc2_:Command = null;
         if(this._currentCommand || !this._queuedCommands.length)
         {
            return;
         }
         this._currentCommand = this._queuedCommands.shift() as Command;
         if(this.checkCommandAssetsComplete(this._currentCommand))
         {
            _loc2_ = this._currentCommand;
            this._currentCommand = null;
            this.doCommand(_loc2_);
            this.processNextCommand();
            return;
         }
         var _loc1_:IPlugin = this._facade.retrievePlugin(this._currentCommand.getPluginName());
         if(!_loc1_)
         {
            if(this._currentCommand.needHostPlugin)
            {
               this.loadCurrentCommand();
            }
            else
            {
               this._currentCommand = null;
               logger.output("[COMMAND]","[SKIPPED]",this._queuedCommands.length,this._queuedCommands);
               this.processNextCommand();
            }
         }
         else
         {
            this.loadCurrentCommand();
         }
      }
      
      private function loadCurrentCommand() : void
      {
         this._loader && this._loader.dispose();
         this._loader = new NarutoAssetsLoader();
         logger.output("[COMMAND]","[LOADING]",this._currentCommand.getCommandName());
         this.dispatch(CommandManagerEvent.COMMAND_LOAD_START,this._currentCommand);
         this._loader.pushCommands(Vector.<Command>([this._currentCommand]));
         this._loader.addEventListener(NarutoAssetsEvent.PROGRESS,this.commandAssetsHandler);
         this._loader.addEventListener(NarutoAssetsEvent.ALL_COMPLETE,this.commandAssetsHandler);
         this._loader.start(LoadManager.getManager(LoaderDef.PLUGIN));
      }
      
      private function commandAssetsHandler(param1:NarutoAssetsEvent) : void
      {
         var _loc3_:Command = null;
         var _loc2_:NarutoAssetsLoader = param1.currentTarget as NarutoAssetsLoader;
         if(param1.type != NarutoAssetsEvent.PROGRESS)
         {
            if(param1.type == NarutoAssetsEvent.ALL_COMPLETE)
            {
               this.dispatch(CommandManagerEvent.COMMAND_LOAD_COMPLETE,this._currentCommand);
               _loc3_ = this._currentCommand;
               this._currentCommand = null;
               _loc2_.removeEventListener(NarutoAssetsEvent.PROGRESS,this.commandAssetsHandler);
               _loc2_.removeEventListener(NarutoAssetsEvent.ALL_COMPLETE,this.commandAssetsHandler);
               if(!_loc2_.fails || _loc2_.fails.length == 0)
               {
                  this.doCommand(_loc3_);
               }
               else
               {
                  this.dispatch(CommandManagerEvent.COMMAND_LOAD_ERROR,_loc3_);
                  logger.output("[" + _loc3_.getCommandName() + "]命令资源加载失败: \n" + _loc2_.fails.join("\n\t"));
               }
               this.processNextCommand();
            }
         }
      }
      
      public function retrieveModel(param1:String) : BaseModel
      {
         return this._facade.model.retrieveModel(param1);
      }
      
      public function hasModel(param1:String) : Boolean
      {
         return this._facade.model.hasModel(param1);
      }
      
      public function registerModel(param1:BaseModel) : void
      {
         this._facade.model.registerModel(param1);
      }
      
      public function removeModel(param1:String) : void
      {
         this._facade.model.removeModel(param1);
      }
      
      public function hasExecuter(param1:String) : Boolean
      {
         return this.retrieveExecuter(param1) != null;
      }
      
      public function registerExecuter(param1:IExecuter) : IExecuter
      {
         var _loc2_:String = param1.getExecuterName();
         if(this.hasExecuter(_loc2_))
         {
            throw new Error("Executer" + _loc2_ + "已注册");
         }
         if(_loc2_)
         {
            this._executerMap[_loc2_] = param1;
         }
         var _loc3_:Vector.<IExecuter> = this.getPluginExecuters(param1.getPluginName());
         if(_loc3_.indexOf(param1) < 0)
         {
            _loc3_.push(param1);
         }
         return param1;
      }
      
      private function getPluginExecuters(param1:String) : Vector.<IExecuter>
      {
         var _loc2_:Vector.<IExecuter> = this._pluginExecutersMap[param1] as Vector.<IExecuter>;
         if(!_loc2_)
         {
            _loc2_ = this._pluginExecutersMap[param1] = new Vector.<IExecuter>();
         }
         return _loc2_;
      }
      
      public function removeAllExecuter(param1:String) : void
      {
         var _loc3_:IExecuter = null;
         var _loc2_:Vector.<IExecuter> = this.getPluginExecuters(param1);
         while(_loc2_.length > 0)
         {
            _loc3_ = _loc2_.pop() as IExecuter;
            this.removeExecuter(_loc3_.getExecuterName());
         }
      }
      
      public function removeExecuter(param1:String) : IExecuter
      {
         if(!this.hasExecuter(param1))
         {
            return null;
         }
         var _loc2_:IExecuter = this.retrieveExecuter(param1);
         delete this._executerMap[param1];
         var _loc3_:Vector.<IExecuter> = this.getPluginExecuters(_loc2_.getPluginName());
         _loc3_.splice(_loc3_.indexOf(_loc2_),1);
         _loc2_.finalize();
         return _loc2_;
      }
      
      public function retrieveExecuter(param1:String) : IExecuter
      {
         return this._executerMap[param1];
      }
      
      protected function dispatch(param1:String, param2:Command) : void
      {
         var _loc3_:String = param2.getPluginName();
         dispatchEvent(new CommandManagerEvent(param1,param2,this._facade.pluginManager.getPluginInfo(_loc3_),this._facade.retrievePlugin(_loc3_),false,false));
      }
      
      public function get loader() : NarutoAssetsLoader
      {
         return this._loader;
      }
   }
}
