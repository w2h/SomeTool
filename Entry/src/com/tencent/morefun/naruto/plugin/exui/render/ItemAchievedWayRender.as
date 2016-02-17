package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import guide.guideInterface.IGuideTarget;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.ItemAchievedWayRanderUI;
   import flash.text.TextField;
   import cfgData.dataStruct.ItemAchievedWayCFG;
   import cardPackage.command.GetCardPackageOpenLevelCommand;
   import com.tencent.morefun.framework.base.CommandEvent;
   import base.ApplicationData;
   import flash.events.TextEvent;
   import dungeon.command.GetDungeonInfoCommand;
   import dungeon.data.DungeonInfo;
   import dungeon.def.DungeonTypeDef;
   import bag.utils.BagUtils;
   import hud.utils.HudMenuIconUtils;
   import serverProto.hud.ProtoHudType;
   import guild.GuildUtils;
   import dungeon.command.RequestDungeonListCommand;
   import task.commands.HrefEventCommand;
   import com.tencent.morefun.naruto.plugin.ui.box.BoxManager;
   import flash.events.MouseEvent;
   import guildBeast.command.OpenGuildBeastPanelCommand;
   import com.tencent.morefun.naruto.util.GameTip;
   import flash.events.Event;
   import dungeon.data.DungeonWipeoutExtraInfo;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import cfgData.dataStruct.DungeonInfoCFG;
   import dungeon.command.RequestUniversalWipeoutCommand;
   import dungeon.def.UniversalWipeoutTypeDef;
   
   public class ItemAchievedWayRender extends ItemRenderer implements IRender, IGuideTarget
   {
       
      private var m_view:ItemAchievedWayRanderUI;
      
      private var m_titleTf:TextField;
      
      private var m_operTf:TextField;
      
      private var _tipTf:TextField;
      
      private const sdPos:int = 148;
      
      private var getCardPackageOpenLevelCommand:GetCardPackageOpenLevelCommand;
      
      public function ItemAchievedWayRender()
      {
         addChild(this.m_view = new ItemAchievedWayRanderUI());
         super(null);
         this.init();
      }
      
      private function init() : void
      {
         this.m_titleTf = this.m_view.getChildByName("nameText") as TextField;
         this.m_operTf = this.m_view.getChildByName("operText") as TextField;
         this._tipTf = new TextField();
         this._tipTf.textColor = 13421772;
         this._tipTf.text = "不可扫荡";
         this._tipTf.mouseEnabled = false;
         this._tipTf.height = 20;
         this._tipTf.width = 55;
         this._tipTf.visible = false;
         this._tipTf.y = this.m_titleTf.y - 2;
      }
      
      private function get selfData() : ItemAchievedWayCFG
      {
         return this.data as ItemAchievedWayCFG;
      }
      
      protected function render() : void
      {
         this._tipTf && (this._tipTf.visible = false);
         this.canClick = this.checkIsOpen();
         if(this.selfData.packId)
         {
            if(this.getCardPackageOpenLevelCommand == null)
            {
               this.getCardPackageOpenLevelCommand = new GetCardPackageOpenLevelCommand(this.selfData.packId);
               this.getCardPackageOpenLevelCommand.addEventListener(CommandEvent.FINISH,this.onGetCardPackageOpenLevelCommand);
               this.getCardPackageOpenLevelCommand.addEventListener(CommandEvent.FAILD,this.onGetCardPackageOpenLevelCommand);
               this.getCardPackageOpenLevelCommand.call();
            }
         }
      }
      
      protected function onGetCardPackageOpenLevelCommand(param1:CommandEvent) : void
      {
         this.getCardPackageOpenLevelCommand.removeEventListener(CommandEvent.FINISH,this.onGetCardPackageOpenLevelCommand);
         this.getCardPackageOpenLevelCommand.removeEventListener(CommandEvent.FAILD,this.onGetCardPackageOpenLevelCommand);
         if(ApplicationData.singleton.selfInfo.level >= this.getCardPackageOpenLevelCommand.openLevel && this.getCardPackageOpenLevelCommand.isOpen)
         {
            this.canClick = true;
         }
         this.getCardPackageOpenLevelCommand = null;
      }
      
      protected function set canClick(param1:Boolean) : void
      {
         this.m_operTf.text = "";
         if(param1)
         {
            this.addEventListener(TextEvent.LINK,this.onClick);
            this.m_titleTf.htmlText = "<a href=\'event:\' ><u>" + this.data.name + "</u></a>";
            this.checkDupRadis();
         }
         else
         {
            this.removeEventListener(TextEvent.LINK,this.onClick);
            this.m_titleTf.htmlText = "<font color=\'#A0A9B0\' >" + this.data.name + "</font>";
         }
         this.m_titleTf.width = this.m_titleTf.textWidth + 10;
         if(this.m_titleTf.width > this.sdPos)
         {
            this.m_operTf.x = this.m_titleTf.width + 5;
         }
         else
         {
            this.m_operTf.x = this.sdPos + 5;
         }
      }
      
      private function checkDupRadis() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:GetDungeonInfoCommand = null;
         var _loc4_:DungeonInfo = null;
         var _loc5_:* = false;
         if(this.selfData.conditionProtoHudNotify == 7 || this.selfData.conditionProtoHudNotify == 9)
         {
            _loc1_ = this.data.conditionProtoHudNotify == 7?DungeonTypeDef.ELITE:DungeonTypeDef.NORMAL;
            _loc2_ = this.getDupID();
            if(_loc2_)
            {
               _loc3_ = new GetDungeonInfoCommand(_loc2_,_loc1_);
               _loc3_.call();
               _loc4_ = _loc3_.dupInfo;
               _loc5_ = false;
               if(_loc1_ == DungeonTypeDef.ELITE)
               {
                  if(_loc4_.bestEvaluate >= 3)
                  {
                     _loc5_ = true;
                  }
               }
               else if(_loc4_.bestEvaluate >= 3 && ApplicationData.singleton.selfInfo.level >= 20 && _loc4_.cfg.wipeOutNeedTime > 0)
               {
                  _loc5_ = true;
               }
               if(!_loc5_)
               {
                  this._tipTf.visible = true;
                  this._tipTf.x = this.m_titleTf.x + this.m_titleTf.textWidth + 5;
               }
               else if(this.selfData.itemType == 8 || this.selfData.itemType == 6 || BagUtils.isCardItem(this.selfData.itemId))
               {
                  this.m_titleTf.htmlText = "<a href=\'event:\' ><u>" + this.data.name + "</u></a>";
                  this.m_operTf.htmlText = "<a href=\'event:sd\' ><u>扫荡</u></a>";
               }
            }
         }
      }
      
      private function getDupID() : int
      {
         var _loc1_:* = 0;
         var _loc2_:Array = this.data.url.split(",");
         if(_loc2_.length > 2)
         {
            _loc2_ = _loc2_[2].split(":");
            if(_loc2_.length > 1)
            {
               _loc1_ = _loc2_[1];
            }
         }
         return _loc1_;
      }
      
      private function checkIsOpen() : Boolean
      {
         var _loc1_:* = 0;
         for each(_loc1_ in HudMenuIconUtils.protoHudNotify)
         {
            if(_loc1_ == this.data.conditionProtoHudNotify)
            {
               if(_loc1_ == 7 || _loc1_ == 9)
               {
                  return this.checkDungeon(_loc1_);
               }
               if(_loc1_ == ProtoHudType.PROTO_HUD_TYPE_GUILD)
               {
                  return GuildUtils.hasGuild();
               }
               return true;
            }
         }
         return false;
      }
      
      private function checkDungeon(param1:int) : Boolean
      {
         var _loc8_:* = 0;
         var _loc2_:String = this.data.url;
         var _loc3_:Array = _loc2_.split(",");
         var _loc4_:Array = param1 == 9?HudMenuIconUtils.dungeon:HudMenuIconUtils.elite;
         if(_loc4_.length == 0)
         {
            return false;
         }
         if(_loc3_.length <= 2)
         {
            return true;
         }
         var _loc5_:String = _loc3_[2];
         var _loc6_:Array = _loc5_.split(":");
         if(_loc6_.length == 1)
         {
            return true;
         }
         var _loc7_:Array = _loc6_[1].split("|");
         for each(_loc8_ in _loc7_)
         {
            if(_loc4_.indexOf(_loc8_) > -1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function _infoRet(param1:CommandEvent) : void
      {
         var _loc2_:RequestDungeonListCommand = param1.target as RequestDungeonListCommand;
         _loc2_.removeEventListener(CommandEvent.FINISH,this._infoRet);
         this.render();
      }
      
      override public function get data() : Object
      {
         return super.data;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:* = 0;
         var _loc3_:RequestDungeonListCommand = null;
         if(param1 != null)
         {
            super.data = param1;
            if(this.selfData.conditionProtoHudNotify == 7 || this.selfData.conditionProtoHudNotify == 9)
            {
               if(HudMenuIconUtils.needRequestDugenInfo)
               {
                  HudMenuIconUtils.needRequestDugenInfo = false;
                  _loc2_ = this.data.conditionProtoHudNotify == 7?DungeonTypeDef.ELITE:DungeonTypeDef.NORMAL;
                  _loc3_ = new RequestDungeonListCommand(_loc2_);
                  _loc3_.addEventListener(CommandEvent.FINISH,this._infoRet);
                  _loc3_.call();
                  return;
               }
            }
            this.render();
         }
         else
         {
            this.destroyGetCardPackageLevelCommand();
         }
      }
      
      private function onClick(param1:TextEvent = null) : void
      {
         var _loc2_:HrefEventCommand = null;
         if(this.data && this.data.id == 97 && BoxManager.isShowingByName("guildBeast"))
         {
            this.dispatchEvent(new MouseEvent("achievedWayClick"));
            new OpenGuildBeastPanelCommand(OpenGuildBeastPanelCommand.TAB_CATCH).call();
            return;
         }
         if(HudMenuIconUtils.sceneType != 1 && HudMenuIconUtils.sceneType != 3)
         {
            GameTip.show("当前场景不可用");
            return;
         }
         if(param1.text == "sd")
         {
            this.showSaoDangUI(this.data.url);
         }
         else
         {
            if(this.data.conditionProtoHudNotify == 8)
            {
               _loc2_ = new HrefEventCommand(this.data.url == "openui,9,1" || this.data.url == "openui,9"?this.data.url:this.data.url + ":" + this.data.itemId);
            }
            else
            {
               _loc2_ = new HrefEventCommand(this.data.url);
            }
            _loc2_.call();
         }
         this.dispatchEvent(new MouseEvent("achievedWayClick"));
         ApplicationData.singleton.dispatchEvent(new Event("ItemAchieveWayTips_ItemClick"));
         if(this.data && this.data.url && (this.data.url as String).indexOf("goto") > -1)
         {
            ApplicationData.singleton.dispatchEvent(new Event("ItemAchieveWayTips_ItemClick_closeUI"));
         }
      }
      
      private function showSaoDangUI(param1:String) : void
      {
         var _loc5_:DungeonWipeoutExtraInfo = null;
         var _loc2_:Array = param1.split(":");
         var _loc3_:int = _loc2_[1];
         var _loc4_:DungeonInfoCFG = CFGDataLibs.getRowData(CFGDataEnum.ENUM_DungeonInfoCFG,_loc3_) as DungeonInfoCFG;
         if(_loc4_)
         {
            _loc5_ = new DungeonWipeoutExtraInfo();
            _loc5_.id = _loc4_.id;
            _loc5_.deltaHp = _loc4_.costHp;
            _loc5_.deltaTime = _loc4_.wipeOutNeedTime;
            _loc5_.name = _loc4_.name;
            new RequestUniversalWipeoutCommand(UniversalWipeoutTypeDef.DUNGEON,_loc5_).call();
         }
      }
      
      private function destroyGetCardPackageLevelCommand() : void
      {
         if(this.getCardPackageOpenLevelCommand)
         {
            this.getCardPackageOpenLevelCommand.removeEventListener(CommandEvent.FINISH,this.onGetCardPackageOpenLevelCommand);
            this.getCardPackageOpenLevelCommand.removeEventListener(CommandEvent.FAILD,this.onGetCardPackageOpenLevelCommand);
            this.getCardPackageOpenLevelCommand = null;
         }
      }
      
      public function dispose() : void
      {
         this.destroyGetCardPackageLevelCommand();
      }
      
      public function get guideTargetName() : String
      {
         if(this.selfData)
         {
            return "ItemAchievedWayRender" + this.selfData.id;
         }
         return "ItemAchievedWayRender";
      }
   }
}
