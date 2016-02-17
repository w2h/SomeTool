package com.tencent.morefun.naruto.plugin.exui.tactic
{
   import flash.display.Sprite;
   import ui.plugin.tactic.TacticPositionAdditionUI;
   import tactic.model.data.TacticPositionInfo;
   import tactic.utils.getTacticAdditionTypeName;
   
   public class TacticPositionAdditionIndicator extends Sprite
   {
       
      private var _view:TacticPositionAdditionUI;
      
      private var _data:TacticPositionInfo;
      
      public function TacticPositionAdditionIndicator()
      {
         super();
         addChild(this._view = new TacticPositionAdditionUI());
         mouseEnabled = mouseChildren = false;
      }
      
      public function dispose() : void
      {
         this._view.parent && this._view.parent.removeChild(this._view);
         this._view = null;
         this._data = null;
      }
      
      public function get data() : TacticPositionInfo
      {
         return this._data;
      }
      
      public function set data(param1:TacticPositionInfo) : void
      {
         this._data = param1;
         if(this._data)
         {
            this._view.label.htmlText = "<b>" + getTacticAdditionTypeName(this._data.type) + (this._data.addition >= 0?"+":"-") + this._data.addition + "</b>";
         }
      }
   }
}
