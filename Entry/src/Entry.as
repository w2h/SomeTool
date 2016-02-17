package
{
   import flash.display.Sprite;
   import ui.loading.LoadingView;
   import flash.utils.Dictionary;
   import net.KeyFileLoader;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import com.tencent.morefun.naruto.utils.JSExternal;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.external.ExternalInterface;
   import flash.display.StageScaleMode;
   import flash.display.StageAlign;
   import flash.system.Security;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.ByteArray;
   import com.tencent.morefun.naruto.utils.registerAlias;
   import com.tencent.morefun.naruto.file.FileAssetInfo;
   import flash.utils.CompressionAlgorithm;
   import file.FileAssetManager;
   import flash.events.ProgressEvent;
   import def.ConfigAssetDef;
   import base.ApplicationData;
   import com.tencent.morefun.framework.log.logger;
   import util.decryptSWF;
   
   public class Entry extends Sprite
   {
       
      private var pluginCfg:XML;
      
      private var loginCfg:XML;
      
      private var loaderUrl:String;
      
      private var loadingView:LoadingView;
      
      private var totalFile:int = 61;
      
      private var _errorFiles:Vector.<String>;
      
      private var flashVersion:int;
      
      private var assetsVersion:int;
      
      private var configVersion:int;
      
      private var versionMap:Dictionary;
      
      private var manager:KeyFileLoader;
      
      private var serverInfoRequest:ServerInfoRequest;
      
      private var gameVersion:String;
      
      private var baseWebURL:String;
      
      private var _cgiLoader:URLLoader;
      
      private var uin:String;
      
      private var rep_uin:String;
      
      private var rep_svr:String;
      
      private var rep_host:String;
      
      private var rep_port:String;
      
      private var rep_isDebug:Boolean;
      
      private var rep_via:String;
      
      public function Entry():void
      {
         super();
         this._cgiLoader = new URLLoader();
         Qos.loadBegin();
         decryptSWF(loaderInfo.bytes);
         this.serverInfoRequest = new ServerInfoRequest();
         this.updateWebCgiParams();
         this.callLoginCgi();
         if(stage)
         {
            this.onAddedToStage(null);
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
      }
      
      private function callLoginCgi() : void
      {
         var _loc1_:String = "http://report.huoying.qq.com/fcgi-bin/oss_report.fcgi?" + "uin=" + this.rep_uin + "&role_id=0&svr_id=" + this.rep_svr + "&log_id=101002&msg=0&via=" + this.rep_via;
         var _loc2_:URLRequest = new URLRequest(_loc1_);
         this._cgiLoader.addEventListener(Event.COMPLETE,this.onCgiComplete);
         this._cgiLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onCgiIoError);
         this._cgiLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onCgiSecurityError);
         this._cgiLoader.load(_loc2_);
      }
      
      private function cleanCgi() : void
      {
         if(this._cgiLoader == null)
         {
            return;
         }
         if(this._cgiLoader.hasEventListener(Event.COMPLETE))
         {
            this._cgiLoader.removeEventListener(Event.COMPLETE,this.onCgiComplete);
         }
         if(this._cgiLoader.hasEventListener(IOErrorEvent.IO_ERROR))
         {
            this._cgiLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onCgiIoError);
         }
         if(this._cgiLoader.hasEventListener(SecurityErrorEvent.SECURITY_ERROR))
         {
            this._cgiLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onCgiSecurityError);
         }
         this._cgiLoader = null;
      }
      
      private function onCgiComplete(param1:Event) : void
      {
         this.cleanCgi();
      }
      
      private function onCgiIoError(param1:IOErrorEvent) : void
      {
         this.cleanCgi();
      }
      
      private function onCgiSecurityError(param1:SecurityErrorEvent) : void
      {
         this.cleanCgi();
      }
      
      private function jstest() : void
      {
         JSExternal.call("function(){ console.log(\'jstest.SUCCESS:\' + arguments[0] + arguments[1]); }","v","1.0");
      }
      
      private function addBuildVersion(param1:String = null) : void
      {
         this.gameVersion = param1;
         contextMenu = new ContextMenu();
         contextMenu.hideBuiltInItems();
         if(param1)
         {
            contextMenu.customItems.push(new ContextMenuItem(param1));
            contextMenu.customItems.push(new ContextMenuItem("",true));
         }
      }
      
      private function updateServerInfo() : void
      {
         if(ExternalInterface.available)
         {
            this.serverInfoRequest.updateWebServerInfo(loaderInfo.parameters);
         }
         else
         {
            this.serverInfoRequest.updateLocaServerInfo(this.loginCfg.LoginInfo.@id,this.loginCfg.LoginInfo.@uin);
         }
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         if(param1)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         }
         this.stage.scaleMode = StageScaleMode.NO_SCALE;
         this.stage.align = StageAlign.TOP_LEFT;
         Security.allowDomain("*");
         Security.allowInsecureDomain("*");
         addChild(this.loadingView = new LoadingView());
         this.loadingView.percent = 0;
         if(ExternalInterface.available)
         {
            this.uin = ExternalInterface.call.apply(null,["getUin"]);
            _loc4_ = this.uin;
            _loc3_ = loaderInfo.parameters["zone_id"];
            _loc2_ = loaderInfo.parameters["baseURL"];
            Security.loadPolicyFile("xmlsocket://" + loaderInfo.parameters["ip"] + ":" + loaderInfo.parameters["port"]);
            this.flashVersion = loaderInfo.parameters["flash"];
            this.assetsVersion = loaderInfo.parameters["assets"];
            this.configVersion = loaderInfo.parameters["config"];
            this.baseWebURL = _loc2_;
         }
         else
         {
            this.baseWebURL = "http://dev.huoying.qq.com";
         }
         this.loadingView.loadBackgroundImage(this.baseWebURL);
         this.loaderUrl = loaderInfo.loaderURL;
         var _loc5_:String = loaderInfo.loaderURL.split("?").shift();
         _loc5_ = _loc5_.replace(new RegExp("[^\\/]+$"),"") + "resource.cfg";
         var _loc6_:URLLoader = new URLLoader();
         _loc6_.dataFormat = URLLoaderDataFormat.BINARY;
         _loc6_.addEventListener(IOErrorEvent.IO_ERROR,this.versionCompleteHandler);
         _loc6_.addEventListener(Event.COMPLETE,this.versionCompleteHandler);
         _loc6_.load(new URLRequest(_loc5_));
         this.loadingView.tips = "正在加载版本号配置...";
         this.stage.frameRate = 30;
      }
      
      private function versionCompleteHandler(param1:Event) : void
      {
         var _loc3_:XML = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:ByteArray = null;
         var _loc7_:String = null;
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.versionCompleteHandler);
         _loc2_.removeEventListener(Event.COMPLETE,this.versionCompleteHandler);
         registerAlias(FileAssetInfo);
         if(param1.type == Event.COMPLETE)
         {
            _loc6_ = _loc2_.data as ByteArray;
            _loc6_.uncompress(CompressionAlgorithm.LZMA);
            _loc4_ = _loc6_.readUnsignedInt();
            _loc5_ = _loc6_.position;
            this.versionMap = _loc6_.readObject();
            if(_loc6_.position - _loc5_ != _loc4_)
            {
               throw new Error("resource.cfg版本号配置解析失败！");
            }
            _loc5_ = _loc6_.position;
            if(_loc6_.readUnsignedByte())
            {
               _loc4_ = _loc6_.readUnsignedInt();
               if(_loc6_.bytesAvailable >= _loc4_)
               {
                  _loc3_ = new XML(_loc6_.readMultiByte(_loc4_,"utf-8"));
               }
            }
            _loc2_.data.clear();
            _loc2_.close();
         }
         else if(param1.type == IOErrorEvent.IO_ERROR)
         {
            _loc7_ = loaderInfo.loaderURL.split("?").shift();
            _loc7_ = _loc7_.replace(new RegExp("[^\\/]+$"),"") + "resource.cfg";
            this.clientReport(_loc7_);
         }
         this.addBuildVersion(this.versionMap?this.versionMap["version"]:"NONE");
         new FileAssetManager().importConfig(this.versionMap,_loc3_);
         this.loadingView.tips = "正在加载初始化配置...";
         _loc2_ = new URLLoader();
         _loc2_.dataFormat = URLLoaderDataFormat.BINARY;
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.loginConfigCompleteHandler);
         _loc2_.addEventListener(Event.COMPLETE,this.loginConfigCompleteHandler);
         _loc2_.load(new URLRequest(FileAssetManager.getQualifiedUrl("flash/core/LoginConfig.xml")));
      }
      
      private function loginConfigCompleteHandler(param1:Event) : void
      {
         var _loc3_:ByteArray = null;
         var _loc2_:URLLoader = param1.currentTarget as URLLoader;
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.versionCompleteHandler);
         _loc2_.removeEventListener(Event.COMPLETE,this.versionCompleteHandler);
         if(param1.type == Event.COMPLETE)
         {
            _loc3_ = _loc2_.data as ByteArray;
            try
            {
               _loc3_.uncompress();
            }
            catch(err:*)
            {
            }
            this.loginCfg = new XML(_loc3_);
            this.loadingView.tips = "正在加载核心资源...";
            this.manager = new KeyFileLoader(this.loginCfg);
            this.manager.addEventListener(Event.COMPLETE,this.initCompleteHandler);
            this.manager.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
            this.manager.addEventListener(ProgressEvent.PROGRESS,this.keyFileProgressHandler);
            this.manager.start();
            return;
         }
         this.clientReport(FileAssetManager.getQualifiedUrl("flash/core/LoginConfig.xml"));
         this.loadingView.tips = "[flash/core/LoginConfig.xml]加载失败！";
      }
      
      private function onCfgProgress(param1:ProgressEvent) : void
      {
      }
      
      private function keyFileProgressHandler(param1:ProgressEvent) : void
      {
         this.loadingView.percent = this.manager.percent * 5 / 100;
      }
      
      private function errorHandler(param1:IOErrorEvent) : void
      {
         var _loc2_:String = param1.text;
         var _loc3_:* = false;
         if(_loc2_.indexOf("LoginPlugin") > 0)
         {
            if(!ExternalInterface.available)
            {
               _loc3_ = true;
            }
         }
         else
         {
            _loc3_ = true;
         }
         if(_loc3_)
         {
            this._errorFiles = this._errorFiles || new Vector.<String>();
            this._errorFiles.push(_loc2_);
            this.loadingView.tips = "核心文件[" + _loc2_ + "]加载失败!";
            this.clientReport(_loc2_);
         }
      }
      
      private function initCompleteHandler(param1:Event) : void
      {
         var obj:Object = null;
         var e:Event = param1;
         e.currentTarget.removeEventListener(e.type,arguments.callee);
         if(this._errorFiles && this._errorFiles.length)
         {
            this.loadingView.tips = this._errorFiles.length + "个核心文件[" + this._errorFiles.join(",") + "]加载失败，游戏无法启动!!";
            return;
         }
         this.pluginCfg = this.manager.getConfig(ConfigAssetDef.PLUGIN_CONFIG);
         try
         {
         }
         catch(e:Error)
         {
            ApplicationData.singleton.isDebug = true;
            logger.isDebug = true;
         }
         this.serverInfoRequest.loginCfg = this.loginCfg;
         this.updateServerInfo();
         this.setupApp();
      }
      
      private function setupApp() : void
      {
         var _loc1_:Application = null;
         ApplicationData.singleton.baseWebURL = this.baseWebURL;
         ApplicationData.singleton.globelInfo.version = this.gameVersion;
         _loc1_ = new Application();
         var _loc2_:Boolean = Boolean(this.loginCfg.LoginInfo.@hackCheck == "true");
         _loc1_.setup(this.pluginCfg,this.loadingView,loaderInfo,_loc2_);
         addChild(_loc1_);
      }
      
      private function updateWebCgiParams() : void
      {
         var obj:Object = null;
         try
         {
         }
         catch(e:Error)
         {
            rep_isDebug = true;
         }
         if(ExternalInterface.available && this.rep_isDebug == false)
         {
            this.rep_uin = ExternalInterface.call.apply(null,["getUin"]);
            this.rep_svr = loaderInfo.parameters["zone_id"];
            this.rep_host = loaderInfo.parameters["ip"];
            this.rep_port = loaderInfo.parameters["port"];
            this.rep_via = loaderInfo.parameters["via"];
         }
      }
      
      private function clientReport(param1:String = "") : void
      {
         var _loc2_:Array = null;
         if(ExternalInterface.available && this.rep_isDebug == false)
         {
            _loc2_ = [];
            _loc2_.push({
               "name":"type",
               "value":2
            });
            _loc2_.push({
               "name":"uin",
               "value":this.rep_uin
            });
            _loc2_.push({
               "name":"zone",
               "value":this.rep_svr
            });
            _loc2_.push({
               "name":"host",
               "value":this.rep_host
            });
            _loc2_.push({
               "name":"port",
               "value":this.rep_port
            });
            _loc2_.push({
               "name":"url",
               "value":param1
            });
            ExternalInterface.call("clientReport",_loc2_);
         }
      }
   }
}
