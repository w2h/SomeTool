package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import guide.guideInterface.IGuideTarget;
   import ninja.model.data.NinjaInfo;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import base.ApplicationData;
   import player.events.PlayerDataEvent;
   import com.tencent.morefun.naruto.plugin.ui.util.VipUtil;
   import cfgData.dataStruct.NinjaInfoCFG;
   import user.data.NinjaInfoConfig;
   import utils.PlayerNameUtil;
   import crew.def.NinjaNameColorDef;
   import flash.text.TextFieldAutoSize;
   import def.NinjaAssetDef;
   import player.datas.PlayerData;
   import user.event.NinjaInfoEvent;
   
   public class BaseNinjaTabRender extends ItemRenderer implements IRender, IGuideTarget
   {
      
      public static const BLUE_FRAME:int = 1;
      
      public static const RED_FRAME:int = 2;
       
      protected var _ui:com.tencent.morefun.naruto.plugin.exui.render.BaseNinjaTabUI;
      
      protected var _onTabClick:Function;
      
      protected var _data:NinjaInfo;
      
      protected var _selected:Boolean;
      
      protected var _img:Image;
      
      public function BaseNinjaTabRender(param1:com.tencent.morefun.naruto.plugin.exui.render.BaseNinjaTabUI = null, param2:Function = null)
      {
         if(!param1 || !(param1 is BaseNinjaTabUI))
         {
            var param1:com.tencent.morefun.naruto.plugin.exui.render.BaseNinjaTabUI = new com.tencent.morefun.naruto.plugin.exui.render.BaseNinjaTabUI();
         }
         super(param1);
         this._ui = param1;
         this._ui.mouseChildren = false;
         this._ui.addEventListener("refreshData",this.onRefreshData);
         this._onTabClick = param2;
         this.initUI();
      }
      
      protected function onRefreshData(param1:Event) : void
      {
         if(this._data != null)
         {
            this.data = this._data;
         }
      }
      
      protected function initUI() : void
      {
         this._ui.gotoAndStop("normal");
         this._ui.addEventListener(MouseEvent.MOUSE_OVER,this.onOver);
         this._ui.addEventListener(MouseEvent.MOUSE_OUT,this.onOut);
         this._ui.addEventListener(MouseEvent.CLICK,this.onClick);
         this._img = new Image(50,50);
         this._ui.frame.imgPos.addChild(this._img);
      }
      
      override public function destroy() : void
      {
         this._data = null;
         this._ui.removeEventListener("refreshData",this.onRefreshData);
         this._ui.removeEventListener(MouseEvent.MOUSE_OVER,this.onOver);
         this._ui.removeEventListener(MouseEvent.MOUSE_OUT,this.onOut);
         this._ui.removeEventListener(MouseEvent.CLICK,this.onClick);
         ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
         VipUtil.setOtherInfo(this._ui.frame.vipIcon,0,null);
         this._onTabClick = null;
         this._img.parent && this._img.parent.removeChild(this._img);
         this._img.dispose();
         this._img = null;
         super.destroy();
      }
      
      public function dispose() : void
      {
         this.destroy();
      }
      
      public function reset() : void
      {
         ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
         VipUtil.setOtherInfo(this._ui.frame.vipIcon,0,null);
         this._ui.visible = false;
         this._ui.gotoAndStop(1);
         this._img.dispose();
      }
      
      override public function get data() : Object
      {
         return this._data;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:NinjaInfoCFG = null;
         if(param1 is NinjaInfo)
         {
            this._data = param1 as NinjaInfo;
            _loc3_ = NinjaInfoConfig.getNinjaCfgInfo(this._data.id);
            if(!_loc3_)
            {
               return;
            }
            if(this._ui.frame)
            {
               if((param1 as NinjaInfo).sequence == 0)
               {
                  if((param1 as NinjaInfo).isOtherPlayer == false)
                  {
                     _loc2_ = PlayerNameUtil.standardlizeName(ApplicationData.singleton.selfPlayerKey,ApplicationData.singleton.selfInfo.name);
                     ApplicationData.singleton.selfInfo.addEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
                     VipUtil.setSelfInfo(this._ui.frame.vipIcon);
                  }
                  else
                  {
                     _loc2_ = PlayerNameUtil.standardlizeName((param1 as NinjaInfo).otherPlayerSvrId,(param1 as NinjaInfo).otherPlayerName);
                     ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
                     VipUtil.setOtherInfo(this._ui.frame.vipIcon,(param1 as NinjaInfo).otherPlayerVipLevel,(param1 as NinjaInfo).otherPlayerDiamondInfo);
                  }
               }
               else
               {
                  _loc2_ = (param1 as NinjaInfo).cfg.name;
                  ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
                  VipUtil.setOtherInfo(this._ui.frame.vipIcon,0,null);
               }
               this._ui.frame.nameText.text = _loc2_ + ((param1 as NinjaInfo).sequence == 0?"":_loc3_.title) + NinjaNameColorDef.getNameAppendStrByStrengthenLevel(this._data.levelUpgrade);
               this._ui.frame.nameText.textColor = NinjaNameColorDef.getNameTextColorByStrengthenLevel(this._data.levelUpgrade);
               this._ui.frame.nameText.autoSize = TextFieldAutoSize.LEFT;
               this._ui.frame.nameText.x = this._ui.frame.vipIcon.x + this._ui.frame.vipIcon.width;
            }
            this._ui.levelText && (this._ui.levelText.htmlText = "<b>" + this._data.level.toString() + "</b>");
            this._ui.propertyTag && this._ui.propertyTag.gotoAndStop(_loc3_.property);
            this._ui.starLabel.gotoAndStop(this._data.starLevel + 1);
            if(this._data.isInFormation)
            {
               this._ui.formationTag && (this._ui.formationTag.visible = true);
            }
            else
            {
               this._ui.formationTag && (this._ui.formationTag.visible = false);
            }
            this._ui.frame && this._ui.frame.gotoAndStop(NinjaNameColorDef.getNameTextColorNameByStrengthenLevel(this._data.levelUpgrade));
            this._ui.frame && this._ui.frame.imgPos.addChild(this._img);
            this._img.load(NinjaAssetDef.getAsset(NinjaAssetDef.HEAD_WIDE,_loc3_.id));
            this._ui.visible = true;
         }
         else
         {
            this.reset();
         }
      }
      
      protected function onSelfInfoPropertyUpdate(param1:PlayerDataEvent) : void
      {
         if(param1.property == PlayerData.PROPERTY_VIP_LEVEL)
         {
            VipUtil.setSelfInfo(this._ui.frame.vipIcon);
            this._ui.frame.nameText.x = this._ui.frame.vipIcon.x + this._ui.frame.vipIcon.width;
         }
      }
      
      protected function onOver(param1:MouseEvent) : void
      {
         if(!this.selected)
         {
            this._ui.gotoAndStop("mouseOver");
         }
      }
      
      protected function onOut(param1:MouseEvent) : void
      {
         if(!this.selected)
         {
            this._ui.gotoAndStop("normal");
         }
      }
      
      override public function get selected() : Boolean
      {
         return this._selected;
      }
      
      override public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            if(!this.selected)
            {
               this.playSelecting();
            }
         }
         else if(this.selected)
         {
            this.playDeselecting();
         }
         this._selected = param1;
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         if(this.selected)
         {
            return;
         }
         if(this._onTabClick != null)
         {
            this._onTabClick(this);
         }
      }
      
      public function get showAvatarOnly() : Boolean
      {
         return false;
      }
      
      public function set showAvatarOnly(param1:Boolean) : void
      {
      }
      
      protected function playSelecting() : void
      {
         this._ui.gotoAndPlay("selecting");
      }
      
      protected function playDeselecting() : void
      {
         this._ui.gotoAndPlay("deselecting");
      }
      
      protected function onNinjaInfoAllChanged(param1:NinjaInfoEvent) : void
      {
         this.data = this._data;
      }
      
      public function get guideTargetName() : String
      {
         return this._data && this._data is NinjaInfo?(this._data as NinjaInfo).id.toString():"null";
      }
   }
}
