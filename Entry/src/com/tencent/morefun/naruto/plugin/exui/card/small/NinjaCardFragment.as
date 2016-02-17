package com.tencent.morefun.naruto.plugin.exui.card.small
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import bag.data.CardItemData;
   
   public class NinjaCardFragment extends Sprite
   {
       
      private var _ui:MovieClip;
      
      public function NinjaCardFragment(param1:MovieClip)
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
         this._ui.visible = false;
      }
      
      public function set data(param1:CardItemData) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._ui.visible = param1.isFragment;
      }
   }
}
