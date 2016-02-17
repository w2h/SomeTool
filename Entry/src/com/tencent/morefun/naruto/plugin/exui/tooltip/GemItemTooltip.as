package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.GemItemTooltipUI;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.data.GemItemData;
   import bag.data.ItemData;
   import bag.utils.BagUtils;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.GemContentItemUI;
   import def.TipsTypeDef;
   
   public class GemItemTooltip extends BaseTipsView
   {
      
      private static const SPACE_X:int = 30;
      
      private static const SPACE_Y:int = 15;
      
      private static const NAME_SPACE_Y:int = 15;
      
      private static const CONTENT_SPACE_Y:int = 15;
      
      private static const BOTTOM_SPACE_Y:int = 25;
      
      private static const BG_W:int = 260;
      
      private static const leftSpace:int = 8;
      
      private static const rightSpace:int = 10;
      
      private static const topSpage:int = 11;
      
      private static const downSpage:int = 11;
       
      private var _ui:GemItemTooltipUI;
      
      private var _icon:ItemIcon;
      
      private var _lineY:int;
      
      public function GemItemTooltip(param1:Class = null)
      {
         super();
         this._ui = new GemItemTooltipUI();
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._icon = new ItemIcon();
         this._ui.icon.addChild(this._icon);
         addChild(this._ui);
      }
      
      override public function destroy() : void
      {
         this._icon.destroy();
         this._icon = null;
         super.destroy();
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is GemItemData))
         {
            return;
         }
         var _loc2_:GemItemData = param1 as GemItemData;
         this.showName(_loc2_);
         this.showContent(_loc2_);
         this.showPrice(_loc2_);
         this.showIcon(_loc2_);
         this.resize();
      }
      
      private function showName(param1:ItemData) : void
      {
         this._ui.nameText.htmlText = "<b>" + BagUtils.getColoredItemName(param1.id) + "</b>";
      }
      
      private function showContent(param1:GemItemData) : void
      {
         var _loc4_:* = 0;
         var _loc6_:GemContentItemUI = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc5_:int = 1;
         while(_loc5_ < 11)
         {
            if(param1["val" + _loc5_] > 0)
            {
               _loc2_ = _loc5_;
               _loc3_ = param1["val" + _loc5_];
               _loc6_ = new GemContentItemUI();
               _loc6_.props.gotoAndStop(_loc2_);
               _loc6_.propValueText.text = "+" + _loc3_;
               _loc6_.x = 0;
               _loc6_.y = _loc4_;
               this._ui.content.addChild(_loc6_);
               _loc4_ = _loc4_ + 20;
            }
            _loc5_++;
         }
         this._ui.content.expItem.x = 0;
         this._ui.content.expItem.y = _loc4_;
         this._ui.content.expItem.expText.text = param1.exp + "/" + param1.levelExp;
         this._ui.price.y = this._ui.content.y + this._ui.content.height + 15;
         this._ui.bg.height = this._ui.price.y + this._ui.price.height + 50;
      }
      
      private function showPrice(param1:ItemData) : void
      {
         if(param1.price > 0)
         {
            this._ui.price.sellable.priceText.text = String(param1.price);
            this._ui.price.sellable.visible = true;
            this._ui.price.priceless.visible = false;
         }
         else
         {
            this._ui.price.sellable.priceText.text = "";
            this._ui.price.sellable.visible = false;
            this._ui.price.priceless.visible = true;
         }
      }
      
      private function showIcon(param1:ItemData) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._icon.loadIcon(param1.id,param1,TipsTypeDef.BAG_ITEM);
      }
      
      override protected function resize() : void
      {
         this._ui.bg.width = BG_W;
         this._ui.bg.height = this._ui.price.y + this._ui.price.height + BOTTOM_SPACE_Y;
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
      }
   }
}
