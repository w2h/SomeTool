package com.tencent.morefun.framework.loader
{
   import flash.events.IEventDispatcher;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   import com.tencent.morefun.framework.loader.mission.Mission;
   
   public interface ILoader extends IEventDispatcher
   {
       
      function get traceFunction() : Function;
      
      function set traceFunction(param1:Function) : void;
      
      function get base() : String;
      
      function set base(param1:String) : void;
      
      function get applicationDomain() : ApplicationDomain;
      
      function set applicationDomain(param1:ApplicationDomain) : void;
      
      function trace(... rest) : void;
      
      function getClass(param1:String) : Class;
      
      function createObject(param1:String) : Object;
      
      function hasBytes(param1:String) : Boolean;
      
      function getBytes(param1:String, param2:Boolean = false) : ByteArray;
      
      function removeAllBytes() : void;
      
      function removeBytes(param1:String) : void;
      
      function saveCache(param1:Mission) : void;
      
      function getLazyMission(param1:String) : Mission;
      
      function get lazyMissionCount() : uint;
      
      function get currentLazyMission() : Mission;
      
      function loadLazyMission(param1:Mission) : void;
      
      function hasLazyMission(param1:String) : Boolean;
      
      function startLazyQueue() : void;
      
      function stopLazyQueue() : void;
      
      function get missionCount() : uint;
      
      function get currentMission() : Mission;
      
      function loadMission(param1:Mission) : void;
      
      function hasMission(param1:String) : Boolean;
      
      function removeMission(param1:String, param2:Boolean) : void;
      
      function removeAllMission(param1:Boolean) : void;
      
      function get flashCacheSize() : Number;
      
      function get isCachePanel() : Boolean;
      
      function transferCache() : void;
      
      function flushCache() : void;
      
      function get isNeedFlush() : Boolean;
   }
}
