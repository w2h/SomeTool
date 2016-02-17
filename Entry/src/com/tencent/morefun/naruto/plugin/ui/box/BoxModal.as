package com.tencent.morefun.naruto.plugin.ui.box
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   
   public class BoxModal extends Sprite
   {
       
      private var _color:int;
      
      private var _alpha:Number;
      
      private var _box:com.tencent.morefun.naruto.plugin.ui.box.IBox;
      
      public function BoxModal(param1:com.tencent.morefun.naruto.plugin.ui.box.IBox = null)
      {
         super();
         this.mouseChildren = false;
         this.visible = false;
         if(param1 != null)
         {
            this.add(param1);
         }
      }
      
      public function destroy() : void
      {
         this.remove();
      }
      
      public function add(param1:com.tencent.morefun.naruto.plugin.ui.box.IBox) : void
      {
         if(param1 == null || (param1 as Sprite).parent == null)
         {
            return;
         }
         this._box = param1;
         if(this._color != param1.modalColor || this._alpha != param1.modalAlpha)
         {
            this._color = param1.modalColor;
            this._alpha = param1.modalAlpha;
            this.draw();
         }
         this.resize();
         var _loc2_:DisplayObjectContainer = (param1 as Sprite).parent;
         var _loc3_:int = _loc2_.getChildIndex(param1 as Sprite);
         if(!_loc2_.contains(this))
         {
            _loc2_.addChildAt(this,_loc3_);
         }
         else if(_loc2_.getChildIndex(this) < _loc3_)
         {
            _loc2_.setChildIndex(this,_loc3_ - 1);
         }
         else
         {
            _loc2_.setChildIndex(this,_loc3_);
         }
         this.visible = true;
      }
      
      public function draw() : void
      {
         this.graphics.clear();
         this.graphics.beginFill(this._color,this._alpha);
         this.graphics.drawRect(0,0,8,8);
         this.graphics.endFill();
      }
      
      public function remove() : void
      {
         if(this.parent == null)
         {
            return;
         }
         this.visible = false;
         this.parent.removeChild(this);
         this._box = null;
      }
      
      public function resize() : void
      {
         if(this._box == null || this._box.modelHeight == -1 || this._box.modelWidth == -1)
         {
            this.width = LayoutManager.stageWidth;
            this.height = LayoutManager.stageHeight;
         }
         else
         {
            this.width = this._box.modelWidth;
            this.height = this._box.modelHeight;
            this.x = -(this.box as Sprite).parent.x;
            this.y = -(this.box as Sprite).parent.y;
         }
      }
      
      public function get box() : com.tencent.morefun.naruto.plugin.ui.box.IBox
      {
         return this._box;
      }
      
      public function update() : void
      {
         if(this.box == null)
         {
            return;
         }
         this._color = this.box.modalColor;
         this._alpha = this.box.modalAlpha;
         this.draw();
         this.resize();
      }
   }
}
