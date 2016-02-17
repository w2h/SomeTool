package
{
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import base.ApplicationData;
   import file.FileAssetManager;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   
   public class ServerInfoRequest extends EventDispatcher
   {
       
      private var urlLoader:URLLoader;
      
      public var loginCfg:XML;
      
      public var host:String;
      
      public function ServerInfoRequest()
      {
         super();
      }
      
      public function updateLocaServerInfo(param1:int, param2:String) : void
      {
         var ip:String = null;
         var port:String = null;
         var res:String = null;
         var remoteResPath:String = null;
         var useLocalResources:Boolean = false;
         var loginInfo:Object = null;
         var serverId:int = param1;
         var uin:String = param2;
         ApplicationData.singleton.tgw = true;
         ApplicationData.singleton.ser_id = serverId;
         ApplicationData.singleton.selfSrv = serverId;
         loginInfo = this.loginCfg.LinkInfo.(@id == serverId)[0];
         ip = loginInfo.@ip;
         res = loginInfo.@res;
         port = loginInfo.@prot;
         if(uin == "random")
         {
            uin = 10000 + Math.random() * 100000 + "";
         }
         useLocalResources = String(this.loginCfg.LoginInfo.@useLocalResources) != "false";
         ApplicationData.singleton.vipSource = String(this.loginCfg.LoginInfo.@vipSource);
         ApplicationData.singleton.ip = ip;
         ApplicationData.singleton.host = ip;
         ApplicationData.singleton.selfuin = parseInt(uin);
         ApplicationData.singleton.port = parseInt(port);
         if(useLocalResources)
         {
            FileAssetManager.resPathConfig = this.loginCfg.localResPath[0].@resPathCfg;
            FileAssetManager.resPathAssets = this.loginCfg.localResPath[0].@resPathAssets;
         }
         else
         {
            FileAssetManager.resPathConfig = res;
            FileAssetManager.resPathAssets = res;
            FileAssetManager.resPathFlash = res;
         }
         if(ApplicationData.singleton.defaultIp == null || ApplicationData.singleton.defaultIp == "")
         {
            ApplicationData.singleton.defaultIp = "101.227.160.29";
         }
         this.dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function updateWebServerInfo(param1:Object) : void
      {
         var _loc2_:String = ExternalInterface.call.apply(null,new Array("getUin"));
         ApplicationData.singleton.tgw = true;
         ApplicationData.singleton.ser_id = param1["zone_id"];
         ApplicationData.singleton.selfSrv = param1["zone_id"];
         ApplicationData.singleton.ip = param1["ip"];
         ApplicationData.singleton.host = param1["ip"];
         ApplicationData.singleton.port = param1["port"];
         FileAssetManager.resPathConfig = param1["host"];
         FileAssetManager.resPathAssets = param1["host"];
         FileAssetManager.resPathFlash = param1["host"];
         ApplicationData.singleton.baseURL = param1["baseURL"];
         ApplicationData.singleton.source = param1["source"] || "";
         ApplicationData.singleton.via = param1["via"] || "";
         ApplicationData.singleton.vipSource = param1["sPrivilege"] || "";
         if(ApplicationData.singleton.source == "qzone" && ApplicationData.singleton.vipSource == "")
         {
            ApplicationData.singleton.vipSource = ApplicationData.singleton.source;
         }
         ApplicationData.singleton.rd = param1["rd"] || "";
         var _loc3_:String = param1.hasOwnProperty("isAutoLaunch")?param1["isAutoLaunch"]:"";
         var _loc4_:String = param1.hasOwnProperty("isAutoLaunchWithStartup")?param1["isAutoLaunchWithStartup"]:"";
         var _loc5_:String = param1.hasOwnProperty("tgp")?param1["tgp"]:"";
         if(_loc3_ == "null" || _loc3_ == "0")
         {
            _loc3_ = "";
         }
         if(_loc4_ == "null" || _loc4_ == "0")
         {
            _loc4_ = "";
         }
         if(_loc5_ == "null" || _loc5_ == "0")
         {
            _loc5_ = "";
         }
         ApplicationData.singleton.tgp = _loc5_ != ""?true:false;
         ApplicationData.singleton.isAutoLaunch = _loc3_ != ""?true:false;
         ApplicationData.singleton.isAutoLaunchWithStartup = _loc4_ != ""?true:false;
         ApplicationData.singleton.tgpBoxFlag = param1.hasOwnProperty("tgpBoxFlag")?param1["tgpBoxFlag"]:false;
         ApplicationData.singleton.selfuin = uint(_loc2_);
         if(ApplicationData.singleton.defaultIp == null || ApplicationData.singleton.defaultIp == "")
         {
            ApplicationData.singleton.defaultIp = "101.227.160.29";
         }
      }
   }
}
