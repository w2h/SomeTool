package com.tencent.morefun.naruto.plugin.exui.base
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import user.data.UserInfo;
   import ui.naruto.UserTipsUI;
   import user.event.UserInfoEvent;
   import flash.events.Event;
   import cfgData.dataStruct.NinjaInfoCFG;
   import ninja.model.data.NinjaInfo;
   import user.data.UserConfig;
   import user.data.NinjaInfoConfig;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import flash.text.TextField;
   import flash.display.DisplayObject;
   import flash.text.TextFieldAutoSize;
   
   public class UserTipsView extends BaseTipsView
   {
       
      private var userInfo:UserInfo;
      
      private var userTipsUI:UserTipsUI;
      
      private var padding:int = 30;
      
      public function UserTipsView(param1:Class)
      {
         super();
         this.userTipsUI = new param1();
         addChild(this.userTipsUI);
         this.text.autoSize = TextFieldAutoSize.LEFT;
      }
      
      override public function set data(param1:Object) : void
      {
         if(this.userInfo)
         {
            this.userInfo.removeEventListener(UserInfoEvent.BASE_UPDATE,this.onUserInfoUpdated);
            this.userInfo.removeEventListener(UserInfoEvent.NINJA_INFO_UPDATE,this.onUserInfoUpdated);
         }
         this.userInfo = param1 as UserInfo;
         this.userInfo.addEventListener(UserInfoEvent.BASE_UPDATE,this.onUserInfoUpdated);
         this.userInfo.addEventListener(UserInfoEvent.NINJA_INFO_UPDATE,this.onUserInfoUpdated);
         this.updateTipsInfo();
      }
      
      private function onUserInfoUpdated(param1:Event) : void
      {
         this.updateTipsInfo();
      }
      
      private function updateTipsInfo() : void
      {
         var _loc1_:NinjaInfoCFG = null;
         var _loc2_:NinjaInfo = null;
         if(this.userInfo.baseInited == false)
         {
            return;
         }
         this.text.text = "QQ:" + this.userInfo.uin + "\n";
         this.text.appendText("系别:" + UserConfig.getProfessionsStr(this.userInfo.professions) + "\n");
         this.text.appendText("战斗值:" + this.userInfo.battlePower + "\n");
         this.text.appendText("－－－－－－－－－－－－－－－－\n");
         if(this.userInfo.ninjaInited == false)
         {
            return;
         }
         for each(_loc2_ in this.userInfo.ninjaInfoList)
         {
            _loc1_ = NinjaInfoConfig.getNinjaCfgInfo(_loc2_.id);
            if(_loc2_.isInFormation)
            {
               this.text.appendText(_loc1_.name + "\n");
            }
         }
         this.background.width = this.text.width + this.padding;
         this.background.height = this.text.height + this.padding;
         this.text.x = this.padding / 2;
         this.text.y = this.padding / 2;
      }
      
      override public function move(param1:int, param2:int) : void
      {
         if(param1 + this.width > LayoutManager.stageWidth)
         {
            this.x = param1 - this.width;
         }
         else
         {
            this.x = param1;
         }
         if(param2 + this.height > LayoutManager.stageHeight)
         {
            this.y = param2 - this.height - 10;
         }
         else
         {
            this.y = param2 + 10;
         }
      }
      
      private function get text() : TextField
      {
         return this.userTipsUI["text"];
      }
      
      private function get background() : DisplayObject
      {
         return this.userTipsUI["bg"];
      }
   }
}
