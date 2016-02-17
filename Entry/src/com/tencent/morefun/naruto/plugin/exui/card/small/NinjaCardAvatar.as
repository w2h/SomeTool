package com.tencent.morefun.naruto.plugin.exui.card.small
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.data.CardItemData;
   import bag.utils.BagUtils;
   
   public class NinjaCardAvatar extends Sprite
   {
      
      private static const IMG_W:int = 72;
      
      private static const IMG_H:int = 98;
      
      private static const IMG_X:int = 0;
      
      private static const IMG_Y:int = 0;
       
      private var _ui:Sprite;
      
      private var _img:ItemIcon;
      
      public function NinjaCardAvatar(param1:Sprite)
      {
         super();
         this._ui = param1;
         this._img = new ItemIcon(IMG_W,IMG_H);
         this._img.x = IMG_X;
         this._img.y = IMG_Y;
         this._ui.addChild(this._img);
      }
      
      public function destroy() : void
      {
         this._ui.removeChild(this._img);
         this._img.filters = [];
         this._img.destroy();
         this._img = null;
         this._ui.filters = [];
         this._ui = null;
      }
      
      public function reset() : void
      {
         this._ui.filters = [];
         this._img.filters = [];
         this._img.unload();
      }
      
      public function set data(param1:CardItemData) : void
      {
         var _loc2_:String = null;
         if(param1 != null)
         {
            if(param1.isFragment)
            {
               _loc2_ = BagUtils.getNinjaCardResUrl(param1.cardId);
            }
            else
            {
               _loc2_ = BagUtils.getNinjaCardResUrl(param1.id);
            }
            this._img.load(_loc2_);
         }
         else
         {
            this.reset();
         }
      }
   }
}
