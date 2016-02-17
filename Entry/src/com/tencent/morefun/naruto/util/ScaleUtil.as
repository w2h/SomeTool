package com.tencent.morefun.naruto.util
{
   import flash.display.DisplayObject;
   
   public class ScaleUtil
   {
       
      public function ScaleUtil()
      {
         super();
      }
      
      public static function scaleInBox(param1:DisplayObject, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = Math.min(param2 / param1.width,param3 / param1.height);
         param1.scaleX = _loc4_ * param1.scaleX;
         param1.scaleY = _loc4_ * param1.scaleY;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
