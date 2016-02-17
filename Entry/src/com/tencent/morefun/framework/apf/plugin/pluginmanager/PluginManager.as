package com.tencent.morefun.framework.apf.plugin.pluginmanager
{
   import flash.events.EventDispatcher;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginManager;
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.net.LoadManager;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import com.tencent.morefun.framework.net.def.LoaderDef;
   import com.tencent.morefun.framework.net.pub;
   import com.tencent.morefun.framework.log.logger;
   import com.tencent.morefun.naruto.model.BaseModel;
   import com.tencent.morefun.framework.apf.plugin.pluginmanager.interfaces.IPluginInfo;
   import com.tencent.morefun.framework.apf.interfaces.IPlugin;
   import flash.display.Loader;
   
   public class PluginManager extends EventDispatcher implements IPluginManager
   {
       
      private var pluginConfig:XML;
      
      private var plugins:Vector.<com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo>;
      
      private var pluginMap:Dictionary;
      
      private var loader:LoadManager;
      
      private var facade:Facade;
      
      public function PluginManager()
      {
         this.facade = Facade.getInstance();
         super();
      }
      
      public function setUp(param1:XML) : void
      {
         var _loc4_:com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo = null;
         this.loader = LoadManager.getManager(LoaderDef.PLUGIN);
         this.loader.pub::log = logger.output;
         this.pluginConfig = param1;
         this.plugins = new Vector.<PluginInfo>();
         this.pluginMap = new Dictionary(false);
         var _loc2_:uint = 0;
         var _loc3_:uint = param1.plugin.length();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = new com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo(param1.plugin[_loc2_]);
            this.pluginMap[_loc4_.interfaceName] = this.plugins[_loc2_] = _loc4_;
            _loc2_++;
         }
      }
      
      public function retrieveModel(param1:String) : BaseModel
      {
         return this.facade.model.retrieveModel(param1);
      }
      
      public function hasModel(param1:String) : Boolean
      {
         return this.facade.model.hasModel(param1);
      }
      
      public function registerModel(param1:BaseModel) : void
      {
         this.facade.model.registerModel(param1);
      }
      
      public function removeModel(param1:String) : void
      {
         this.facade.model.removeModel(param1);
      }
      
      public function getPluginResource(param1:String) : Object
      {
         var _loc2_:IPluginInfo = this.getPluginInfo(param1);
         return _loc2_?_loc2_.resObject:null;
      }
      
      public function hasPlugin(param1:String) : Boolean
      {
         return this.facade.hasPlugin(param1);
      }
      
      public function retrievePlugin(param1:String) : IPlugin
      {
         if(!param1)
         {
            return null;
         }
         return this.facade.retrievePlugin(param1);
      }
      
      public function getTotalPluginInfo() : Vector.<com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo>
      {
         return this.plugins;
      }
      
      public function getPluginInfo(param1:String) : com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo
      {
         if(!param1)
         {
            throw new Error("plguinName不能为空");
         }
         var _loc2_:com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo = this.pluginMap[param1] as PluginInfo;
         if(_loc2_)
         {
            return _loc2_;
         }
         throw new Error("插件配置" + param1 + "不存在");
      }
      
      public function updateCommandRes(param1:String, param2:String, param3:String) : void
      {
         var pluginInfo:IPluginInfo = null;
         var cmd:XML = null;
         var plugin:String = param1;
         var command:String = param2;
         var res:String = param3;
         pluginInfo = this.getPluginInfo(plugin);
         if(pluginInfo == null)
         {
            throw new Error("找不到" + plugin + "插件相关信息");
         }
         cmd = pluginInfo.info.commands.command.(@name == command)[0];
         if(cmd == null)
         {
            throw new Error("找不到" + command + "命令相关信息");
         }
         cmd.@resources = res;
         cmd.@ready = "false";
      }
      
      public function updateLinkRes(param1:String, param2:String, param3:String, param4:int = 0, param5:Boolean = true, param6:int = 0, param7:int = 0, param8:String = null) : void
      {
         var pluginInfo:com.tencent.morefun.framework.apf.plugin.pluginmanager.PluginInfo = null;
         var links:XMLList = null;
         var linkInfo:XML = null;
         var loaderInfo:Loader = null;
         var plugin:String = param1;
         var linkname:String = param2;
         var url:String = param3;
         var missionType:int = param4;
         var sameDomain:Boolean = param5;
         var type:int = param6;
         var byte:int = param7;
         var key:String = param8;
         pluginInfo = this.getPluginInfo(plugin) as PluginInfo;
         if(pluginInfo == null)
         {
            throw new Error("找不到" + plugin + "插件相关信息");
         }
         logger.output("[PluginManager]","[" + pluginInfo.interfaceName + "#updateAsset]" + linkname + ": " + url);
         links = pluginInfo.info..link.(@name == linkname);
         if(links.length() < 1)
         {
            linkInfo = new XML("<link name=\"" + linkname + "\" missionType=\"\" url=\"\"  byte=\"\" key=\"\"/>");
            (pluginInfo.info..commands as XMLList)[0].appendChild(linkInfo);
         }
         else
         {
            linkInfo = links[0];
         }
         if(String(linkInfo.@url) == url)
         {
            return;
         }
         if(pluginInfo.resObject[linkname] != null)
         {
            loaderInfo = this.loader.getResource(linkInfo.@url) as Loader;
            this.loader.releaseAsset(linkInfo.@url);
            this.loader.dispose(linkInfo.@url);
         }
         linkInfo.@url = url;
         linkInfo.@missionType = missionType;
         linkInfo.@sameDomain = sameDomain;
         linkInfo.@type = type;
         linkInfo.@byte = byte;
         if(key != null)
         {
            linkInfo.@key = key;
         }
         pluginInfo.status = PluginInfo.LOADING_RES;
         pluginInfo.resObject[linkname] = null;
      }
   }
}
