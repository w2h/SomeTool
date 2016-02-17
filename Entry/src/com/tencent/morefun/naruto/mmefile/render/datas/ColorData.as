package com.tencent.morefun.naruto.mmefile.render.datas
{
   import flash.geom.ColorTransform;
   
   public class ColorData
   {
      
      public static const ClassAlias:String = "ColorData";
       
      public var color:uint;
      
      public var empty:Boolean = true;
      
      public function ColorData()
      {
         super();
      }
      
      public function getColorTransform() : ColorTransform
      {
         var _loc1_:ColorTransform = null;
         var _loc2_:* = NaN;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         if(!this.empty)
         {
            _loc1_ = new ColorTransform();
            _loc2_ = (this.color >>> 24 & 255) / 255;
            _loc3_ = this.color >> 16 & 255;
            _loc4_ = this.color >> 8 & 255;
            _loc5_ = this.color & 255;
            _loc1_.redMultiplier = 1 - _loc2_;
            _loc1_.greenMultiplier = 1 - _loc2_;
            _loc1_.blueMultiplier = 1 - _loc2_;
            _loc1_.redOffset = _loc3_ * _loc2_;
            _loc1_.greenOffset = _loc4_ * _loc2_;
            _loc1_.blueOffset = _loc5_ * _loc2_;
            return _loc1_;
         }
         return null;
      }
      
      public function decode(param1:XML) : void
      {
         var _loc2_:String = param1.@color;
         if(_loc2_)
         {
            this.color = uint("0x" + _loc2_);
            this.empty = false;
         }
         else
         {
            this.empty = true;
         }
      }
      
      public function encode(param1:XML) : void
      {
         if(!this.empty)
         {
            param1.@color = this.color.toString(16);
         }
      }
      
      public function clone() : ColorData
      {
         var _loc1_:ColorData = new ColorData();
         _loc1_.color = this.color;
         _loc1_.empty = this.empty;
         return _loc1_;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
