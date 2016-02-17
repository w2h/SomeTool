package com.tencent.morefun.naruto.plugin.exui.mall.buying
{
   import com.tencent.morefun.naruto.plugin.ui.box.BaseBox;
   import com.tencent.morefun.naruto.plugin.exui.ui.QuickBuyingPanelUI;
   import naruto.component.core.BaseButton;
   import flash.text.TextField;
   import naruto.component.controls.NumericStepper_1;
   import bag.data.ItemData;
   import cardPackage.data.ShopItemData;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.tencent.morefun.naruto.plugin.ui.util.VipUtil;
   import cardPackage.command.ShopRefreshItemsDataCommand;
   import com.tencent.morefun.framework.base.CommandEvent;
   import cardPackage.command.BuyShopItemCommand;
   import com.tencent.morefun.naruto.plugin.exui.mall.MallConst;
   import cardPackage.command.ShowChargeBoxCommand;
   
   public class QuickBuyingPanel extends BaseBox
   {
      
      public static const MIN_NUM:int = 1;
      
      public static const MAX_NUM:int = 999;
       
      private var _ui:QuickBuyingPanelUI;
      
      private var _closeButton:BaseButton;
      
      private var _buyButton:BaseButton;
      
      private var _item:com.tencent.morefun.naruto.plugin.exui.mall.buying.QuickBuyingItemBox;
      
      private var _labelText:TextField;
      
      private var _numStepper:NumericStepper_1;
      
      private var _priceBar:com.tencent.morefun.naruto.plugin.exui.mall.buying.QuickBuyingPriceBar;
      
      private var _data:ItemData;
      
      private var _flag:int;
      
      private var _shopItemData:ShopItemData;
      
      private var _onSuccess:Function;
      
      private var _onFailed:Function;
      
      public function QuickBuyingPanel()
      {
         this._ui = new QuickBuyingPanelUI();
         super(this._ui,true,true,true,5,this.name);
         this._closeButton = this._ui.closeButton;
         this._closeButton.addEventListener(MouseEvent.CLICK,this.onClose);
         this._buyButton = this._ui.buyButton;
         this._buyButton.addEventListener(MouseEvent.CLICK,this.onBuy);
         this._item = new com.tencent.morefun.naruto.plugin.exui.mall.buying.QuickBuyingItemBox(this._ui.item);
         this._labelText = this._ui.labelText;
         this._labelText.mouseEnabled = false;
         this._numStepper = this._ui.numStepper;
         this._numStepper.min = MIN_NUM;
         this._numStepper.max = MAX_NUM;
         this._numStepper.editable = true;
         this._numStepper.addEventListener(Event.CHANGE,this.onNumChange);
         this._priceBar = new com.tencent.morefun.naruto.plugin.exui.mall.buying.QuickBuyingPriceBar(this._ui.priceBar);
         this.reset();
      }
      
      override public function destroy() : void
      {
         this._closeButton.removeEventListener(MouseEvent.CLICK,this.onClose);
         this._closeButton.dispose();
         this._closeButton = null;
         this._ui.background.dispose();
         this._buyButton.removeEventListener(MouseEvent.CLICK,this.onBuy);
         this._buyButton.dispose();
         this._buyButton = null;
         this._numStepper.removeEventListener(Event.CHANGE,this.onNumChange);
         this._numStepper.dispose();
         this._numStepper = null;
         this._item.destroy();
         this._item = null;
         this._priceBar.dispose();
         this._priceBar = null;
         super.destroy();
      }
      
      public function reset() : void
      {
         this._item.reset();
         this._labelText.htmlText = "";
         this._numStepper.value = this._numStepper.min;
         this._priceBar.reset();
         this._buyButton.enabled = false;
         this._data = null;
         this._shopItemData = null;
      }
      
      override public function get name() : String
      {
         return "QuickBuyingPanel";
      }
      
      public function set label(param1:String) : void
      {
         this._labelText.htmlText = "<b>" + param1 + "</b>";
      }
      
      public function set onSuccess(param1:Function) : void
      {
         this._onSuccess = param1;
      }
      
      public function set onFailed(param1:Function) : void
      {
         this._onFailed = param1;
      }
      
      public function open(param1:ItemData, param2:int) : void
      {
         if(param1 == null || param1.id == 0)
         {
            return;
         }
         this._flag = param2;
         this._data = param1;
         this._buyButton.enabled = true;
         this._item.data = this._data;
         this.updateNum();
         this.requestShopItemData(this._data.id);
         show();
      }
      
      private function updateNum() : void
      {
         if(this._data == null)
         {
            return;
         }
         this._numStepper.value = this._data.num > this._numStepper.min?this._data.num:this._numStepper.min;
      }
      
      private function onNumChange(param1:Event) : void
      {
         if(this._data == null || this._shopItemData == null)
         {
            return;
         }
         this._data.num = this._numStepper.value;
         this.updatePrice();
      }
      
      private function updatePrice() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(this._data != null && this._shopItemData != null)
         {
            _loc1_ = VipUtil.hasDiscount();
            _loc2_ = _loc1_?this._shopItemData.goodsVipPrice:this._shopItemData.goodsNormalPrice;
            _loc3_ = _loc1_?this._shopItemData.goodsVipPrice:this._shopItemData.goodsCashPrice;
            _loc4_ = this._data.num;
            if(this._shopItemData.goodsItemId == 10800001 || this._shopItemData.goodsItemId == 10800065)
            {
               _loc3_ = 0;
            }
            this._priceBar.dianquanPrice = _loc3_ * _loc4_;
            this._priceBar.yuanbaoPrice = _loc2_ * _loc4_;
         }
         else
         {
            this._priceBar.reset();
         }
      }
      
      private function requestShopItemData(param1:uint) : void
      {
         var _loc2_:ShopRefreshItemsDataCommand = new ShopRefreshItemsDataCommand();
         _loc2_.addEventListener(CommandEvent.FAILD,this.onShopItemData);
         _loc2_.addEventListener(CommandEvent.FINISH,this.onShopItemData);
         _loc2_.itemId = param1;
         _loc2_.call();
      }
      
      private function onShopItemData(param1:CommandEvent) : void
      {
         var _loc2_:ShopRefreshItemsDataCommand = param1.currentTarget as ShopRefreshItemsDataCommand;
         _loc2_.removeEventListener(CommandEvent.FAILD,this.onShopItemData);
         _loc2_.removeEventListener(CommandEvent.FINISH,this.onShopItemData);
         this._shopItemData = _loc2_.itemData;
         this.updatePrice();
      }
      
      private function onClose(param1:MouseEvent) : void
      {
         close();
      }
      
      private function onBuy(param1:MouseEvent) : void
      {
         if(this._data == null || this._data.id == 0 || this._data.num <= 0)
         {
            return;
         }
         this._buyButton.enabled = false;
         var _loc2_:ShopItemData = new ShopItemData();
         _loc2_.goodsItemId = this._data.id;
         _loc2_.m_currentNum = this._data.num;
         var _loc3_:BuyShopItemCommand = new BuyShopItemCommand();
         _loc3_.addEventListener(CommandEvent.FINISH,this.onBuyResult);
         _loc3_.addEventListener(CommandEvent.FAILD,this.onBuyResult);
         _loc3_.data = _loc2_;
         _loc3_.flag = this._flag;
         _loc3_.call();
      }
      
      private function onBuyResult(param1:CommandEvent) : void
      {
         var _loc2_:BuyShopItemCommand = param1.target as BuyShopItemCommand;
         _loc2_.removeEventListener(CommandEvent.FINISH,this.onBuyResult);
         _loc2_.removeEventListener(CommandEvent.FAILD,this.onBuyResult);
         close();
         if(param1.type == CommandEvent.FINISH)
         {
            if(this._onSuccess != null)
            {
               this._onSuccess();
            }
         }
         else if(param1.type == CommandEvent.FAILD)
         {
            if(this._onFailed != null)
            {
               this._onFailed(_loc2_.errorCode);
            }
            if(_loc2_.errorCode == MallConst.ERROR_CODE_NOT_ENOUGH_YUANBAO)
            {
               this.showChargeBox();
            }
         }
      }
      
      private function showChargeBox() : void
      {
         var _loc1_:ShowChargeBoxCommand = new ShowChargeBoxCommand();
         _loc1_.call();
      }
   }
}
