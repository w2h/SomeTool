package com.tencent.morefun.naruto.util
{
   import flash.geom.ColorTransform;
   import com.tencent.morefun.naruto.geom.Tint;
   
   public class ColorParser
   {
       
      public function ColorParser()
      {
         super();
      }
      
      public static function parseToColorTransform(param1:uint, param2:uint = 0) : ColorTransform
      {
         var _loc3_:Tint = new Tint(param1);
         var _loc4_:Tint = new Tint(param2);
         _loc3_.subtract(_loc4_);
         var _loc5_:ColorTransform = new ColorTransform(1,1,1,1,_loc3_.r,_loc3_.g,_loc3_.b,_loc3_.a);
         return _loc5_;
      }
      
      public static function brightenColor(param1:uint, param2:int) : uint
      {
         var _loc3_:Tint = new Tint(param1);
         var _loc4_:Tint = new Tint(param2 << 16 | param2 << 8 | param2);
         _loc3_.add(_loc4_);
         return _loc3_.toColor();
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
