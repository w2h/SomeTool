package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import guide.guideInterface.IGuideTarget;
   import flash.display.BitmapData;
   import ninja.ui.DefaultNinjaHeadImg;
   import com.tencent.morefun.naruto.plugin.exui.base.ExImage;
   import flash.display.Bitmap;
   import com.tencent.morefun.naruto.plugin.ui.base.BaseButton;
   import flash.text.TextFieldAutoSize;
   import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
   import flash.events.MouseEvent;
   import ninja.model.data.NinjaInfo;
   import utils.PlayerNameUtil;
   import base.ApplicationData;
   import player.events.PlayerDataEvent;
   import com.tencent.morefun.naruto.plugin.ui.util.VipUtil;
   import crew.def.NinjaNameColorDef;
   import def.NinjaAssetDef;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import def.TipsTypeDef;
   import player.datas.PlayerData;
   import flash.events.Event;
   import ninja.command.OpenNinjaDetailCommand;
   import sound.commands.PlayUISoundCommand;
   import sound.def.UISoundDef;
   import flash.display.MovieClip;
   
   public class SimpleNinjaRender extends ItemRenderer implements IRender, IGuideTarget
   {
      
      public static var defalutImgBitmapData:BitmapData = new DefaultNinjaHeadImg();
       
      protected var img:ExImage;
      
      protected var defaultImgBitmap:Bitmap;
      
      protected var detailButton:BaseButton;
      
      public function SimpleNinjaRender(param1:MovieClip = null)
      {
         if(!param1 || !(param1 is SimpleNinjaRenderUI))
         {
            var param1:MovieClip = new SimpleNinjaRenderUI();
         }
         super(param1);
         this.init();
      }
      
      protected function init() : void
      {
         this.view.frame.gotoAndStop("empty");
         this.view.bg.gotoAndStop("white");
         this.view.upBg.gotoAndStop(1);
         this.view.nameText.mouseEnabled = false;
         this.view.levelText.autoSize = TextFieldAutoSize.LEFT;
         this.view.frame.mouseChildren = this.view.frame.mouseEnabled = false;
         this.defaultImgBitmap = new Bitmap(defalutImgBitmapData);
         this.img = new ExImage(0,0,false,this.defaultImgBitmap);
         DisplayUtils.replaceDisplay(this.view.imgRect,this.img);
         this.addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         this.detailButton = new BaseButton(this.view.detailButton);
         this.detailButton.addEventListener(MouseEvent.CLICK,this.onDetailButtonClick);
         this.detailButton.buttonMode = true;
         this.view.addChild(this.detailButton);
         this.detailButton.visible = false;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:String = null;
         m_data = param1;
         if(param1)
         {
            if((param1 as NinjaInfo).sequence == 0)
            {
               if((param1 as NinjaInfo).isOtherPlayer == false)
               {
                  _loc2_ = PlayerNameUtil.standardlizeName(ApplicationData.singleton.selfPlayerKey,ApplicationData.singleton.selfInfo.name);
                  ApplicationData.singleton.selfInfo.addEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
                  VipUtil.setSelfInfo(this.view.vipIcon);
               }
               else
               {
                  _loc2_ = PlayerNameUtil.standardlizeName((param1 as NinjaInfo).otherPlayerSvrId,(param1 as NinjaInfo).otherPlayerName);
                  ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
                  VipUtil.setOtherInfo(this.view.vipIcon,0,null);
               }
            }
            else
            {
               _loc2_ = (param1 as NinjaInfo).cfg.name;
               ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
               VipUtil.setOtherInfo(this.view.vipIcon,0,null);
            }
            this.view.nameText.text = _loc2_ + ((param1 as NinjaInfo).sequence == 0?"":(param1 as NinjaInfo).cfg.title) + NinjaNameColorDef.getNameAppendStrByStrengthenLevel((param1 as NinjaInfo).levelUpgrade);
            this.view.nameText.textColor = NinjaNameColorDef.getNameTextColorByStrengthenLevel((param1 as NinjaInfo).levelUpgrade);
            this.view.nameText.autoSize = TextFieldAutoSize.LEFT;
            this.view.nameText.x = this.view.vipIcon.x + this.view.vipIcon.width;
            this.view.levelText.htmlText = "<b>" + (param1 as NinjaInfo).level.toString() + "</b>";
            this.view.levelText.x = 128 - this.view.levelText.textWidth;
            this.view.levelLabel.x = this.view.levelText.x - 19;
            this.view.levelText.visible = this.view.levelLabel.visible = (param1 as NinjaInfo).level > 0;
            this.view.propertyTag.gotoAndStop((param1 as NinjaInfo).cfg.property);
            this.view.frame.gotoAndStop((param1 as NinjaInfo).selected?"yellow":"empty");
            if((param1 as NinjaInfo).sequence != -1)
            {
               this.view.starLabel.gotoAndStop((param1 as NinjaInfo).starLevel + 1);
            }
            else
            {
               this.view.starLabel.gotoAndStop((param1 as NinjaInfo).cfg.starLevel);
            }
            this.view.bg.gotoAndStop(NinjaNameColorDef.getNameTextColorNameByStrengthenLevel((param1 as NinjaInfo).levelUpgrade));
            this.view.upBg.gotoAndStop((param1 as NinjaInfo).levelUpgrade + 1);
            this.img.load(NinjaAssetDef.getAsset(NinjaAssetDef.HEAD_WIDE,(param1 as NinjaInfo).cfg.id));
            TipsManager.singleton.binding(this,param1,TipsTypeDef.NINJA_INFO);
         }
         else
         {
            ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
            VipUtil.setOtherInfo(this.view.vipIcon,0,null);
            TipsManager.singleton.unbinding(this,TipsTypeDef.NINJA_INFO);
         }
      }
      
      protected function onSelfInfoPropertyUpdate(param1:PlayerDataEvent) : void
      {
         if(param1.property == PlayerData.PROPERTY_VIP_LEVEL)
         {
            VipUtil.setSelfInfo(this.view.vipIcon);
            this.view.nameText.x = this.view.vipIcon.x + this.view.vipIcon.width;
         }
      }
      
      protected function onMouseOver(param1:Event) : void
      {
         !this.data.selected && this.view.frame.gotoAndStop("blue");
      }
      
      protected function onMouseOut(param1:Event) : void
      {
         if(this.data == null)
         {
            return;
         }
         !this.data.selected && this.view.frame.gotoAndStop("empty");
         this.detailButton.visible = false;
      }
      
      protected function onDetailButtonClick(param1:MouseEvent) : void
      {
         new OpenNinjaDetailCommand((m_data as NinjaInfo).id,true,(m_data as NinjaInfo).sequence).call();
         new PlayUISoundCommand(UISoundDef.BUTTON_CLICK).call();
      }
      
      override public function set selected(param1:Boolean) : void
      {
         m_selected = param1;
         this.view.frame.gotoAndStop(m_selected?"yellow":"empty");
      }
      
      protected function get view() : SimpleNinjaRenderUI
      {
         return m_skin as SimpleNinjaRenderUI;
      }
      
      override public function destroy() : void
      {
         TipsManager.singleton.unbinding(this,TipsTypeDef.NINJA_INFO);
         ApplicationData.singleton.selfInfo.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE,this.onSelfInfoPropertyUpdate);
         this.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         this.view && this.detailButton && this.detailButton.removeEventListener(MouseEvent.CLICK,this.onDetailButtonClick);
         this.detailButton.parent && this.detailButton.parent.removeChild(this.detailButton);
         this.detailButton.destroy();
         this.detailButton = null;
         this.img.parent && this.img.parent.removeChild(this.img);
         this.img.dispose();
         this.img = null;
         this.defaultImgBitmap.parent && this.defaultImgBitmap.parent.removeChild(this.defaultImgBitmap);
         this.defaultImgBitmap = null;
         super.destroy();
      }
      
      public function dispose() : void
      {
         this.destroy();
      }
      
      override public function get width() : Number
      {
         return 167;
      }
      
      override public function get height() : Number
      {
         return 79;
      }
      
      public function get guideTargetName() : String
      {
         if(data && data.hasOwnProperty("id"))
         {
            return String(data["id"]);
         }
         return "";
      }
   }
}
