package com.tencent.morefun.naruto.plugin.exui.card.large
{
   import com.tencent.morefun.naruto.plugin.exui.card.ui.LargeNinjaCardBgUI;
   import bag.data.CardItemData;
   import flash.display.DisplayObject;
   
   public class NinjaPreviewCardBg
   {
       
      private var _ui:LargeNinjaCardBgUI;
      
      public function NinjaPreviewCardBg(param1:LargeNinjaCardBgUI)
      {
         super();
         this._ui = param1;
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._ui.gotoAndStop(1);
      }
      
      public function dispose() : void
      {
         this._ui = null;
      }
      
      public function reset() : void
      {
      }
      
      public function set data(param1:CardItemData) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._ui.gotoAndStop(param1.ninjaType);
      }
      
      public function get ui() : DisplayObject
      {
         return this._ui;
      }
   }
}
