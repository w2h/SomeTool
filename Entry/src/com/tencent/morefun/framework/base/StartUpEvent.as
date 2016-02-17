package com.tencent.morefun.framework.base
{
   import flash.events.Event;
   
   public class StartUpEvent extends Event
   {
      
      public static const START_UP:String = "startUp";
      
      public static const REGISTER:String = "register";
      
      public static const COMPLETE:String = "complete";
       
      public var relatedCommand:com.tencent.morefun.framework.base.Command;
      
      public var data;
      
      public function StartUpEvent(param1:String, param2:com.tencent.morefun.framework.base.Command, param3:* = null)
      {
         this.data = param3;
         this.relatedCommand = param2;
         super(param1,false,false);
      }
      
      override public function clone() : Event
      {
         return new StartUpEvent(type,this.relatedCommand,this.data);
      }
      
      override public function toString() : String
      {
         return formatToString("StartUpEvent","type","data");
      }
   }
}
