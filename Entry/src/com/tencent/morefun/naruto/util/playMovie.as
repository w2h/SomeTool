package com.tencent.morefun.naruto.util
{
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.DisplayObjectContainer;
   
   public function playMovie(param1:DisplayObject) : void
   {
      var _loc4_:DisplayObject = null;
      if(!param1)
      {
         return;
      }
      if(param1 is MovieClip)
      {
         (param1 as MovieClip).play();
      }
      var _loc3_:DisplayObjectContainer = param1 as DisplayObjectContainer;
      if(!_loc3_)
      {
         return;
      }
      var _loc5_:int = 0;
      while(_loc5_ < _loc3_.numChildren)
      {
         _loc4_ = _loc3_.getChildAt(_loc5_);
         if(_loc4_ is DisplayObjectContainer)
         {
            arguments.callee(null,_loc4_ as DisplayObjectContainer);
         }
         _loc5_++;
      }
   }
}
