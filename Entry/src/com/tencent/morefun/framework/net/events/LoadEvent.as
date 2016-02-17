package com.tencent.morefun.framework.net.events
{
   import flash.events.Event;
   
   public class LoadEvent extends Event
   {
      
      public static const ERROR:String = "error";
      
      public static const START:String = "start";
      
      public static const TIME_OUT:String = "timeOut";
      
      public static const PROGRESS:String = "progress";
      
      public static const ABORT:String = "abort";
      
      public static const COMPLETE:String = "complete";
      
      public static const FINISH:String = "finish";
      
      public static const QUEUE_COMPLETE:String = "queueComplete";
       
      public var url:String;
      
      public var data;
      
      public function LoadEvent(param1:String, param2:String, param3:* = null, param4:Boolean = false)
      {
         this.url = param2;
         this.data = param3;
         super(param1,param4,false);
      }
      
      override public function clone() : Event
      {
         return new LoadEvent(type,this.url,this.data,bubbles);
      }
      
      override public function toString() : String
      {
         return formatToString("LoadEvent","type","url","data","bubbles","cancelable","eventPhase");
      }
      
      public function autoSetNull() : void
      {
         this.url = null;
      }
   }
}
