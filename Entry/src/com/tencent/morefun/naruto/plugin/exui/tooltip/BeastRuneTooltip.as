package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.BeastRuneItemTooltipUI;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.data.BeastRuneData;
   import bag.data.ItemData;
   import bag.utils.BagUtils;
   import def.TipsTypeDef;
   import flash.text.TextFieldAutoSize;
   
   public class BeastRuneTooltip extends BaseTipsView
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
      
      private static const VAL_LABELS:Array = ["生命","攻击","防御","忍术","抗性"];
       
      private var _ui:BeastRuneItemTooltipUI;
      
      private var _icon:ItemIcon;
      
      private var _lineY:int;
      
      public function BeastRuneTooltip(param1:Class = null)
      {
         super();
         this._ui = new BeastRuneItemTooltipUI();
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._ui.contentText.text = "";
         this._ui.contentText.autoSize = TextFieldAutoSize.LEFT;
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
         if(!(param1 is BeastRuneData))
         {
            return;
         }
         var _loc2_:BeastRuneData = param1 as BeastRuneData;
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
      
      private function showContent(param1:BeastRuneData) : void
      {
         var _loc2_:String = "";
         var _loc3_:int = 1;
         while(_loc3_ < 6)
         {
            if(param1["val" + _loc3_] > 0)
            {
               if(_loc2_ != "")
               {
                  _loc2_ = _loc2_ + "\n";
               }
               _loc2_ = _loc2_ + ("<font color=\'#E9E499\'>" + VAL_LABELS[_loc3_ - 1] + "</font> <font color=\'#00FF00\'>+" + param1["val" + _loc3_] + "</font>");
            }
            _loc3_++;
         }
         if(_loc2_ != "")
         {
            _loc2_ = _loc2_ + "\n";
         }
         _loc2_ = _loc2_ + ("<font color=\'#E9E499\'>经验</font> " + param1.exp + "/" + param1.levelExp);
         this._ui.contentText.htmlText = _loc2_;
      }
      
      private function showPrice(param1:ItemData) : void
      {
         if(param1.price > 0)
         {
            this._ui.price.sellable.priceText.htmlText = "<b>" + param1.price + "</b>";
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
         this._ui.price.y = this._ui.contentText.y + this._ui.contentText.textHeight + SPACE_Y;
         this._ui.bg.width = BG_W;
         this._ui.bg.height = this._ui.price.y + this._ui.price.height + BOTTOM_SPACE_Y;
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
      }
   }
}
