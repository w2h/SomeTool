package com.tencent.morefun.framework.loader
{
   import flash.events.Event;
   import com.tencent.morefun.framework.loader.mission.Mission;
   
   public class LoaderEvent extends Event
   {
      
      public static const LAZY_MISSION_EMPTY:String = "lazyMissionEmpty";
      
      public static const MISSION_EMPTY:String = "missionEmpty";
      
      public static const MISSION_COMPLETE:String = "missionComplete";
      
      public static const MISSION_ERROR:String = "missionError";
      
      public static const MISSION_PROGRESS:String = "missionProgress";
      
      public static const MISSION_START:String = "missionStart";
      
      public static const MISSION_ABORT:String = "missionAbort";
      
      public static const MISSION_REMOVE:String = "missionRemove";
      
      public static const MISSION_DESTROY:String = "missionDestroy";
      
      public static const SHOW_CACHE_PANEL:String = "showCachePanel";
      
      public static const HIDE_CACHE_PANEL:String = "hideCachePanel";
      
      public static const DISABLED_CACHE:String = "disabledCache";
       
      public var bytesTotal:int;
      
      public var bytesLoaded:int;
      
      public var mission:Mission;
      
      public function LoaderEvent(param1:String, param2:int = 0, param3:int = 0, param4:Mission = null)
      {
         super(param1);
         this.bytesTotal = param3;
         this.bytesLoaded = param2;
         this.mission = param4;
      }
      
      override public function clone() : Event
      {
         return new LoaderEvent(type,this.bytesLoaded,this.bytesTotal,this.mission);
      }
      
      public function autoSetNull() : void
      {
         this.mission = null;
      }
   }
}
