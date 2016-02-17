package com.tencent.morefun.naruto.executer
{
   import flash.events.IEventDispatcher;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   
   public class DispatcherExecuter extends Executer implements IEventDispatcher
   {
       
      private var dispatch:EventDispatcher;
      
      public function DispatcherExecuter(param1:String)
      {
         super(param1);
         this.dispatch = new EventDispatcher();
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.dispatch.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.dispatch.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.dispatch.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.dispatch.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.dispatch.willTrigger(param1);
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.dispatch = null;
      }
   }
}
