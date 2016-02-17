package com.tencent.morefun.framework.base
{
   import flash.events.Event;
   
   public class CommandEvent extends Event
   {
      
      public static const FINISH:String = "finish";
      
      public static const PROGRESS:String = "progress";
      
      public static const FAILD:String = "faild";
      
      public static const LOADING_END:String = "loadingEnd";
       
      public function CommandEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new CommandEvent(type,bubbles,cancelable);
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
