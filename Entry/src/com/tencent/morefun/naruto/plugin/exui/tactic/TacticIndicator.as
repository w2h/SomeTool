package com.tencent.morefun.naruto.plugin.exui.tactic
{
   import flash.display.Sprite;
   import ui.plugin.tactic.TacticIndicatorUI;
   import tactic.model.data.TacticInfo;
   import tactic.model.TacticUniqueModel;
   import flash.display.DisplayObject;
   import base.ApplicationData;
   import flash.events.Event;
   import tactic.model.TacticModel;
   import tactic.command.TacticQueryCommand;
   import flash.events.MouseEvent;
   import tactic.command.OpenTacticCommand;
   
   [Event(name="change",type="flash.events.Event")]
   public class TacticIndicator extends Sprite
   {
       
      private var _view:TacticIndicatorUI;
      
      private var _data:TacticInfo;
      
      private var _type:uint;
      
      private var _model:TacticUniqueModel;
      
      public function TacticIndicator()
      {
         super();
         addChild(this._view = new TacticIndicatorUI());
         this.setTacticVisible(false);
         addEventListener(MouseEvent.CLICK,this.clickHandler);
         this._view.buttonAnimation.stop();
         with(this._view.buttonAnimation)
         {
            
            mouseChildren = mouseEnabled = false;
            visible = false;
         }
      }
      
      private function setTacticVisible(param1:Boolean) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._view.numChildren)
         {
            _loc3_ = this._view.getChildAt(_loc2_);
            if(_loc3_ != this._view.openTacticBtn && _loc3_ != this._view.buttonAnimation)
            {
               _loc3_.visible = param1;
            }
            _loc2_++;
         }
      }
      
      public function load(param1:uint) : void
      {
         if(ApplicationData.singleton.selfInfo.level < 40)
         {
            this.visible = false;
            return;
         }
         this.visible = true;
         if(this._model)
         {
            this._model.removeEventListener(Event.CHANGE,this.modelChangeHandler);
            this._model = null;
         }
         this._model = TacticModel.singleton.getUniqueModel(param1);
         this._model.addEventListener(Event.CHANGE,this.modelChangeHandler);
         new TacticQueryCommand(this._type = param1).call();
      }
      
      private function modelChangeHandler(param1:Event) : void
      {
         var _loc2_:Vector.<TacticInfo> = this._model.list;
         var _loc3_:Boolean = false;
         this._data = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].using)
            {
               this._data = _loc2_[_loc4_];
               this._view.tactic.htmlText = "<b>" + this._data.name + "LV" + this._data.level + "</b>";
            }
            if(_loc2_[_loc4_].levelUpAvailable)
            {
               _loc3_ = true;
            }
            _loc4_++;
         }
         this._view.buttonAnimation.visible = _loc3_;
         if(this._view.buttonAnimation.visible)
         {
            this._view.buttonAnimation.play();
         }
         else
         {
            this._view.buttonAnimation.stop();
         }
         this.setTacticVisible(this._data != null);
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         if(param1.target == this._view.openTacticBtn)
         {
            new OpenTacticCommand(this._type).call();
         }
      }
      
      public function dispose() : void
      {
         removeEventListener(MouseEvent.CLICK,this.clickHandler);
         if(this._model)
         {
            this._model.removeEventListener(Event.CHANGE,this.modelChangeHandler);
            this._model = null;
         }
         this._view.parent && this._view.parent.removeChild(this._view);
         this._view = null;
         this._data = null;
      }
      
      public function get data() : TacticInfo
      {
         return this._data;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
   }
}
