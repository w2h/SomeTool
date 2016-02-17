package com.tencent.morefun.framework.apf.core.facade
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.framework.apf.interfaces.IFacade;
   import com.tencent.morefun.naruto.language.LanguageModelManager;
   import com.tencent.morefun.naruto.model.ModelManager;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.CommandManager;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginManager;
   import com.tencent.morefun.framework.base.StartUpEvent;
   import com.tencent.morefun.framework.apf.interfaces.IPlugin;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginInfo;
   import com.tencent.morefun.framework.apf.plugin.commandmanager.interfaces.IExecuter;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.naruto.language.LanguModel;
   import com.tencent.morefun.framework.base.PluginEvent;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo;
   import flash.utils.Dictionary;
   
   [Event(name="pluginRegister",type="com.tencent.morefun.framework.base.PluginEvent")]
   [Event(name="complete",type="com.tencent.morefun.framework.base.StartUpEvent")]
   [Event(name="register",type="com.tencent.morefun.framework.base.StartUpEvent")]
   [Event(name="startUp",type="com.tencent.morefun.framework.base.StartUpEvent")]
   public class Facade extends EventDispatcher implements IFacade
   {
      
      private static var _instance:com.tencent.morefun.framework.apf.core.facade.Facade;
       
      private var _languageModel:LanguageModelManager;
      
      private var _model:ModelManager;
      
      private var _commandManager:CommandManager;
      
      private var _pluginManager:PluginManager;
      
      private var _pluginMap:Dictionary;
      
      public function Facade(param1:FacadeSingleton)
      {
         super();
         if(!param1)
         {
            throw Error("SINGLETON");
         }
         this._pluginMap = new Dictionary();
      }
      
      public static function getInstance() : com.tencent.morefun.framework.apf.core.facade.Facade
      {
         return _instance = _instance || new com.tencent.morefun.framework.apf.core.facade.Facade(new FacadeSingleton());
      }
      
      public function dispatchStartUpEvent(param1:StartUpEvent) : void
      {
         dispatchEvent(param1);
      }
      
      public function registerPlugin(param1:IPlugin, param2:IPluginInfo) : IPlugin
      {
         var _loc3_:XML = param2.info;
         var _loc4_:XML = param2.languList;
         var _loc5_:IExecuter = param1 as IExecuter;
         if(_loc5_)
         {
            this.getCommandManager().registerExecuter(_loc5_);
         }
         if(this.hasPlugin(param1.getPluginName()))
         {
            logger.output("[APF]","此插件已注册");
            return null;
         }
         this._pluginMap[param1.getPluginName()] = param1;
         var _loc6_:LanguModel = new LanguModel(param1.getPluginName(),_loc4_);
         param1.registerLanguageModel(_loc6_);
         param1.initialize(_loc3_);
         dispatchEvent(new PluginEvent(PluginEvent.PLUGIN_REGISTER,param2 as PluginInfo));
         return param1;
      }
      
      public function hasPlugin(param1:String) : Boolean
      {
         return this.retrievePlugin(param1) != null;
      }
      
      public function retrievePlugin(param1:String) : IPlugin
      {
         return this._pluginMap[param1] as IPlugin;
      }
      
      public function removePlugin(param1:String) : IPlugin
      {
         var _loc2_:IPlugin = this._pluginMap[param1] as IPlugin;
         if(_loc2_ != null)
         {
            delete this._pluginMap[param1];
            _loc2_.removeLanguageModel(_loc2_.getPluginName());
            _loc2_.finalize();
         }
         else
         {
            logger.output("[APF]","此插件未注册");
         }
         return _loc2_;
      }
      
      public function get model() : ModelManager
      {
         return this._model = this._model || new ModelManager();
      }
      
      public function get languageModel() : LanguageModelManager
      {
         return this._languageModel = this._languageModel || new LanguageModelManager();
      }
      
      public function get commandManager() : CommandManager
      {
         return this._commandManager = this._commandManager || new CommandManager();
      }
      
      public function getCommandManager() : CommandManager
      {
         return this.commandManager;
      }
      
      public function get pluginManager() : PluginManager
      {
         return this._pluginManager = this._pluginManager || new PluginManager();
      }
      
      public function getPluginManager() : PluginManager
      {
         return this.pluginManager;
      }
   }
}

class FacadeSingleton
{
    
   function FacadeSingleton()
   {
      super();
   }
}
