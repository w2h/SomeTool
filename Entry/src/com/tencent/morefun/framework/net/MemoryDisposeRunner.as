package com.tencent.morefun.framework.net
{
   import com.tencent.morefun.naruto.render.IRenderTickTarget;
   import com.tencent.morefun.naruto.render.RenderTicker;
   
   public class MemoryDisposeRunner implements IRenderTickTarget
   {
      
      private static const FRAME_RATE:uint = 10;
       
      private var _queue:Vector.<String>;
      
      private var _dispose:Function;
      
      private var _delta:uint;
      
      public function MemoryDisposeRunner(param1:Vector.<String>, param2:Function)
      {
         super();
         this._dispose = param2;
         this._queue = param1;
         this._delta = Math.max(1,Math.ceil(this._queue.length / FRAME_RATE));
      }
      
      public static function start(param1:Vector.<String>, param2:Function) : void
      {
         if(param1 && param1.length && param2 != null)
         {
            new MemoryDisposeRunner(param1,param2).start();
         }
      }
      
      public function start() : void
      {
         RenderTicker.register(this);
      }
      
      public function render(param1:uint) : void
      {
         var _loc2_:uint = 0;
         while(param1-- > 0)
         {
            if(this._queue.length)
            {
               _loc2_ = 0;
               while(_loc2_++ < this._delta && this._queue.length)
               {
                  this._dispose.call(null,this._queue.shift());
               }
               continue;
            }
            RenderTicker.unregister(this);
            this._dispose = null;
            this._queue = null;
            break;
         }
      }
      
      public function get frameRate() : uint
      {
         return FRAME_RATE;
      }
      
      public function set frameRate(param1:uint) : void
      {
      }
      
      public function autoSetNull() : void
      {
         this._dispose = null;
      }
   }
}
