package com.tencent.morefun.framework.net.events
{
   import flash.events.Event;
   
   public class LoadNotifyEvent extends Event
   {
      
      public static const LAZY_TASK_COMPLETE:String = "lazyTaskComplete";
      
      public static const MAIN_TASK_COMPLETE:String = "mainTaskComplete";
      
      public static const ALL_TASK_COMPLETE:String = "allTaskComplete";
      
      public static const LAZY_TASK_START:String = "lazyTaskStart";
      
      public static const MAIN_TASK_START:String = "mainTaskStart";
      
      public static const LOADER_IDLE:String = "loaderIdle";
      
      public static const LOADER_RUNNING:String = "loaderRunning";
       
      public var data;
      
      public function LoadNotifyEvent(param1:String, param2:* = null, param3:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,false);
      }
      
      override public function clone() : Event
      {
         return new LoadNotifyEvent(type,this.data,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("LoadNotifyEvent","type","data","bubbles","cancelable","eventPhase");
      }
   }
}
