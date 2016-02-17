package com.tencent.morefun.naruto.mmefile.render
{
   import flash.events.Event;
   
   public class MmeAssetRenderEvent extends Event
   {
      
      public static const READY:String = "ready";
      
      public static const LOAD_ERROR:String = "loadError";
      
      public static const FRAME_EVENT:String = "frameEvent";
      
      public static const PLAY_END:String = "playEnd";
      
      public static const FRAME_SOUND:String = "frameSound";
       
      public var frameEvent:String;
      
      public var param:String;
      
      public var sound:uint;
      
      public var volume:uint;
      
      protected var stopUpdated:Boolean;
      
      public function MmeAssetRenderEvent(param1:String, param2:String = null)
      {
         var _loc3_:* = 0;
         if(param2)
         {
            _loc3_ = param2.indexOf(":");
            if(_loc3_ == -1)
            {
               this.frameEvent = param2;
            }
            else
            {
               this.frameEvent = param2.substring(0,_loc3_);
               this.param = param2.substr(_loc3_ + 1);
            }
         }
         super(param1);
      }
      
      public function stopUpdate() : void
      {
         this.stopUpdated = true;
      }
      
      public function get isStopUpdated() : Boolean
      {
         return this.stopUpdated;
      }
      
      public function autoSetNull() : void
      {
         this.frameEvent = null;
         this.param = null;
      }
   }
}
