package com.tencent.morefun.naruto.plugin.exui.card.large
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.data.CardItemData;
   import bag.utils.BagUtils;
   import flash.display.DisplayObject;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   
   public class NinjaPreviewCardAvatar
   {
      
      public static const IMG_WIDTH:int = 300;
      
      public static const IMG_HEIGHT:int = 410;
      
      public static const IMG_X:int = 0;
      
      public static const IMG_Y:int = 0;
       
      private var _ui:Sprite;
      
      private var _img:ItemIcon;
      
      public function NinjaPreviewCardAvatar(param1:Sprite)
      {
         super();
         this._ui = param1;
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._img = new ItemIcon(IMG_WIDTH,IMG_HEIGHT);
         this._img.x = IMG_X;
         this._img.y = IMG_Y;
         this._ui.addChild(this._img);
      }
      
      public function dispose() : void
      {
         this.reset();
         this._ui.removeChild(this._img);
         this._img.destroy();
         this._img = null;
         this._ui = null;
      }
      
      public function reset() : void
      {
         this._img.filters = [];
         this._img.unload();
      }
      
      public function set data(param1:CardItemData) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         if(param1 != null)
         {
            _loc2_ = param1.id != BagUtils.PLAYER_NINJA_ID?param1.ninjaId:BagUtils.getPlayerPreviewResId();
            _loc3_ = BagUtils.getNinjaPreviewResUrl(_loc2_);
            this._img.filters = this.getNinjaFilter(param1);
            this._img.load(_loc3_);
         }
         else
         {
            this.reset();
         }
      }
      
      public function get ui() : DisplayObject
      {
         return this._ui;
      }
      
      private function getNinjaFilter(param1:CardItemData) : Array
      {
         var _loc2_:Number = this.getNinjaFilterColor(param1.ninjaType);
         var _loc3_:Number = 1;
         var _loc4_:Number = 25;
         var _loc5_:Number = 25;
         var _loc6_:Number = 0.7;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Number = BitmapFilterQuality.LOW;
         return [new GlowFilter(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc9_,_loc7_,_loc8_)];
      }
      
      private function getNinjaFilterColor(param1:int) : uint
      {
         var _loc2_:Array = [10027008,9098444,39423,4834671,16763904];
         return _loc2_[param1 - 1];
      }
   }
}
