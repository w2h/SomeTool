package map.utils
{
   import flash.geom.ColorTransform;
   
   public class MapTimeTypeUtil
   {
       
      public function MapTimeTypeUtil()
      {
         super();
      }
      
      public static function getColorTransform(param1:int) : ColorTransform
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private static function create(param1:uint, param2:Number) : ColorTransform
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:ColorTransform = new ColorTransform();
         _loc3_ = param2;
         _loc4_ = (param1 & 16711680) >> 16;
         _loc5_ = (param1 & 65280) >> 8;
         _loc6_ = param1 & 255;
         _loc7_.redMultiplier = 1 - _loc3_;
         _loc7_.greenMultiplier = 1 - _loc3_;
         _loc7_.blueMultiplier = 1 - _loc3_;
         _loc7_.redOffset = Math.ceil(_loc4_ * _loc3_);
         _loc7_.greenOffset = Math.ceil(_loc5_ * _loc3_);
         _loc7_.blueOffset = Math.ceil(_loc6_ * _loc3_);
         return _loc7_;
      }
   }
}
