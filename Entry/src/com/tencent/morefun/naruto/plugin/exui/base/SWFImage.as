package com.tencent.morefun.naruto.plugin.exui.base
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.loader.LoaderAssist;
   import flash.display.MovieClip;
   import ui.naruto.LoadingUI;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import com.tencent.morefun.framework.loader.mission.LoaderMission;
   import flash.system.ApplicationDomain;
   import com.tencent.morefun.framework.loader.LoaderEvent;
   import flash.display.Loader;
   import com.tencent.morefun.framework.log.logger;
   
   public class SWFImage extends Sprite
   {
      
      public static var missionMap:Dictionary = new Dictionary();
      
      public static var releaseMissionList:Dictionary = new Dictionary(true);
      
      public static var loader:LoaderAssist = new LoaderAssist("Image");
      
      protected static var urlRefMap:Dictionary = new Dictionary();
      
      private static var index:int;
       
      protected var m_width:int;
      
      protected var m_height:int;
      
      protected var m_isResetSize:Boolean;
      
      protected var m_content:MovieClip;
      
      protected var m_content_url:String;
      
      protected var m_url:String;
      
      protected var m_def:String;
      
      protected var m_isLoaded:Boolean;
      
      protected var m_missionList:Array;
      
      protected var m_useCache:Boolean;
      
      protected var m_isPlaying:Boolean;
      
      protected var m_curDomain:Boolean;
      
      protected var m_isLoadStarted:Boolean;
      
      protected var m_centerAlign:Boolean;
      
      protected var m_loader:LoaderAssist;
      
      protected var m_loadingUI:LoadingUI;
      
      protected var m_showLoadingMC:Boolean;
      
      protected var m_loadingMCX:int;
      
      protected var m_loadingMCY:int;
      
      private var m_index:int;
      
      protected var lastUrl:String;
      
      private var stageCheckId:uint;
      
      public function SWFImage(param1:int = 0, param2:int = 0, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:int = 0, param8:int = 0)
      {
         this.m_missionList = [];
         super();
         this.m_loader = loader;
         this.m_isResetSize = param3;
         this.m_centerAlign = param5;
         this.m_loader.traceFunction = logger.output;
         this.m_width = param1;
         this.m_height = param2;
         this.m_useCache = param4;
         this.m_showLoadingMC = param6;
         this.m_loadingMCX = param7;
         this.m_loadingMCY = param8;
         this.m_index = index++;
         this.addEventListener(Event.ADDED_TO_STAGE,this.onAddToStage,false,0,true);
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemoveFormStage,false,0,true);
      }
      
      private function onAddToStage(param1:Event) : void
      {
         clearTimeout(this.stageCheckId);
         this.load(this.lastUrl,this.m_def,this.m_curDomain);
      }
      
      private function onRemoveFormStage(param1:Event) : void
      {
         clearTimeout(this.stageCheckId);
         this.stageCheckId = setTimeout(this.stageCheck,10000);
      }
      
      public function get url() : String
      {
         return this.m_url;
      }
      
      public function get isLoaded() : Boolean
      {
         return this.m_isLoaded;
      }
      
      public function get isLoadStarted() : Boolean
      {
         return this.m_isLoadStarted;
      }
      
      private function stageCheck() : void
      {
         if(!stage)
         {
            this.unload();
         }
      }
      
      public function load(param1:String, param2:String = null, param3:Boolean = true) : void
      {
         var _loc4_:LoaderMission = null;
         if(this.m_url == param1 || !param1)
         {
            return;
         }
         this.m_def = param2;
         this.m_curDomain = param3;
         this.m_url = this.getCleanURL(param1);
         this.lastUrl = this.m_url;
         if(!stage)
         {
            this.stageCheckId = setTimeout(this.stageCheck,10000);
         }
         _loc4_ = this.m_loader.getCompleteMission(this.m_url) as LoaderMission;
         if(_loc4_ == null)
         {
            this.addLoadEventListener();
            if(this.m_missionList.indexOf(this.m_url) == -1)
            {
               this.m_missionList.push(this.m_url);
            }
            if(this.m_loader.hasMission(this.m_url) == false && this.m_loader.missionIsComplete(this.m_url) == false)
            {
               _loc4_ = new LoaderMission(this.m_url,param1,this.m_useCache,0);
               if(!param3)
               {
                  _loc4_.applicationDomain = new ApplicationDomain();
               }
               this.m_loader.loadMission(_loc4_);
            }
            if(this.m_showLoadingMC)
            {
               this.m_loadingUI = this.m_loadingUI || new LoadingUI();
               this.m_loadingUI.x = this.m_loadingMCX;
               this.m_loadingUI.y = this.m_loadingMCY;
               addChild(this.m_loadingUI);
            }
         }
         else
         {
            this.init(_loc4_.loader);
         }
      }
      
      public function play() : void
      {
         this.m_isPlaying = true;
      }
      
      public function stop() : void
      {
         this.m_isPlaying = false;
      }
      
      private function reset() : void
      {
         this.removeContent();
         this.removeLoadEventListener();
         this.m_isLoaded = false;
         this.m_isLoadStarted = false;
         if(this.m_loadingUI && this.contains(this.m_loadingUI))
         {
            this.m_loadingUI.gotoAndStop(1);
            removeChild(this.m_loadingUI);
         }
      }
      
      public function unload() : void
      {
         var _loc1_:String = null;
         clearTimeout(this.stageCheckId);
         _loc1_ = this.m_content_url;
         this.removeContent();
         this.removeLoadEventListener();
         this.m_isLoaded = false;
         this.m_isLoadStarted = false;
         this.m_url = null;
         this.m_content_url = _loc1_;
         if(this.getRef() == 0)
         {
            this.m_loader.removeMission(this.m_content_url,false);
         }
         if(this.m_loadingUI && this.contains(this.m_loadingUI))
         {
            this.m_loadingUI.gotoAndStop(1);
            removeChild(this.m_loadingUI);
         }
         this.m_content_url = null;
      }
      
      protected function showContent() : void
      {
         this.addUrlRef(this.m_content_url);
         if(this.m_content == null)
         {
            return;
         }
         if(this.m_isResetSize)
         {
            this.m_content.width = this.m_width;
            this.m_content.height = this.m_height;
         }
         this.centerAlign = this.m_centerAlign;
         addChildAt(this.m_content,0);
      }
      
      protected function removeContent() : void
      {
         this.removeUrlRef(this.m_content_url);
         if(this.m_content == null)
         {
            return;
         }
         this.m_content.stop();
         if(contains(this.m_content))
         {
            removeChild(this.m_content);
         }
         this.m_content = null;
         this.m_content_url = null;
      }
      
      protected function onLoadComplete(param1:LoaderEvent) : void
      {
         var _loc2_:LoaderMission = null;
         var _loc3_:String = this.getCleanURL(param1.mission.path);
         if(this.m_missionList.indexOf(_loc3_) != -1)
         {
            this.m_missionList.splice(_loc3_,1);
         }
         if(_loc3_.indexOf(this.m_url) >= 0)
         {
            _loc2_ = param1.mission as LoaderMission;
            this.init(_loc2_.loader);
         }
         if(this.m_missionList.length == 0)
         {
            this.removeLoadEventListener();
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function getCleanURL(param1:String) : String
      {
         var param1:String = param1.replace("\\","/");
         return param1?param1.split("?").shift():"";
      }
      
      private function init(param1:Loader) : void
      {
         var _loc2_:* = 0;
         var _loc3_:String = null;
         this.reset();
         if(!this.m_def)
         {
            this.createContent(this.createDisplay(param1));
         }
         else
         {
            this.createContent(this.createDisplay(param1,this.m_def));
         }
         this.m_content_url = this.m_url;
         this.showContent();
         this.m_isLoaded = true;
         this.m_isLoadStarted = true;
         if(this.m_isPlaying)
         {
            this.m_content.play();
         }
         else
         {
            this.m_content.stop();
         }
         this.dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function createDisplay(param1:Loader, param2:String = null) : MovieClip
      {
         var _loc3_:Class = null;
         var _loc4_:String = null;
         _loc4_ = param2 || param1.contentLoaderInfo.applicationDomain.getQualifiedDefinitionNames()[0];
         _loc3_ = param1.contentLoaderInfo.applicationDomain.getDefinition(_loc4_) as Class;
         return new _loc3_();
      }
      
      private function createContent(param1:MovieClip) : void
      {
         this.m_content = param1;
      }
      
      protected function onLoadError(param1:LoaderEvent) : void
      {
         this.m_isLoadStarted = false;
         var _loc2_:String = this.getCleanURL(param1.mission.path);
         if(this.m_missionList.indexOf(_loc2_) != -1)
         {
            this.m_missionList.splice(_loc2_,1);
         }
         if(_loc2_ == this.m_url)
         {
            this.unload();
         }
         if(this.m_missionList.length == 0)
         {
            this.removeLoadEventListener();
         }
         dispatchEvent(new Event("LoadError"));
      }
      
      protected function onLoadProgress(param1:LoaderEvent) : void
      {
         if(this.getCleanURL(param1.mission.path) == this.m_url)
         {
         }
      }
      
      protected function onLoadStart(param1:LoaderEvent) : void
      {
         if(this.getCleanURL(param1.mission.path) == this.m_url)
         {
            this.m_isLoadStarted = true;
         }
      }
      
      protected function addLoadEventListener() : void
      {
         this.m_loader.addEventListener(LoaderEvent.MISSION_COMPLETE,this.onLoadComplete);
         this.m_loader.addEventListener(LoaderEvent.MISSION_START,this.onLoadStart);
         this.m_loader.addEventListener(LoaderEvent.MISSION_ERROR,this.onLoadError);
         this.m_loader.addEventListener(LoaderEvent.MISSION_PROGRESS,this.onLoadProgress);
      }
      
      protected function removeLoadEventListener() : void
      {
         this.m_loader.removeEventListener(LoaderEvent.MISSION_COMPLETE,this.onLoadComplete);
         this.m_loader.removeEventListener(LoaderEvent.MISSION_START,this.onLoadStart);
         this.m_loader.removeEventListener(LoaderEvent.MISSION_ERROR,this.onLoadError);
         this.m_loader.removeEventListener(LoaderEvent.MISSION_PROGRESS,this.onLoadProgress);
      }
      
      public function get centerAlign() : Boolean
      {
         return this.m_centerAlign;
      }
      
      public function set centerAlign(param1:Boolean) : void
      {
         this.m_centerAlign = param1;
         if(this.m_content && this.m_centerAlign)
         {
            this.m_content.x = this.m_width - this.m_content.width >> 1;
            this.m_content.y = this.m_height - this.m_content.height >> 1;
         }
      }
      
      private function addUrlRef(param1:String) : void
      {
         var _loc2_:* = 0;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = urlRefMap[param1];
         _loc2_ = _loc2_ + 1;
         urlRefMap[param1] = _loc2_;
         delete releaseMissionList[param1];
      }
      
      private function removeUrlRef(param1:String) : void
      {
         var _loc2_:* = 0;
         if(param1 == null)
         {
            return;
         }
         _loc2_ = urlRefMap[param1];
         _loc2_ = _loc2_ - 1;
         urlRefMap[param1] = _loc2_;
         if(_loc2_ == 0)
         {
            releaseMissionList[param1] = 1;
         }
      }
      
      private function getRef() : int
      {
         return urlRefMap[this.m_content_url];
      }
      
      public function get enableLoadingMovie() : Boolean
      {
         return this.m_showLoadingMC;
      }
      
      public function set enableLoadingMovie(param1:Boolean) : void
      {
         this.m_showLoadingMC = param1;
      }
   }
}
