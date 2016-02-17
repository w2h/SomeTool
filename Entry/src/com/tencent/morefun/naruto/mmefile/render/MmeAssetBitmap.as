package com.tencent.morefun.naruto.mmefile.render
{
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.display.PixelSnapping;
   import flash.geom.Point;
   import flash.geom.ColorTransform;
   
   class MmeAssetBitmap extends Sprite
   {
       
      protected var bpd:BitmapData;
      
      protected var bp:Bitmap;
      
      private var hitTestPointTemp:Point;
      
      private var _colorTranform:ColorTransform;
      
      function MmeAssetBitmap(param1:BitmapData, param2:Number, param3:Number)
      {
         super();
         this.bp = new Bitmap(null,"auto",true);
         addChild(this.bp);
         this.setData(param1,param2,param3);
      }
      
      function setData(param1:BitmapData, param2:Number, param3:Number) : void
      {
         if(this.bpd == param1)
         {
            return;
         }
         this.bpd = param1;
         this.bp.bitmapData = param1;
         this.bp.pixelSnapping = PixelSnapping.ALWAYS;
         this.bp.smoothing = true;
         this.bp.x = param2;
         this.bp.y = param3;
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         if(this.hitTestPointTemp == null)
         {
            this.hitTestPointTemp = new Point();
         }
         this.hitTestPointTemp.setTo(param1,param2);
         this.hitTestPointTemp = this.bp.globalToLocal(this.hitTestPointTemp);
         var _loc4_:uint = this.bpd.getPixel32(this.hitTestPointTemp.x,this.hitTestPointTemp.y);
         return _loc4_ >> 24 != 0;
      }
      
      public function destroy() : void
      {
         if(parent)
         {
            parent.removeChild(this);
         }
         if(this.bp)
         {
            this.bp.bitmapData = null;
            this.bp = null;
         }
         this._colorTranform = null;
         this.bpd = null;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this._colorTranform || transform.colorTransform;
      }
      
      public function set colorTransform(param1:ColorTransform) : void
      {
         if(this._colorTranform == null || param1 == null || this._colorTranform.color != param1.color || this._colorTranform.alphaMultiplier != param1.alphaMultiplier || this._colorTranform.alphaOffset != param1.alphaOffset || this._colorTranform.redMultiplier != param1.redMultiplier || this._colorTranform.redOffset != param1.redOffset || this._colorTranform.greenMultiplier != param1.greenMultiplier || this._colorTranform.greenOffset != param1.greenOffset || this._colorTranform.blueMultiplier != param1.blueMultiplier || this._colorTranform.blueOffset != param1.blueOffset)
         {
            transform.colorTransform = param1;
            this._colorTranform = param1;
         }
      }
      
      public function autoSetNull() : void
      {
         this.bpd = null;
         this.bp = null;
         this.hitTestPointTemp = null;
         this._colorTranform = null;
      }
   }
}
