package com.tencent.morefun.naruto.plugin.exui.card.small
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import bag.data.CardItemData;
   
   public class NinjaCardFg extends Sprite
   {
       
      private var _ui:MovieClip;
      
      private var _data:CardItemData;
      
      private var _frame:MovieClip;
      
      private var _ninjaType:MovieClip;
      
      private var _ninjaTypeStrip:MovieClip;
      
      private var _rare:MovieClip;
      
      public function NinjaCardFg(param1:MovieClip)
      {
         super();
         this._ui = param1;
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._ninjaType = this._ui.ninjaType;
         this._ninjaTypeStrip = this._ui.ninjaTypeStrip;
         this._frame = this._ui.frame;
         this._rare = this._ui.rare;
         this.reset();
         this._ninjaType.visible = false;
         this._ninjaTypeStrip.visible = false;
         this._rare.visible = false;
      }
      
      public function destroy() : void
      {
         this.reset();
         this._ui = null;
         this._data = null;
         this._frame = null;
         this._ninjaType = null;
         this._ninjaTypeStrip = null;
         this._rare = null;
      }
      
      public function reset() : void
      {
         this._ninjaType.gotoAndStop(1);
         this._ninjaTypeStrip.gotoAndStop(1);
         this._frame.gotoAndStop(1);
         this._rare.gotoAndStop(1);
         this._ui.filters = [];
      }
      
      public function set data(param1:CardItemData) : void
      {
         this._data = param1;
         this._frame.gotoAndStop(this._data.rare);
      }
   }
}
