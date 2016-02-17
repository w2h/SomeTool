package com.tencent.morefun.naruto.plugin.exui.item
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.ui.ItemIconBgUI;
   
   public class ItemIconBg extends Sprite
   {
       
      private var _ui:ItemIconBgUI;
      
      public function ItemIconBg()
      {
         super();
         this.mouseEnabled = true;
         this.mouseChildren = false;
         this._ui = new ItemIconBgUI();
         addChild(this._ui);
      }
      
      public function destroy() : void
      {
         removeChild(this._ui);
         this._ui = null;
      }
   }
}
