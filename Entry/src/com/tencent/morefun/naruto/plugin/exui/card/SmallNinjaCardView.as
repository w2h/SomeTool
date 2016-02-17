package com.tencent.morefun.naruto.plugin.exui.card
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.card.ui.SmallNinjaCardUI;
   import com.tencent.morefun.naruto.plugin.exui.card.small.NinjaCardFg;
   import com.tencent.morefun.naruto.plugin.exui.card.small.NinjaCardBg;
   import com.tencent.morefun.naruto.plugin.exui.card.small.NinjaCardAvatar;
   import bag.data.CardItemData;
   import bag.utils.BagUtils;
   import base.ApplicationData;
   
   public class SmallNinjaCardView extends Sprite
   {
       
      private var _ui:SmallNinjaCardUI;
      
      private var _fg:NinjaCardFg;
      
      private var _bg:NinjaCardBg;
      
      private var _avatar:NinjaCardAvatar;
      
      public function SmallNinjaCardView()
      {
         super();
         this._ui = new SmallNinjaCardUI();
         this.addChild(this._ui);
         this._fg = new NinjaCardFg(this._ui.fg);
         this._bg = new NinjaCardBg(this._ui.bg);
         this._avatar = new NinjaCardAvatar(this._ui.avatar);
         this._ui.fragment.visible = false;
         this.reset();
      }
      
      public function destroy() : void
      {
         this._fg.destroy();
         this._fg = null;
         this._bg.destroy();
         this._bg = null;
         this._avatar.destroy();
         this._avatar = null;
         this.removeChild(this._ui);
         this._ui = null;
      }
      
      public function reset() : void
      {
         this._fg.reset();
         this._bg.reset();
         this._avatar.reset();
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
   }
}
