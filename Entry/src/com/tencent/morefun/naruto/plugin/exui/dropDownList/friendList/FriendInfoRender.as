package com.tencent.morefun.naruto.plugin.exui.dropDownList.friendList
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import utils.PlayerNameUtil;
   import friend.data.FriendInfo;
   import ui.exui.dropDownList.FriendInfoRenderUI;
   import flash.events.MouseEvent;
   import flash.display.DisplayObject;
   import flash.text.TextFieldAutoSize;
   
   public class FriendInfoRender extends ItemRenderer
   {
       
      public function FriendInfoRender(param1:DisplayObject)
      {
         super(param1);
         this.view.gotoAndStop(1);
         this.view.addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.view.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         this.view.dropDownBtn.visible = false;
         this.view.bg.bg.width = 235;
         this.view.friendNameText.wordWrap = false;
         this.view.friendNameText.autoSize = TextFieldAutoSize.LEFT;
      }
      
      override public function set data(param1:Object) : void
      {
         m_data = param1;
         if(param1)
         {
            this.view.friendNameText.text = PlayerNameUtil.standardlizeName((param1 as FriendInfo).playerKey,(param1 as FriendInfo).name);
         }
      }
      
      protected function get view() : FriendInfoRenderUI
      {
         return m_skin as FriendInfoRenderUI;
      }
      
      protected function onMouseOver(param1:MouseEvent) : void
      {
         this.view.gotoAndStop(2);
      }
      
      protected function onMouseOut(param1:MouseEvent) : void
      {
         this.view.gotoAndStop(1);
      }
      
      override public function destroy() : void
      {
         this.view.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.view.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         super.destroy();
      }
      
      public function switchToOpenRenderMode() : void
      {
         this.view.friendNameText.visible = false;
         this.view.bg.visible = false;
         this.view.occupySpaceItem.visible = false;
         this.view.dropDownBtn.visible = true;
      }
   }
}
