package com.tencent.morefun.naruto.mmefile.render
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.mmefile.render.datas.PhantomData;
   import com.tencent.morefun.naruto.mmefile.render.datas.LayerData;
   import com.tencent.morefun.naruto.mmefile.render.datas.FrameData;
   import com.tencent.morefun.naruto.mmefile.render.datas.ElementData;
   import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
   import flash.geom.ColorTransform;
   import com.tencent.morefun.naruto.mmefile.render.datas.MmeData;
   import flash.system.ApplicationDomain;
   
   public class AdvancedRenderer extends SimpleInnerRenderer
   {
      
      public static const PHANTOM_MODE_AUTO:String = "auto";
      
      public static const PHANTOM_MODE_ON:String = "on";
      
      public static const PHANTOM_MODE_OFF:String = "off";
       
      var phantomLayer:Sprite;
      
      var bitmapLayer:Sprite;
      
      private var phantomMode:String = "auto";
      
      private var phantomData:PhantomData;
      
      private var updatePhantomCount:int = 0;
      
      public function AdvancedRenderer(param1:MmeAssetRender, param2:MmeData, param3:MmeAsset, param4:ApplicationDomain)
      {
         super(param1,param2,param3,param4);
         this.initLayers();
      }
      
      private function initLayers() : void
      {
         this.phantomLayer = new Sprite();
         render.addChild(this.phantomLayer);
         this.bitmapLayer = new Sprite();
         render.addChild(this.bitmapLayer);
      }
      
      override function update() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function setPhantom(param1:String, param2:PhantomData = null) : void
      {
         this.phantomMode = param1;
         if(param1 == PHANTOM_MODE_ON)
         {
            this.phantomData = param2;
            this.updatePhantomCount = 0;
         }
         else
         {
            this.phantomData = null;
         }
      }
      
      private function updatePhantom() : void
      {
         var _loc2_:MmeAssetRenderPhantom = null;
         this.updatePhantomCount++;
         if(this.phantomData && (this.phantomData.type == PhantomData.TYPE_ON || this.phantomData.type == PhantomData.TYPE_ON_AND_SPANNING) && this.updatePhantomCount % (this.phantomData.interval + 1) == 1)
         {
            this.createPhantom();
         }
         if(this.phantomLayer == null)
         {
            return;
         }
         var _loc1_:int = this.phantomLayer.numChildren;
         while(_loc1_--)
         {
            _loc2_ = this.phantomLayer.getChildAt(_loc1_) as MmeAssetRenderPhantom;
            _loc2_.update();
            if(_loc2_.alpha <= 0)
            {
               _loc2_.destroy();
            }
         }
         if(currFrame == currTotalFrame && this.phantomData)
         {
            if(this.phantomData.type != PhantomData.TYPE_ON_AND_SPANNING)
            {
               this.phantomData = null;
               this.updatePhantomCount = 0;
            }
         }
      }
      
      private function createPhantom() : void
      {
         var _loc1_:MmeAssetRenderPhantom = new MmeAssetRenderPhantom(this.bitmapLayer,this.phantomData.color.color,this.phantomData.dAlpha);
         this.phantomLayer.addChild(_loc1_);
      }
      
      public function destroyPhantoms() : void
      {
         var _loc2_:MmeAssetRenderPhantom = null;
         var _loc1_:int = this.phantomLayer.numChildren;
         while(_loc1_--)
         {
            _loc2_ = this.phantomLayer.getChildAt(_loc1_) as MmeAssetRenderPhantom;
            if(_loc2_)
            {
               _loc2_.destroy();
            }
         }
      }
      
      override public function destroy() : void
      {
         this.phantomLayer.removeChildren();
         this.bitmapLayer.removeChildren();
         render.removeChildren();
         this.destroyPhantoms();
         this.bitmapLayer = null;
         this.phantomLayer = null;
         this.phantomData = null;
         super.destroy();
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this.phantomLayer = null;
         this.bitmapLayer = null;
         this.phantomMode = null;
         this.phantomData = null;
      }
   }
}
