package com.tencent.morefun.framework.apf.managers.plugin
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.framework.net.LoadManager;
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo;
   import com.tencent.morefun.framework.base.Command;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import flash.system.ApplicationDomain;
   import flash.events.ProgressEvent;
   import flash.display.Loader;
   import flash.events.UncaughtErrorEvent;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.framework.apf.interfaces.IPlugin;
   
   [Event(name="naruto.allComplete",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   [Event(name="naruto.pluginCreateError",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   [Event(name="naruto.pluginCreateComplete",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   [Event(name="naruto.progress",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   [Event(name="naruto.commandComplete",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   [Event(name="naruto.pluginComplete",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   [Event(name="naruto.assetError",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   [Event(name="naruto.assetComplete",type="com.tencent.morefun.framework.apf.managers.plugin.NarutoAssetsEvent")]
   public class NarutoAssetsLoader extends EventDispatcher
   {
       
      private var _percent:Number;
      
      private var _loadedCount:uint;
      
      private var _totalCount:uint;
      
      private var _loader:LoadManager;
      
      private var _groups:Vector.<AssetGroupInfo>;
      
      private var _assets:AssetGroupInfo;
      
      private var _urls:Vector.<String>;
      
      private var _registry:Dictionary;
      
      private var _trigger:Dictionary;
      
      private var _progress:Dictionary;
      
      private var _fails:Vector.<String>;
      
      private var _plugins:Vector.<PluginInfo>;
      
      public function NarutoAssetsLoader()
      {
         super();
         this._assets = new AssetGroupInfo();
         this._groups = new Vector.<AssetGroupInfo>();
         this._groups.push(this._assets);
         this._registry = new Dictionary(false);
         this._trigger = new Dictionary(false);
         this._plugins = new Vector.<PluginInfo>();
      }
      
      public function pushAsset(param1:String, param2:Boolean) : void
      {
         this.attachAsset2Group(param1,this._assets,param2);
      }
      
      public function pushAssets(param1:Vector.<String>, param2:Boolean = true) : void
      {
         var _loc3_:String = null;
         for each(_loc3_ in param1)
         {
            this.attachAsset2Group(_loc3_,this._assets,param2);
         }
      }
      
      public function pushNewDomainAssets(param1:Vector.<String>) : void
      {
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            this.attachAsset2Group(_loc2_,this._assets,false,true);
         }
      }
      
      public function pushCommands(param1:Vector.<Command>) : void
      {
         var _loc2_:AssetGroupInfo = null;
         var _loc3_:Command = null;
         for each(_loc3_ in param1)
         {
            if(!this._registry[_loc3_])
            {
               _loc2_ = new AssetGroupInfo();
               _loc2_.relatedObject = _loc3_;
               this.collectCommandAssets(_loc3_,_loc2_);
               this._registry[_loc3_] = _loc2_;
               this._groups.push(_loc2_);
            }
         }
      }
      
      private function collectCommandAssets(param1:Command, param2:AssetGroupInfo) : void
      {
         var facade:Facade = null;
         var plugin:PluginInfo = null;
         var item:XML = null;
         var list:Array = null;
         var key:String = null;
         var linkCfg:XML = null;
         var requiredAsset:String = null;
         var command:Command = param1;
         var group:AssetGroupInfo = param2;
         facade = Facade.getInstance();
         plugin = facade.pluginManager.getPluginInfo(command.getPluginName()) as PluginInfo;
         if(!facade.hasPlugin(command.getPluginName()))
         {
            this.pushPlugins(Vector.<PluginInfo>([plugin]));
         }
         var links:XMLList = plugin.info..link;
         var config:XMLList = plugin.info.commands.command.(@name == command.getCommandName());
         for each(item in config)
         {
            list = String(item.@resources).split(new RegExp("\\s*,\\s*","g"));
            while(list.length)
            {
               key = list.shift();
               if(key && !plugin.resObject[key])
               {
                  linkCfg = links.(@name == key)[0];
                  this.attachAsset2Group(linkCfg.@url,group,String(linkCfg["curDomain"]) != "false");
               }
            }
         }
         if(command.requiredAssets && command.requiredAssets.length)
         {
            command.assets = new Dictionary(false);
            for each(requiredAsset in command.requiredAssets)
            {
               command.assets[requiredAsset] = null;
               this.attachAsset2Group(requiredAsset,group,false);
            }
         }
      }
      
      public function pushPlugins(param1:Vector.<PluginInfo>) : void
      {
         var _loc2_:AssetGroupInfo = null;
         var _loc3_:PluginInfo = null;
         for each(_loc3_ in param1)
         {
            if(!this._registry[_loc3_])
            {
               _loc2_ = new AssetGroupInfo();
               _loc2_.relatedObject = _loc3_;
               this.collectPluginAssets(_loc3_,_loc2_);
               this._registry[_loc3_] = _loc2_;
               this._groups.push(_loc2_);
               this._plugins.push(_loc3_);
            }
         }
      }
      
      private function attachAsset2Group(param1:String, param2:AssetGroupInfo, param3:Boolean, param4:Boolean = false) : void
      {
         if(param1 && !param2.dict.hasOwnProperty(param1))
         {
            param2.dict[param1] = false;
            param2.domain[param1] = param3;
            param2.newDomain[param1] = param4;
            param2.urls.push(param1);
         }
      }
      
      private function collectPluginAssets(param1:PluginInfo, param2:AssetGroupInfo) : void
      {
         var _loc4_:XML = null;
         var _loc6_:XMLList = null;
         var _loc7_:XML = null;
         var _loc8_:PluginInfo = null;
         var _loc9_:String = null;
         var _loc3_:Vector.<PluginInfo> = new Vector.<PluginInfo>();
         var _loc5_:Facade = Facade.getInstance();
         for each(_loc4_ in param1.info.rely.plugin)
         {
            _loc8_ = _loc5_.pluginManager.getPluginInfo(String(_loc4_["interface"]));
            if(_loc8_)
            {
               _loc3_.push(_loc8_);
            }
         }
         _loc3_.length && this.pushPlugins(_loc3_);
         _loc6_ = param1.info.resource.link;
         for each(_loc4_ in _loc6_)
         {
            _loc9_ = _loc4_.@name;
            if(!param1.resObject[_loc9_])
            {
               this.attachAsset2Group(_loc4_.@url,param2,String(_loc4_["curDomain"]) != "false");
            }
         }
         _loc7_ = param1.info.logic.link[0];
         if(!_loc7_ || !String(_loc7_.@url))
         {
            throw new Error("[" + param1.interfaceName + "]插件配置<logic/>节点未正确配置");
         }
         _loc9_ = _loc7_.@name;
         if(!param1.resObject[_loc9_])
         {
            this.attachAsset2Group(_loc7_.@url,param2,true);
         }
      }
      
      public function start(param1:LoadManager) : void
      {
         var _loc3_:Vector.<AssetGroupInfo> = null;
         var _loc4_:AssetGroupInfo = null;
         var _loc5_:String = null;
         this._loader = param1 || LoadManager.getManager();
         this._progress = new Dictionary(false);
         this._fails = new Vector.<String>();
         this._urls = new Vector.<String>();
         var _loc2_:Array = [];
         for each(_loc4_ in this._groups)
         {
            for each(_loc5_ in _loc4_.urls)
            {
               if(!this._trigger[_loc5_])
               {
                  this._totalCount++;
                  this._urls.push(_loc5_);
                  this._trigger[_loc5_] = new Vector.<AssetGroupInfo>();
                  this._loader.registerProgressListener(_loc5_,this.processAssetProgress);
                  _loc2_.push([_loc5_,this.processTaskComplete,null,Boolean(_loc4_.newDomain[_loc5_])?new ApplicationDomain():null,Boolean(_loc4_.domain[_loc5_])]);
               }
               _loc3_ = this._trigger[_loc5_] as Vector.<AssetGroupInfo>;
               if(_loc3_.indexOf(_loc4_) < 0)
               {
                  _loc3_.push(_loc4_);
               }
            }
         }
         while(_loc2_.length)
         {
            this._loader.loadTask.apply(null,_loc2_.shift());
         }
      }
      
      private function processAssetProgress(param1:ProgressEvent, param2:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:* = 0;
         if(param1 && param1.bytesTotal && param1.bytesLoaded)
         {
            this._progress[param2] = param1.bytesLoaded / param1.bytesTotal;
         }
         this._percent = 0;
         for(_loc3_ in this._progress)
         {
            this._percent = this._percent + 1 / this._totalCount * this._progress[_loc3_] * 100;
         }
         _loc4_ = this.getRelatedFlag(param2);
         dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.PROGRESS,this._percent,param2,_loc4_));
      }
      
      private function updatePluginAsset(param1:PluginInfo, param2:String, param3:*) : void
      {
         var links:XMLList = null;
         var nodeList:XMLList = null;
         var node:XML = null;
         var i:int = 0;
         var name:String = null;
         var plugin:PluginInfo = param1;
         var url:String = param2;
         var data:* = param3;
         links = plugin.info..link;
         nodeList = links.(@url == url);
         for each(node in nodeList)
         {
            name = node.@name;
            if(name)
            {
               plugin.resObject[name] = data;
            }
         }
         i = 1;
         while(i < nodeList.length())
         {
            this._loader.getResource(url);
            i++;
         }
         if(data is Loader)
         {
            (data as Loader).contentLoaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.globalUncaughtHandler);
         }
      }
      
      private function globalUncaughtHandler(param1:UncaughtErrorEvent) : void
      {
         logger.output(param1.error);
      }
      
      private function getRelatedFlag(param1:String) : int
      {
         var _loc5_:AssetGroupInfo = null;
         var _loc6_:Command = null;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:Vector.<AssetGroupInfo> = this._trigger[param1] as Vector.<AssetGroupInfo>;
         for each(_loc5_ in _loc4_)
         {
            _loc5_.dict[param1] = true;
            if(_loc5_.relatedObject is Command)
            {
               _loc6_ = _loc5_.relatedObject as Command;
               if(_loc6_.isFullLoadingCommand())
               {
                  _loc2_ = true;
               }
               else
               {
                  _loc3_ = true;
               }
            }
         }
         if(_loc2_ && _loc3_)
         {
            return NarutoAssetsRelatedFlagDef.BOTH_LOADING_COMMAND;
         }
         if(_loc2_)
         {
            return NarutoAssetsRelatedFlagDef.FULL_LOADING_COMMAND;
         }
         if(_loc3_)
         {
            return NarutoAssetsRelatedFlagDef.LOADING_COMMAND;
         }
         return 0;
      }
      
      private function processTaskComplete(param1:*, param2:String) : void
      {
         var _loc6_:AssetGroupInfo = null;
         var _loc7_:Command = null;
         var _loc8_:PluginInfo = null;
         var _loc9_:String = null;
         var _loc3_:Facade = Facade.getInstance();
         this._progress[param2] = 1;
         this.processAssetProgress(null,param2);
         var _loc4_:int = this.getRelatedFlag(param2);
         if(!param1)
         {
            this._fails.push(param2);
            dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.ASSET_ERROR,param1,param2,_loc4_));
         }
         dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.ASSET_COMPLETE,param1,param2,_loc4_));
         var _loc5_:Vector.<AssetGroupInfo> = this._trigger[param2] as Vector.<AssetGroupInfo>;
         for each(_loc6_ in _loc5_)
         {
            _loc6_.dict[param2] = true;
            if(_loc6_.relatedObject is Command)
            {
               _loc7_ = _loc6_.relatedObject as Command;
               _loc8_ = _loc3_.pluginManager.getPluginInfo(_loc7_.getPluginName()) as PluginInfo;
               this.updatePluginAsset(_loc8_,param2,param1);
               if(_loc7_.assets && param2 in _loc7_.assets)
               {
                  _loc7_.assets[param2] = param1;
               }
            }
            else if(_loc6_.relatedObject is PluginInfo)
            {
               this.updatePluginAsset(_loc6_.relatedObject as PluginInfo,param2,param1);
            }
            if(++_loc6_.loadedCount == _loc6_.urls.length)
            {
               for(_loc9_ in _loc6_.dict)
               {
                  if(!_loc6_.dict[_loc9_])
                  {
                     throw new Error("文件状态管理异常!");
                  }
               }
               _loc6_.complete = true;
               if(_loc6_.relatedObject is Command)
               {
                  this.registerCommand(_loc6_.relatedObject as Command);
                  dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.COMMAND_COMPLETE,_loc6_.relatedObject as Command,param2,_loc4_));
               }
               else if(_loc6_.relatedObject is PluginInfo)
               {
                  dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.PLUGIN_COMPLETE,_loc6_.relatedObject as PluginInfo,param2,_loc4_));
               }
            }
         }
         if(++this._loadedCount == this._totalCount)
         {
            while(this._plugins.length)
            {
               this.registerPlugin(this._plugins.shift());
            }
            dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.ALL_COMPLETE,null,null,_loc4_));
         }
      }
      
      private function registerCommand(param1:Command) : void
      {
         var plugin:PluginInfo = null;
         var definition:String = null;
         var cmdCfg:XML = null;
         var command:Command = param1;
         plugin = Facade.getInstance().pluginManager.getPluginInfo(command.getPluginName());
         definition = command.getCommandName();
         cmdCfg = plugin.info.commands.command.(@name == definition)[0];
         if(cmdCfg)
         {
            cmdCfg.@ready = "true";
         }
      }
      
      private function registerPlugin(param1:PluginInfo) : void
      {
         var _loc2_:Facade = Facade.getInstance();
         var _loc3_:String = param1.info.logic.link.@name;
         var _loc4_:Loader = param1.resObject[_loc3_] as Loader;
         if(!_loc4_ || !(_loc4_.content is IPlugin))
         {
            param1.status = PluginInfo.CREATE_ERROR;
            logger.output("[PLUGIN]","[" + param1.interfaceName + "]","[CREATE_ERROR]");
            dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.PLUGIN_CREATE_ERROR,param1));
            return;
         }
         _loc2_.registerPlugin(_loc4_.content as IPlugin,param1);
         param1.status = PluginInfo.REGISTERED;
         logger.output("[PLUGIN]","[" + param1.interfaceName + "]","[REGISTERED]");
         dispatchEvent(new NarutoAssetsEvent(NarutoAssetsEvent.PLUGIN_CREATE_COMPLETE,param1));
      }
      
      public function dispose() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:AssetGroupInfo = null;
         var _loc3_:String = null;
         for(_loc1_ in this._registry)
         {
            delete this._registry[_loc1_];
         }
         this._registry = null;
         for(_loc1_ in this._trigger)
         {
            delete this._trigger[_loc1_];
         }
         this._trigger = null;
         for(_loc1_ in this._progress)
         {
            delete this._progress[_loc1_];
         }
         this._progress = null;
         while(this._groups && this._groups.length)
         {
            _loc2_ = this._groups.pop();
            for each(_loc3_ in _loc2_.urls)
            {
               this._loader.unregisterProgressListener(_loc3_,this.processAssetProgress);
               this._loader.killCompleteCallback(_loc3_,this.processTaskComplete);
            }
            _loc2_.dispose();
         }
         this._groups = null;
         this._assets = null;
         if(this._urls)
         {
            this._urls.length = 0;
            this._urls = null;
         }
         if(this._fails)
         {
            this._fails.length = 0;
            this._fails = null;
         }
      }
      
      public function get percent() : Number
      {
         return this._percent;
      }
      
      public function get loadedCount() : uint
      {
         return this._loadedCount;
      }
      
      public function get totalCount() : uint
      {
         return this._totalCount;
      }
      
      public function get fails() : Vector.<String>
      {
         return this._fails;
      }
   }
}

import flash.utils.Dictionary;

class AssetGroupInfo
{
    
   public var loadedCount:uint;
   
   public var urls:Vector.<String>;
   
   public var dict:Dictionary;
   
   public var newDomain:Dictionary;
   
   public var domain:Dictionary;
   
   public var relatedObject:Object;
   
   public var complete:Boolean;
   
   function AssetGroupInfo()
   {
      super();
      this.urls = new Vector.<String>();
      this.dict = new Dictionary(false);
      this.domain = new Dictionary(false);
      this.newDomain = new Dictionary(false);
   }
   
   public function dispose() : void
   {
      var _loc1_:String = null;
      for(_loc1_ in this.dict)
      {
         delete this.dict[_loc1_];
      }
      this.dict = null;
      for(_loc1_ in this.domain)
      {
         delete this.domain[_loc1_];
      }
      this.domain = null;
      for(_loc1_ in this.newDomain)
      {
         delete this.newDomain[_loc1_];
      }
      this.newDomain = null;
      if(this.urls)
      {
         this.urls.length = 0;
         this.urls = null;
      }
      this.relatedObject = null;
   }
}
