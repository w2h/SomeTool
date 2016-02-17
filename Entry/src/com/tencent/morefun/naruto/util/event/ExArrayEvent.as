package com.tencent.morefun.naruto.util.event
{
   import flash.events.Event;
   
   public class ExArrayEvent extends Event
   {
      
      public static const PUSH_VALUE:String = "pushValue";
      
      public static const REMOVE_VALUE:String = "removeValue";
      
      public static const SWAP_VALUE:String = "swapValue";
       
      public var startDelIndex:int;
      
      public var delCount:int;
      
      public var pushValue:Object;
      
      public var delValues:Array;
      
      public var from:int;
      
      public var to:int;
      
      public function ExArrayEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function autoSetNull() : void
      {
         this.pushValue = null;
         this.delValues = null;
      }
   }
}
