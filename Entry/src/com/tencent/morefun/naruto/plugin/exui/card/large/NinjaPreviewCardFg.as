package com.tencent.morefun.naruto.plugin.exui.card.large
{
   import com.tencent.morefun.naruto.plugin.exui.card.ui.LargeNinjaCardFgUI;
   import bag.data.CardItemData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.DisplayObject;
   
   public class NinjaPreviewCardFg
   {
       
      private var _ui:LargeNinjaCardFgUI;
      
      private var _data:CardItemData;
      
      private var _ninjaClass:MovieClip;
      
      private var _ninjaType:MovieClip;
      
      private var _ninjaTypeStrip:MovieClip;
      
      private var _frame:MovieClip;
      
      private var _rare:MovieClip;
      
      private var _hasNinja:Sprite;
      
      private var _nameText:TextField;
      
      private var _showName:Boolean;
      
      private var _leadershipText:TextField;
      
      public function NinjaPreviewCardFg(param1:LargeNinjaCardFgUI)
      {
         super();
         this._ui = param1;
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._ninjaClass = this._ui.ninjaClass;
         this._ninjaType = this._ui.ninjaType;
         this._ninjaTypeStrip = this._ui.ninjaTypeStrip;
         this._frame = this._ui.frame;
         this._rare = this._ui.rare;
         this._hasNinja = this._ui.hasNinja;
         this._nameText = this._ui.nameText;
         this._leadershipText = this._ui.leadershipText;
         this.reset();
         this.showName = true;
         this._rare.visible = false;
      }
      
      public function dispose() : void
      {
         this.reset();
         this._ui = null;
         this._data = null;
         this._ninjaClass = null;
         this._ninjaType = null;
         this._ninjaTypeStrip = null;
         this._frame = null;
         this._rare = null;
         this._hasNinja = null;
         this._nameText = null;
         this._leadershipText = null;
      }
      
      public function reset() : void
      {
         this._ninjaType.gotoAndStop(1);
         this._ninjaTypeStrip.gotoAndStop(1);
         this._frame.gotoAndStop(1);
         this._rare.gotoAndStop(1);
         this._hasNinja.visible = false;
         this._nameText.htmlText = "";
         this._ninjaClass.gotoAndStop(1);
         this._ninjaClass.visible = false;
         this._leadershipText.htmlText = "";
         this._leadershipText.visible = false;
      }
      
      public function set data(param1:CardItemData) : void
      {
         if(param1 != null)
         {
            this._data = param1;
            this._ninjaType.gotoAndStop(this._data.ninjaType);
            this._ninjaTypeStrip.gotoAndStop(this._data.ninjaType);
            this._ninjaTypeStrip.visible = this._data.rare > 3;
            this._frame.gotoAndStop(this._data.rare);
            this._rare.gotoAndStop(this._data.rare);
            this.refreshName();
         }
         else
         {
            this.reset();
         }
      }
      
      public function get ui() : DisplayObject
      {
         return this._ui;
      }
      
      public function set hasNinja(param1:Boolean) : void
      {
         this._hasNinja.visible = param1;
      }
      
      public function set showName(param1:Boolean) : void
      {
         this._showName = param1;
         this.refreshName();
      }
      
      private function refreshName() : void
      {
         if(this._showName)
         {
            this._nameText.htmlText = this.getNameStr();
         }
         else
         {
            this._nameText.htmlText = "";
         }
      }
      
      private function getNameStr() : String
      {
         if(this._data == null)
         {
            return "";
         }
         var _loc1_:String = this._data.name;
         if(this._data.title != null)
         {
            _loc1_ = _loc1_ + this._data.title;
         }
         return "<b>" + _loc1_ + "</b>";
      }
   }
}
