package com.tencent.morefun.naruto.plugin.exui.card.small
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import bag.data.CardItemData;
   
   public class NinjaCardBg extends Sprite
   {
       
      private var _ui:MovieClip;
      
      public function NinjaCardBg(param1:MovieClip)
      {
         super();
         this._ui = param1;
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
      }
      
      public function destroy() : void
      {
         this.reset();
         this._ui = null;
      }
      
      public function reset() : void
      {
         this._ui.filters = [];
         this._ui.gotoAndStop(1);
      }
      
      public function set data(param1:CardItemData) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._ui.gotoAndStop(param1.ninjaType);
      }
   }
}
