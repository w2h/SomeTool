package com.tencent.morefun.naruto.plugin.exui.card
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.card.ui.LargeNinjaCardUI;
   import com.tencent.morefun.naruto.plugin.exui.card.large.NinjaPreviewCardFg;
   import com.tencent.morefun.naruto.plugin.exui.card.large.NinjaPreviewCardBg;
   import com.tencent.morefun.naruto.plugin.exui.card.large.NinjaPreviewCardAvatar;
   import bag.data.CardItemData;
   import bag.utils.BagUtils;
   import base.ApplicationData;
   
   public class LargeNinjaCardView extends Sprite
   {
       
      private var _ui:LargeNinjaCardUI;
      
      private var _fg:NinjaPreviewCardFg;
      
      private var _bg:NinjaPreviewCardBg;
      
      private var _avatar:NinjaPreviewCardAvatar;
      
      public function LargeNinjaCardView()
      {
         super();
         this._ui = new LargeNinjaCardUI();
         this.addChild(this._ui);
         this._fg = new NinjaPreviewCardFg(this._ui.fg);
         this._bg = new NinjaPreviewCardBg(this._ui.bg);
         this._avatar = new NinjaPreviewCardAvatar(this._ui.avatar);
         this._ui.fragment.visible = false;
      }
      
      public function dispose() : void
      {
         if(this._fg)
         {
            this._fg.dispose();
            this._fg = null;
         }
         if(this._bg)
         {
            this._bg.dispose();
            this._bg = null;
         }
         if(this._avatar)
         {
            this._avatar.dispose();
            this._avatar = null;
         }
         this.removeChild(this._ui);
         this._ui = null;
      }
      
      public function reset() : void
      {
         this._fg.reset();
         this._bg.reset();
         this._avatar.reset();
         this._fg.ui.filters = [];
         this._bg.ui.filters = [];
         this._avatar.ui.filters = [];
      }
      
      public function set data(param1:CardItemData) : void
      {
         if(param1 != null)
         {
            if(param1.id == BagUtils.PLAYER_NINJA_ID)
            {
               param1.ninjaType = ApplicationData.singleton.selfInfo.professions;
            }
            this._fg.data = param1;
            this._bg.data = param1;
            this._avatar.data = param1;
         }
         else
         {
            this.reset();
         }
      }
      
      public function set hasNinja(param1:Boolean) : void
      {
         this._fg.hasNinja = param1;
      }
      
      public function set showName(param1:Boolean) : void
      {
         this._fg.showName = param1;
      }
   }
}
