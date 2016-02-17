package com.tencent.morefun.naruto.plugin.exui.mall.using
{
   import com.tencent.morefun.naruto.plugin.ui.box.BaseBox;
   import com.tencent.morefun.naruto.plugin.exui.ui.UseItemPanelUI;
   import naruto.component.controls.ButtonClose;
   import naruto.component.controls.ButtonNormalBlue;
   import bag.data.CommonItemData;
   import naruto.component.controls.NumericStepper_1;
   import com.tencent.morefun.naruto.plugin.exui.mall.selling.QuickSellingItemCell;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   import base.ApplicationData;
   import com.tencent.morefun.naruto.plugin.ui.base.event.NumberStepperEvent;
   import bag.command.UseItemCommand;
   import flash.events.Event;
   import com.tencent.morefun.naruto.util.StrReplacer;
   import com.tencent.morefun.naruto.plugin.exui.mall.MallConst;
   
   public class UseItemPanel extends BaseBox
   {
      
      private static const MIN_NUM:int = 1;
      
      private static const MAX_NUM:int = 999;
      
      private static const ITEM_X:int = 70;
      
      private static const ITEM_Y:int = 65;
       
      private var _ui:UseItemPanelUI;
      
      private var _closeButton:ButtonClose;
      
      private var _okButton:ButtonNormalBlue;
      
      private var _cancelButton:ButtonNormalBlue;
      
      private var _data:CommonItemData;
      
      private var _numStepper:NumericStepper_1;
      
      private var _item:QuickSellingItemCell;
      
      private var _labelText:TextField;
      
      public function UseItemPanel()
      {
         this._ui = new UseItemPanelUI();
         super(this._ui,true,true,true,5,this.name);
         closeButton = this._ui.closeButton;
         this._okButton = this._ui.okButton;
         this._okButton.addEventListener(MouseEvent.CLICK,this.onOk);
         this._cancelButton = this._ui.cancelButton;
         this._cancelButton.addEventListener(MouseEvent.CLICK,this.onCancel);
         this._numStepper = this._ui.numStepper;
         this._numStepper.min = MIN_NUM;
         this._numStepper.max = MAX_NUM;
         this._numStepper.editable = true;
         this._numStepper.addEventListener(Event.CHANGE,this.onNumberChanged);
         this._item = new QuickSellingItemCell(this._ui.item);
         this._labelText = this._ui.labelText;
         this._labelText.mouseEnabled = false;
         this._labelText.htmlText = "";
         this._ui.maxBt.addEventListener(MouseEvent.CLICK,this.onMax);
      }
      
      private function onMax(param1:MouseEvent) : void
      {
         var _loc2_:* = 0;
         if(this._data.val1 == 1005)
         {
            _loc2_ = ApplicationData.singleton.selfInfo.ultimateStrength - ApplicationData.singleton.selfInfo.strength;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
            if(_loc2_ > 0)
            {
               this._numStepper.value = int(_loc2_ / this._data.val2);
            }
            else
            {
               this._numStepper.value = 0;
            }
         }
         else
         {
            this._numStepper.value = this._numStepper.max;
         }
      }
      
      override public function destroy() : void
      {
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
         return "UseItemPanel";
      }
      
      public function open(param1:CommonItemData) : void
      {
         if(param1 == null || param1.id == 0)
         {
            return;
         }
         this._data = param1;
         this._numStepper.max = this._data.num > this._numStepper.min?this._data.num:this._numStepper.min;
         this._numStepper.value = this._numStepper.min;
         this._item.data = this._data;
         this._labelText.htmlText = "<b><font color=\'#968A58\'>选择使用数量(拥有</font><font color=\'#FFBA00\'>" + this._data.num + "</font><font color=\'#968A58\'>个</font>)</b>";
         this.updateDesc();
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
         this.close();
         var _loc2_:UseItemCommand = new UseItemCommand(this._data.id,this._numStepper.value,this._data.index);
         _loc2_.call();
      }
      
      private function onCancel(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onNumberChanged(param1:Event) : void
      {
         if(this._data == null)
         {
            return;
         }
         this.updateDesc();
      }
      
      private function updateDesc() : void
      {
         var _loc3_:* = 0;
         if(this._data == null)
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc2_:String = "";
         this._ui.okButton.userData = null;
         if(this._data.val1 == 1005)
         {
            _loc1_ = this._data.val2 * this._numStepper.value;
            _loc3_ = ApplicationData.singleton.selfInfo.ultimateStrength - ApplicationData.singleton.selfInfo.strength;
            if(_loc3_ < 0)
            {
               _loc3_ = 0;
            }
            if(_loc1_ > _loc3_)
            {
               _loc2_ = "恢复体力" + _loc3_ + "点<font color=\'#ff3333\'>(溢出" + (_loc1_ - _loc3_) + "点)<font>";
            }
            else
            {
               _loc2_ = "恢复体力" + _loc1_ + "点";
            }
         }
         else if(this._data.val1 == 1012)
         {
            _loc1_ = this._data.val2 * this._numStepper.value;
            _loc2_ = "获得主角经验" + _loc1_ + "点";
         }
         this._ui.descText.htmlText = "<b>" + _loc2_ + "</b>";
      }
      
      private function getSellingLabel(param1:int) : String
      {
         var _loc2_:String = StrReplacer.replace(MallConst.QUICK_SELLING_LABEL,param1);
         return _loc2_;
      }
   }
}
