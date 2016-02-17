package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.geom.Rectangle;
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.display.DisplayObjectContainer;
   
   public class FullScreenBox extends BaseBox implements IFullScreenBox
   {
       
      public var minSafeRectangle:Rectangle;
      
      public var maxSafeRectangle:Rectangle;
      
      protected var m_mask:Sprite;
      
      private var m_maskbg:BitmapData;
      
      public function FullScreenBox(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean, param4:Boolean = true, param5:int = 5, param6:String = null)
      {
         this.minSafeRectangle = new Rectangle(0,0,1000,600);
         this.maxSafeRectangle = new Rectangle(0,0,1400,900);
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function showMask(param1:Boolean) : void
      {
         if(param1)
         {
            if(this.m_mask == null)
            {
               this.m_mask = new Sprite();
               this.m_mask.addChild(new Bitmap(this.m_maskbg = new BitmapData(1,1,false,0)));
            }
            this.m_mask.width = this.background.width;
            this.m_mask.height = this.background.height;
            this.content.addChild(this.m_mask);
            this.m_mask.visible = true;
            this.m_mask.alpha = 0.4;
         }
         else
         {
            this.m_mask && (this.m_mask.visible = false);
         }
      }
      
      override public function show(param1:String = null) : IBox
      {
         var _loc2_:IBox = super.show(param1);
         LayerManager.singleton.stage.addEventListener(Event.RESIZE,this.onScreenResize);
         this.onScreenResize();
         return _loc2_;
      }
      
      override public function close() : void
      {
         LayerManager.singleton.stage.removeEventListener(Event.RESIZE,this.onScreenResize);
         super.close();
      }
      
      public function calcSafeRectangle() : Rectangle
      {
         var _loc1_:Point = new Point();
         _loc1_ = globalToLocal(_loc1_);
         var _loc2_:Rectangle = new Rectangle(Math.max(0,_loc1_.x),Math.max(0,_loc1_.y),Math.min(LayerManager.singleton.stage.stageWidth,1400),Math.min(LayerManager.singleton.stage.stageHeight,900));
         return _loc2_;
      }
      
      public function onScreenResize(param1:Event = null) : void
      {
         var _loc2_:Rectangle = null;
         if(super.closeButton != null)
         {
            _loc2_ = this.calcSafeRectangle();
            super.closeButton.x = _loc2_.right - super.closeButton.width;
            super.closeButton.y = _loc2_.top;
         }
         if(this.m_mask)
         {
            this.m_mask.width = this.background.width;
            this.m_mask.height = this.background.height;
         }
      }
      
      override public function destroy() : void
      {
         if(this.m_maskbg != null)
         {
            this.m_maskbg.dispose();
            this.m_maskbg = null;
         }
         LayerManager.singleton.stage.removeEventListener(Event.RESIZE,this.onScreenResize);
         super.destroy();
      }
   }
}
