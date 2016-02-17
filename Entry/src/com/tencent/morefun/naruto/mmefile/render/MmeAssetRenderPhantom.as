package com.tencent.morefun.naruto.mmefile.render
{
   import flash.display.Shape;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   
   public class MmeAssetRenderPhantom extends Shape
   {
       
      private var dAlpha:int;
      
      private var bd:BitmapData;
      
      public function MmeAssetRenderPhantom(param1:DisplayObject, param2:uint = 4.278190335E9, param3:int = 5)
      {
         super();
         this.dAlpha = param3;
         this.draw(param1,param2);
      }
      
      private function draw(param1:DisplayObject, param2:uint) : void
      {
         var _loc3_:Rectangle = param1.getBounds(null);
         var _loc4_:int = 0;
         if(_loc3_.x != Math.floor(_loc3_.x))
         {
            _loc4_ = 1;
            _loc3_.x = Math.floor(_loc3_.x);
         }
         var _loc5_:int = 0;
         if(_loc3_.y != Math.floor(_loc3_.y))
         {
            _loc5_ = 1;
            _loc3_.y = Math.floor(_loc3_.y);
         }
         _loc3_.width = Math.ceil(_loc3_.width) + _loc4_;
         _loc3_.height = Math.ceil(_loc3_.height) + _loc5_;
         this.bd = new BitmapData(_loc3_.width,_loc3_.height,true,0);
         var _loc6_:Number = param2 >> 24 & 255 / 255;
         var _loc7_:int = param2 >> 16 & 255;
         var _loc8_:int = param2 >> 8 & 255;
         var _loc9_:int = param2 & 255;
         var _loc10_:ColorTransform = new ColorTransform();
         _loc10_.redMultiplier = 1 - _loc6_;
         _loc10_.greenMultiplier = 1 - _loc6_;
         _loc10_.blueMultiplier = 1 - _loc6_;
         _loc10_.redOffset = _loc7_ * _loc6_;
         _loc10_.greenOffset = _loc8_ * _loc6_;
         _loc10_.blueOffset = _loc9_ * _loc6_;
         this.bd.draw(param1,new Matrix(1,0,0,1,-_loc3_.x,-_loc3_.y),_loc10_);
         graphics.beginBitmapFill(this.bd,new Matrix(1,0,0,1,_loc3_.x,_loc3_.y));
         graphics.drawRect(_loc3_.x,_loc3_.y,this.bd.width,this.bd.height);
         graphics.endFill();
         this.x = param1.x;
         this.y = param1.y;
         this.scaleX = param1.scaleX;
         this.scaleY = param1.scaleY;
         this.rotation = param1.rotation;
      }
      
      public function update() : void
      {
         alpha = alpha - this.dAlpha * 0.01;
      }
      
      public function destroy() : void
      {
         if(this.bd)
         {
            this.bd.dispose();
            this.bd = null;
         }
         graphics.clear();
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
