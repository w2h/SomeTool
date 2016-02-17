package com.tencent.morefun.naruto.plugin.exui.mall.selling
{
   import com.tencent.morefun.naruto.plugin.ui.box.BaseBox;
   import com.tencent.morefun.naruto.plugin.exui.ui.QuickSellingPanelUI;
   import flash.text.TextField;
   import naruto.component.controls.ButtonClose;
   import naruto.component.controls.ButtonNormalBlue;
   import bag.data.ItemData;
   import naruto.component.controls.NumericStepper_1;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.ui.base.event.NumberStepperEvent;
   import sound.commands.PlayUISoundCommand;
   import sound.def.UISoundDef;
   import bag.command.SellItemCommand;
   import flash.events.Event;
   import com.tencent.morefun.naruto.util.StrReplacer;
   import com.tencent.morefun.naruto.plugin.exui.mall.MallConst;
   
   public class QuickSellingPanel extends BaseBox
   {
      
      private static const MIN_NUM:int = 1;
      
      private static const MAX_NUM:int = 999;
      
      private static const ITEM_X:int = 70;
      
      private static const ITEM_Y:int = 65;
       
      private var _ui:QuickSellingPanelUI;
      
      private var _priceText:TextField;
      
      private var _closeButton:ButtonClose;
      
      private var _okButton:ButtonNormalBlue;
      
      private var _cancelButton:ButtonNormalBlue;
      
      private var _data:ItemData;
      
      private var _numStepper:NumericStepper_1;
      
      private var _item:com.tencent.morefun.naruto.plugin.exui.mall.selling.QuickSellingItemCell;
      
      private var _labelText:TextField;
      
      public function QuickSellingPanel()
      {
         this._ui = new QuickSellingPanelUI();
         super(this._ui,true,true,true,5,this.name);
         this._ui.closeButton.addEventListener(MouseEvent.CLICK,this.onClose);
         this._okButton = this._ui.okButton;
         this._okButton.addEventListener(MouseEvent.CLICK,this.onOk);
         this._cancelButton = this._ui.cancelButton;
         this._cancelButton.addEventListener(MouseEvent.CLICK,this.onCancel);
         this._priceText = this._ui.priceText;
         this._numStepper = this._ui.numStepper;
         this._numStepper.min = MIN_NUM;
         this._numStepper.max = MAX_NUM;
         this._numStepper.editable = true;
         this._numStepper.addEventListener(Event.CHANGE,this.onNumberChanged);
         this._item = new com.tencent.morefun.naruto.plugin.exui.mall.selling.QuickSellingItemCell(this._ui.item);
         this._labelText = this._ui.labelText;
         this._labelText.mouseEnabled = false;
         this._labelText.htmlText = "";
         this._ui.maxBt.addEventListener(MouseEvent.CLICK,this.onMax);
      }
      
      private function onMax(param1:MouseEvent) : void
      {
         this._numStepper.value = this._numStepper.max;
      }
      
      override public function destroy() : void
      {
         this._ui.closeButton.removeEventListener(MouseEvent.CLICK,this.onClose);
         this._ui.closeButton.dispose();
         this._ui.background.dispose();
         this._ui.header.dispose();
         this._okButton.removeEventListener(MouseEvent.CLICK,this.onOk);
         this._okButton.dispose();
         this._okButton = null;
         this._cancelButton.removeEventListener(MouseEvent.CLICK,this.onCancel);
         this._cancelButton.dispose();
         this._cancelButton = null;
         this._numStepper.removeEventListener(NumberStepperEvent.NUMBER_STEPPER_VALUE_CHANGED,this.onNumberChanged);
         this._numStepper.dispose();
         this._numStepper = null;
         this._item.dispose();
         this._item = null;
         this._labelText = null;
         super.destroy();
      }
      
      override public function get name() : String
      {
         return "QuickSellingPanel";
      }
      
      public function open(param1:ItemData) : void
      {
         if(param1 == null || param1.id == 0)
         {
            return;
         }
         this._data = param1;
         this._numStepper.max = this._data.num > this._numStepper.min?this._data.num:this._numStepper.min;
         this._numStepper.value = this._numStepper.min;
         this._item.data = this._data;
         this._labelText.htmlText = this.getSellingLabel(this._data.num);
         this.updatePrice(this._data.price,this._numStepper.value);
         show();
      }
      
      override public function close() : void
      {
         this._item.data = null;
         super.close();
      }
      
      private function onClose(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onOk(param1:MouseEvent) : void
      {
         if(this._data == null)
         {
            return;
         }
         new PlayUISoundCommand(UISoundDef.BUTTON_CLICK).call();
         this.close();
         var _loc2_:SellItemCommand = new SellItemCommand(this._data,this._numStepper.value);
         _loc2_.call();
      }
      
      private function onCancel(param1:MouseEvent) : void
      {
         new PlayUISoundCommand(UISoundDef.CANCEL_OR_CLOSE_BUTTON_CLICK).call();
         this.close();
      }
      
      private function onNumberChanged(param1:Event) : void
      {
         if(this._data == null)
         {
            return;
         }
         this.updatePrice(this._data.price,this._numStepper.value);
      }
      
      private function updatePrice(param1:int, param2:int) : void
      {
         this._priceText.htmlText = "<b>" + param1 * param2 + "</b>";
      }
      
      private function getSellingLabel(param1:int) : String
      {
         var _loc2_:String = StrReplacer.replace(MallConst.QUICK_SELLING_LABEL,param1);
         return _loc2_;
      }
   }
}
