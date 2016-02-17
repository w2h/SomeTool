package com.tencent.morefun.naruto.model.event
{
   import flash.events.Event;
   
   public class ModelEvent extends Event
   {
      
      public static const REMOVE:String = "remove";
      
      public static const UPDATE:String = "update";
      
      public static const UPDATE_FINISH:String = "updateFinish";
       
      public var key:Object;
      
      public var oldValue:Object;
      
      public var newValue:Object;
      
      public function ModelEvent(param1:String, param2:Object = null, param3:Object = null, param4:Object = null, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.key = param2;
         this.oldValue = param3;
         this.newValue = param4;
      }
      
      override public function clone() : Event
      {
         return new ModelEvent(type,this.key,this.oldValue,this.newValue,bubbles,cancelable);
      }
      
      public function autoSetNull() : void
      {
         this.key = null;
         this.oldValue = null;
         this.newValue = null;
      }
   }
}
