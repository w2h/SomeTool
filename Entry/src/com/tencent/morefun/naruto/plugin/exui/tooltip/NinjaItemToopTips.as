package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.NinjiaItemTooltipUI;
   import flash.display.MovieClip;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.TagIcon;
   import majorRole.model.TalentSkillManager;
   import majorRole.def.TalentSkillTypeDef;
   import ninja.model.data.NinjaInfo;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import flash.display.Bitmap;
   import com.tencent.morefun.naruto.plugin.ui.components.BitmapUint;
   import cfgData.dataStruct.NinjaSkillCFG;
   import majorRole.model.TalentSkillModel;
   import cfgData.dataStruct.SkillCFG;
   import ninja.model.data.NinjaSecondAwakeItemInfo;
   import flash.text.TextField;
   import def.NinjaAssetDef;
   import base.ApplicationData;
   import com.tencent.morefun.naruto.util.TimeUtils;
   import flash.utils.getTimer;
   import skill.config.SkillConfig;
   import flash.display.DisplayObject;
   import utils.PlayerNameUtil;
   import skill.config.NinjaSkillConfig;
   import skill.SkillAssetDef;
   import crew.def.NinjaNameColorDef;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Down_1;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Up_1;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Down_2;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Up_2;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Down_3;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Up_3;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Down_4;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Up_4;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Down_5;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.QualityBg_Up_5;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import com.tencent.morefun.naruto.plugin.ui.DigitItemUI;
   
   public class NinjaItemToopTips extends BaseTipsView
   {
      
      private static const MAX_SKILL_LEN:int = 6;
      
      private static const SPACE_X:int = 40;
      
      private static const SPACE_Y:int = 15;
      
      private static const NAME_SPACE_Y:int = 10;
      
      private static const DESCRIPTION_SPACE_Y:int = 15;
      
      private static const leftSpace:int = 8;
      
      private static const rightSpace:int = 10;
      
      private static const topSpage:int = 11;
      
      private static const downSpage:int = 11;
       
      protected var _nijiaui:NinjiaItemTooltipUI;
      
      protected var skillItemUIList:Array;
      
      private var tagIconMcArray:Array;
      
      protected var image1:Image;
      
      protected var image2:Image;
      
      protected var image3:Image;
      
      protected var image4:Image;
      
      protected var image5:Image;
      
      protected var image6:Image;
      
      protected var nijiaImage:Image;
      
      protected var qualityBgDown:Bitmap;
      
      protected var qualityBgUp:Bitmap;
      
      protected var _combatUI:BitmapUint;
      
      private var ninjaData:NinjaInfo;
      
      public function NinjaItemToopTips(param1:Class = null)
      {
         this.skillItemUIList = [];
         this.image1 = new Image();
         this.image2 = new Image();
         this.image3 = new Image();
         this.image4 = new Image();
         this.image5 = new Image();
         this.image6 = new Image();
         this.nijiaImage = new Image();
         this._combatUI = new BitmapUint(DigitItemUI,-6);
         super();
         this._nijiaui = new NinjiaItemTooltipUI();
         this._nijiaui.mouseEnabled = false;
         this._nijiaui.mouseChildren = false;
         this._nijiaui.cardtips.visible = false;
         this._nijiaui.tagiconmc.visible = false;
         this._nijiaui.shiyongText.visible = this._nijiaui.shiyongCdText.visible = false;
         var _loc2_:int = 1;
         while(_loc2_ <= MAX_SKILL_LEN)
         {
            this.skillItemUIList.push(this._nijiaui["skillitem" + _loc2_]);
            _loc2_++;
         }
         this._nijiaui.nameText.width = 220;
         this.resize();
      }
      
      private function setTagIcon(param1:Array) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:MovieClip = null;
         if(param1.length > 0)
         {
            this.tagIconMcArray = new Array();
            _loc2_ = 0;
            while(_loc2_ < param1.length)
            {
               _loc3_ = param1[_loc2_];
               _loc4_ = new TagIcon();
               _loc4_.gotoAndStop(_loc3_);
               _loc4_.x = this._nijiaui.tagiconmc.x + this._nijiaui.tagiconmc.width * _loc2_;
               _loc4_.y = this._nijiaui.tagiconmc.y;
               this._nijiaui.addChild(_loc4_);
               this.tagIconMcArray.push(_loc4_);
               _loc2_++;
            }
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:* = 0;
         if(this.ninjaData.talentTipsType == 0)
         {
            TalentSkillManager.instance.removeListener(TalentSkillTypeDef.DEFAULT,this.updateMajorTalent);
         }
         else
         {
            TalentSkillManager.instance.removeListener(this.ninjaData.talentTipsType,this.updateMajorTalent);
         }
         if(this.tagIconMcArray)
         {
            _loc1_ = 0;
            while(_loc1_ < this.tagIconMcArray.length)
            {
               this._nijiaui.removeChild(this.tagIconMcArray[_loc1_]);
               _loc1_++;
            }
            this.tagIconMcArray = null;
         }
         this.image1.dispose();
         this.image2.dispose();
         this.image3.dispose();
         this.image4.dispose();
         this.image5.dispose();
         this.image6.dispose();
         this.nijiaImage.dispose();
         this._nijiaui && this._nijiaui.parent && this._nijiaui.parent.removeChild(this._nijiaui);
         this._nijiaui = null;
         this._combatUI && this._combatUI.parent && this._combatUI.parent.removeChild(this._combatUI);
         this._combatUI = null;
         if(this.qualityBgDown)
         {
            if(this.qualityBgDown.parent)
            {
               this.qualityBgDown.parent.removeChild(this.qualityBgDown);
            }
            this.qualityBgDown.bitmapData.dispose();
            this.qualityBgDown.bitmapData = null;
            this.qualityBgDown = null;
         }
         if(this.qualityBgUp)
         {
            if(this.qualityBgUp.parent)
            {
               this.qualityBgUp.parent.removeChild(this.qualityBgUp);
            }
            this.qualityBgUp.bitmapData.dispose();
            this.qualityBgUp.bitmapData = null;
            this.qualityBgUp = null;
         }
         this.skillItemUIList = null;
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is NinjaInfo))
         {
            return;
         }
         var _loc2_:NinjaInfo = param1 as NinjaInfo;
         addChild(this._nijiaui);
         this.showNinjiaSkill(_loc2_);
      }
      
      protected function showNinjiaSkill(param1:NinjaInfo) : void
      {
         var _loc2_:NinjaSkillCFG = null;
         var _loc4_:* = 0;
         var _loc6_:TalentSkillModel = null;
         var _loc7_:SkillCFG = null;
         var _loc8_:NinjaSecondAwakeItemInfo = null;
         var _loc9_:TextField = null;
         var _loc3_:int = 1;
         this.ninjaData = param1 as NinjaInfo;
         if(this.ninjaData == null)
         {
            return;
         }
         var _loc5_:uint = int(param1.starLevel + 1);
         this.nijiaImage.load(NinjaAssetDef.getAsset(NinjaAssetDef.HEAD_WIDE,this.ninjaData.id));
         this._nijiaui.ImagePicMc.addChild(this.nijiaImage);
         this.setTagIcon(this.ninjaData.cfg.showPropertys);
         this._combatUI.value = 0;
         this._combatUI.value = this.ninjaData.combat;
         this._nijiaui.shiyongText.visible = this._nijiaui.shiyongCdText.visible = false;
         if(this.ninjaData.combat > 0 && !ApplicationData.singleton.isInArena)
         {
            this._nijiaui.addChild(this._combatUI);
            this._nijiaui.combatBg.visible = true;
         }
         else
         {
            this._nijiaui.combatBg.visible = false;
            if(param1.tryOutLeftCd > 0)
            {
               this._nijiaui.shiyongText.visible = this._nijiaui.shiyongCdText.visible = true;
               if(param1.vipFlag == 1)
               {
                  this._nijiaui.shiyongText.text = "上忍勋章用户专用试用忍者。";
               }
               else
               {
                  this._nijiaui.shiyongText.text = "试用忍者将在试用时间结束后消失。";
               }
               this._nijiaui.shiyongCdText.htmlText = "试用剩余时间：<font color=\'#ffffff\'>" + TimeUtils.getStandardTimeStr7((param1.tryOutLeftCd - getTimer()) / 1000) + "</font>";
            }
         }
         this._nijiaui.combatBg.x = 260;
         this._combatUI.x = 280;
         this._combatUI.y = 80;
         this._nijiaui.propertyTag.gotoAndStop(this.ninjaData.cfg.property);
         if(_loc5_ > 0)
         {
            this._nijiaui.starLabel.visible = true;
            this._nijiaui.starLabel.gotoAndStop(_loc5_);
         }
         else
         {
            this._nijiaui.starLabel.visible = false;
         }
         this._nijiaui.mc_source.visible = false;
         if(this.ninjaData.isOtherPlayer)
         {
            _loc2_ = this.ninjaData.otherPlayerSkillCfg;
            _loc7_ = SkillConfig.instance.getSkill(_loc2_.specials[0]);
            if(_loc7_)
            {
               if(this._nijiaui["skillitem" + _loc3_])
               {
                  if(_loc7_.isImmediately)
                  {
                     this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
                  }
                  else
                  {
                     this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
                  }
                  this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(1);
                  this.setSkillIcon(_loc7_.id,_loc3_);
                  this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
                  this._nijiaui["skillitem" + _loc3_].visible = true;
                  this.setskilltype(_loc7_.type1,_loc3_);
                  _loc3_++;
               }
            }
            _loc4_ = 0;
            while(_loc4_ < _loc2_.normals.length)
            {
               _loc7_ = SkillConfig.instance.getSkill(_loc2_.normals[_loc4_]);
               if(_loc7_ && _loc7_.showIcon)
               {
                  if(this._nijiaui["skillitem" + _loc3_])
                  {
                     if(_loc7_.isImmediately)
                     {
                        this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
                     }
                     else
                     {
                        this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
                     }
                     this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(2);
                     this.setSkillIcon(_loc7_.id,_loc3_);
                     this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
                     this._nijiaui["skillitem" + _loc3_].visible = true;
                     this.setskilltype(_loc7_.type1,_loc3_);
                     _loc3_++;
                  }
               }
               _loc4_++;
            }
            _loc4_ = 0;
            while(_loc4_ < _loc2_.skills.length)
            {
               _loc7_ = SkillConfig.instance.getSkill(_loc2_.skills[_loc4_]);
               if(!(!_loc7_ || !_loc7_.showIcon))
               {
                  if(_loc7_ && this._nijiaui["skillitem" + _loc3_])
                  {
                     if(_loc7_.isImmediately)
                     {
                        this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
                     }
                     else
                     {
                        this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
                     }
                     this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(3);
                     this.setSkillIcon(_loc7_.id,_loc3_);
                     this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
                     this._nijiaui["skillitem" + _loc3_].visible = true;
                     this.setSkillItem(_loc7_.type,_loc3_);
                     this.setskilltype(_loc7_.type1,_loc3_);
                     _loc3_++;
                  }
               }
               _loc4_++;
            }
            if(this.ninjaData.cfg)
            {
               this.setnameText(PlayerNameUtil.standardlizeName(this.ninjaData.otherPlayerSvrId,this.ninjaData.otherPlayerName),this.ninjaData.cfg.title,this.ninjaData.levelUpgrade);
            }
            this.updateSkillItemStage(_loc3_ - 1);
         }
         else if(this.ninjaData.sequence == 0)
         {
            if(this.ninjaData.talentTipsType == 0 || this.ninjaData.talentTipsType == TalentSkillTypeDef.DEFAULT)
            {
               _loc6_ = TalentSkillManager.instance.getMajorRoleCurrentSkillAndListen(this.updateMajorTalent);
            }
            else
            {
               _loc6_ = TalentSkillManager.instance.getTalentAndListen(this.ninjaData.talentTipsType,this.updateMajorTalent)[0];
            }
            _loc7_ = SkillConfig.instance.getSkill(_loc6_.special);
            if(_loc7_ && this._nijiaui["skillitem" + _loc3_])
            {
               if(_loc7_.isImmediately)
               {
                  this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
               }
               else
               {
                  this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
               }
               this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(1);
               this.setSkillIcon(_loc7_.id,_loc3_);
               this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
               this._nijiaui["skillitem" + _loc3_].visible = true;
               this.setskilltype(_loc7_.type1,_loc3_);
               _loc3_++;
            }
            _loc7_ = SkillConfig.instance.getSkill(_loc6_.normal);
            if(_loc7_ && this._nijiaui["skillitem" + _loc3_])
            {
               if(_loc7_.isImmediately)
               {
                  this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
               }
               else
               {
                  this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
               }
               this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(2);
               this.setSkillIcon(_loc7_.id,_loc3_);
               this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
               this._nijiaui["skillitem" + _loc3_].visible = true;
               this.setskilltype(_loc7_.type1,_loc3_);
               _loc3_++;
            }
            if(_loc6_.skills != null)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc6_.skills.length)
               {
                  _loc7_ = SkillConfig.instance.getSkill(_loc6_.skills[_loc4_]);
                  if(!(!_loc7_ || !_loc7_.showIcon))
                  {
                     if(_loc7_ && this._nijiaui["skillitem" + _loc3_])
                     {
                        if(_loc7_.isImmediately)
                        {
                           this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
                        }
                        else
                        {
                           this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
                        }
                        this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(3);
                        this.setSkillIcon(_loc7_.id,_loc3_);
                        this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
                        this._nijiaui["skillitem" + _loc3_].visible = true;
                        this.setSkillItem(_loc7_.type,_loc3_);
                        this.setskilltype(_loc7_.type1,_loc3_);
                        _loc3_++;
                     }
                  }
                  _loc4_++;
               }
            }
            _loc7_ = SkillConfig.instance.getSkill(_loc6_.beast);
            if(_loc7_ && this._nijiaui["skillitem" + _loc3_])
            {
               this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
               this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(4);
               this.setSkillIcon(_loc7_.id,_loc3_);
               this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
               this._nijiaui["skillitem" + _loc3_].visible = true;
               this.setskilltype(_loc7_.type1,_loc3_);
               _loc3_++;
            }
            if(this.ninjaData.cfg)
            {
               this.setnameText(PlayerNameUtil.standardlizeName(ApplicationData.singleton.selfPlayerKey,ApplicationData.singleton.selfInfo.name),this.ninjaData.cfg.title,this.ninjaData.levelUpgrade);
            }
            this.updateSkillItemStage(_loc3_ - 1);
         }
         else
         {
            if(this.ninjaData.secondAwakenItemInfos && this.ninjaData.secondAwakenItemInfos.length > 0)
            {
               _loc4_ = 0;
               while(_loc4_ < this.ninjaData.secondAwakenItemInfos.length)
               {
                  _loc8_ = this.ninjaData.secondAwakenItemInfos[_loc4_];
                  _loc7_ = SkillConfig.instance.getSkill(_loc8_.curSkillId);
                  if(!(!_loc7_ || !_loc7_.showIcon))
                  {
                     if(_loc7_.type == 2)
                     {
                        if(this._nijiaui["skillitem" + _loc3_])
                        {
                           if(_loc7_.isImmediately)
                           {
                              this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
                           }
                           else
                           {
                              this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
                           }
                           this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(1);
                           this.setSkillIcon(_loc7_.id,_loc3_,_loc8_);
                           this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
                           this._nijiaui["skillitem" + _loc3_].visible = true;
                           this.setskilltype(_loc7_.type1,_loc3_);
                           _loc3_++;
                        }
                     }
                     else if(_loc7_.type == 0)
                     {
                        if(this._nijiaui["skillitem" + _loc3_])
                        {
                           if(_loc7_.isImmediately)
                           {
                              this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
                           }
                           else
                           {
                              this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
                           }
                           this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(2);
                           this.setSkillIcon(_loc7_.id,_loc3_,_loc8_);
                           this._nijiaui["skillitem" + _loc3_].gems_icon_0.addChild(this["image" + _loc3_] as DisplayObject);
                           this._nijiaui["skillitem" + _loc3_].visible = true;
                           this.setskilltype(_loc7_.type1,_loc3_);
                           _loc3_++;
                        }
                     }
                     else if(this._nijiaui["skillitem" + _loc3_])
                     {
                        if(_loc7_.isImmediately)
                        {
                           this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc7_.desc;
                        }
                        else
                        {
                           this._nijiaui["skillitem" + _loc3_].descriptionText.htmlText = "<b>" + _loc7_.name + "：</b>" + _loc7_.desc;
                        }
                        this._nijiaui["skillitem" + _loc3_].skilltype.gotoAndStop(3);
                        this.setSkillIcon(_loc7_.id,_loc3_,_loc8_);
                        this.setSkillItem(_loc7_.type,_loc3_);
                        this.setskilltype(_loc7_.type1,_loc3_);
                        _loc3_++;
                     }
                  }
                  _loc4_++;
               }
            }
            else
            {
               _loc3_ = this.setNormalTip(_loc3_);
               if(_loc3_ == 0)
               {
                  return;
               }
            }
            if(this.ninjaData.isRushBuy)
            {
               this.setnameText(this.ninjaData.cfg.name,this.ninjaData.cfg.title,this.ninjaData.levelUpgrade);
               if(this.ninjaData.originInfo)
               {
                  this._nijiaui.mc_source.visible = true;
                  _loc9_ = this._nijiaui.mc_source.sourceTF as TextField;
                  _loc9_.htmlText = "<font color=\'#cccccc\'>" + this.ninjaData.originInfo + "</font>";
                  this._nijiaui.mc_source.x = this._nijiaui.bg.width - (_loc9_.x + _loc9_.textWidth) - 20;
               }
            }
            else if(this.ninjaData.cfg)
            {
               this.setnameText(this.ninjaData.cfg.name,this.ninjaData.cfg.title,this.ninjaData.levelUpgrade);
            }
            this.updateSkillItemStage(_loc3_ - 1);
         }
         if(this.qualityBgDown)
         {
            if(!this._nijiaui.contains(this.qualityBgDown))
            {
               this.qualityBgDown.smoothing = true;
               this._nijiaui.addChildAt(this.qualityBgDown,1);
            }
         }
         if(this.qualityBgUp)
         {
            if(!this._nijiaui.contains(this.qualityBgUp))
            {
               this.qualityBgUp.smoothing = true;
               this._nijiaui.addChildAt(this.qualityBgUp,1);
            }
         }
         this.setHeight();
         this.resize();
      }
      
      public function updateMajorTalent() : void
      {
         var _loc2_:SkillCFG = null;
         var _loc3_:TalentSkillModel = null;
         var _loc4_:* = 0;
         if(!this._nijiaui)
         {
            return;
         }
         var _loc1_:int = 1;
         if(this.ninjaData.talentTipsType == 0)
         {
            _loc3_ = TalentSkillManager.instance.getMajorRoleCurrentSkillAndListen(this.updateMajorTalent);
         }
         else
         {
            _loc3_ = TalentSkillManager.instance.getTalentAndListen(this.ninjaData.talentTipsType,this.updateMajorTalent)[0];
         }
         _loc2_ = SkillConfig.instance.getSkill(_loc3_.special);
         if(_loc2_ && this._nijiaui["skillitem" + _loc1_])
         {
            if(_loc2_.isImmediately)
            {
               this._nijiaui["skillitem" + _loc1_].descriptionText.htmlText = "<b>" + _loc2_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc2_.desc;
            }
            else
            {
               this._nijiaui["skillitem" + _loc1_].descriptionText.htmlText = "<b>" + _loc2_.name + "：</b>" + _loc2_.desc;
            }
            this._nijiaui["skillitem" + _loc1_].skilltype.gotoAndStop(1);
            this.setSkillIcon(_loc2_.id,_loc1_);
            this._nijiaui["skillitem" + _loc1_].gems_icon_0.addChild(this["image" + _loc1_] as DisplayObject);
            this._nijiaui["skillitem" + _loc1_].visible = true;
            this.setskilltype(_loc2_.type1,_loc1_);
            _loc1_++;
         }
         _loc2_ = SkillConfig.instance.getSkill(_loc3_.normal);
         if(_loc2_ && this._nijiaui["skillitem" + _loc1_])
         {
            if(_loc2_.isImmediately)
            {
               this._nijiaui["skillitem" + _loc1_].descriptionText.htmlText = "<b>" + _loc2_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc2_.desc;
            }
            else
            {
               this._nijiaui["skillitem" + _loc1_].descriptionText.htmlText = "<b>" + _loc2_.name + "：</b>" + _loc2_.desc;
            }
            this._nijiaui["skillitem" + _loc1_].skilltype.gotoAndStop(2);
            this.setSkillIcon(_loc2_.id,_loc1_);
            this._nijiaui["skillitem" + _loc1_].gems_icon_0.addChild(this["image" + _loc1_] as DisplayObject);
            this._nijiaui["skillitem" + _loc1_].visible = true;
            this.setskilltype(_loc2_.type1,_loc1_);
            _loc1_++;
         }
         if(_loc3_.skills != null)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.skills.length)
            {
               _loc2_ = SkillConfig.instance.getSkill(_loc3_.skills[_loc4_]);
               if(!(!_loc2_ || !_loc2_.showIcon))
               {
                  if(_loc2_ && this._nijiaui["skillitem" + _loc1_])
                  {
                     if(_loc2_.isImmediately)
                     {
                        this._nijiaui["skillitem" + _loc1_].descriptionText.htmlText = "<b>" + _loc2_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc2_.desc;
                     }
                     else
                     {
                        this._nijiaui["skillitem" + _loc1_].descriptionText.htmlText = "<b>" + _loc2_.name + "：</b>" + _loc2_.desc;
                     }
                     this._nijiaui["skillitem" + _loc1_].skilltype.gotoAndStop(3);
                     this.setSkillIcon(_loc2_.id,_loc1_);
                     this._nijiaui["skillitem" + _loc1_].gems_icon_0.addChild(this["image" + _loc1_] as DisplayObject);
                     this._nijiaui["skillitem" + _loc1_].visible = true;
                     this.setSkillItem(_loc2_.type,_loc1_);
                     this.setskilltype(_loc2_.type1,_loc1_);
                     _loc1_++;
                  }
               }
               _loc4_++;
            }
         }
         _loc2_ = SkillConfig.instance.getSkill(_loc3_.beast);
         if(_loc2_ && this._nijiaui["skillitem" + _loc1_])
         {
            this._nijiaui["skillitem" + _loc1_].descriptionText.htmlText = "<b>" + _loc2_.name + "：</b>" + _loc2_.desc;
            this._nijiaui["skillitem" + _loc1_].skilltype.gotoAndStop(4);
            this.setSkillIcon(_loc2_.id,_loc1_);
            this._nijiaui["skillitem" + _loc1_].gems_icon_0.addChild(this["image" + _loc1_] as DisplayObject);
            this._nijiaui["skillitem" + _loc1_].visible = true;
            this.setskilltype(_loc2_.type1,_loc1_);
            _loc1_++;
         }
         if(this.ninjaData.cfg)
         {
            this.setnameText(PlayerNameUtil.standardlizeName(ApplicationData.singleton.selfPlayerKey,ApplicationData.singleton.selfInfo.name),this.ninjaData.cfg.title,this.ninjaData.levelUpgrade);
         }
         this.updateSkillItemStage(_loc1_ - 1);
         this.setHeight();
         this.resize();
      }
      
      private function setNormalTip(param1:int) : int
      {
         var _loc2_:SkillCFG = null;
         var _loc3_:NinjaSkillCFG = NinjaSkillConfig.instance.getNinjaSkillCfg(this.ninjaData.id);
         if(_loc3_ == null)
         {
            return 0;
         }
         _loc2_ = SkillConfig.instance.getSkill(_loc3_.specials[0]);
         if(_loc2_)
         {
            if(this._nijiaui["skillitem" + param1])
            {
               if(_loc2_.isImmediately)
               {
                  this._nijiaui["skillitem" + param1].descriptionText.htmlText = "<b>" + _loc2_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc2_.desc;
               }
               else
               {
                  this._nijiaui["skillitem" + param1].descriptionText.htmlText = "<b>" + _loc2_.name + "：</b>" + _loc2_.desc;
               }
               this._nijiaui["skillitem" + param1].skilltype.gotoAndStop(1);
               this.setSkillIcon(_loc2_.id,param1);
               this._nijiaui["skillitem" + param1].gems_icon_0.addChild(this["image" + param1] as DisplayObject);
               this._nijiaui["skillitem" + param1].visible = true;
               this.setskilltype(_loc2_.type1,param1);
               param1++;
            }
         }
         _loc2_ = SkillConfig.instance.getSkill(_loc3_.normals[2]);
         if(_loc2_)
         {
            if(this._nijiaui["skillitem" + param1])
            {
               if(_loc2_.isImmediately)
               {
                  this._nijiaui["skillitem" + param1].descriptionText.htmlText = "<b>" + _loc2_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc2_.desc;
               }
               else
               {
                  this._nijiaui["skillitem" + param1].descriptionText.htmlText = "<b>" + _loc2_.name + "：</b>" + _loc2_.desc;
               }
               this._nijiaui["skillitem" + param1].skilltype.gotoAndStop(2);
               this.setSkillIcon(_loc2_.id,param1);
               this._nijiaui["skillitem" + param1].gems_icon_0.addChild(this["image" + param1] as DisplayObject);
               this._nijiaui["skillitem" + param1].visible = true;
               this.setskilltype(_loc2_.type1,param1);
               param1++;
            }
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.skills.length)
         {
            _loc2_ = SkillConfig.instance.getSkill(_loc3_.skills[_loc4_]);
            if(!(!_loc2_ || !_loc2_.showIcon))
            {
               if(this._nijiaui["skillitem" + param1])
               {
                  if(_loc2_.isImmediately)
                  {
                     this._nijiaui["skillitem" + param1].descriptionText.htmlText = "<b>" + _loc2_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc2_.desc;
                  }
                  else
                  {
                     this._nijiaui["skillitem" + param1].descriptionText.htmlText = "<b>" + _loc2_.name + "：</b>" + _loc2_.desc;
                  }
                  this._nijiaui["skillitem" + param1].skilltype.gotoAndStop(3);
                  this.setSkillIcon(_loc2_.id,param1);
                  this.setSkillItem(_loc2_.type,param1);
                  this.setskilltype(_loc2_.type1,param1);
                  param1++;
               }
            }
            _loc4_++;
         }
         return param1;
      }
      
      protected function setSkillIcon(param1:int, param2:int, param3:NinjaSecondAwakeItemInfo = null) : void
      {
         this["image" + param2].dispose();
         this["image" + param2].load(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,param1));
         this["image" + param2].x = 4;
         this["image" + param2].y = 4;
         this._nijiaui["skillitem" + param2].skill_tupo1.visible = this._nijiaui["skillitem" + param2].skill_tupo2.visible = false;
         if(param3 && param3.allSkillId)
         {
            this._nijiaui["skillitem" + param2].skill_tupo1.visible = param3.allSkillId.indexOf(param3.curSkillId) == 1;
            this._nijiaui["skillitem" + param2].skill_tupo2.visible = param3.allSkillId.indexOf(param3.curSkillId) == 2;
         }
      }
      
      protected function setSkillItem(param1:int, param2:int) : void
      {
         this._nijiaui["skillitem" + param2].gems_icon_0.addChild(this["image" + param2] as DisplayObject);
         this._nijiaui["skillitem" + param2].visible = true;
         if(param1 == 3 || param1 == 4)
         {
            this._nijiaui["skillitem" + param2].skilltype.gotoAndStop(3);
         }
         else if(param1 == 1)
         {
            this._nijiaui["skillitem" + param2].skilltype.gotoAndStop(4);
         }
         else if(param1 == 5)
         {
            this._nijiaui["skillitem" + param2].skilltype.gotoAndStop(4);
         }
      }
      
      protected function setskilltype(param1:Array, param2:int) : void
      {
         if(param1.length == 0)
         {
            this._nijiaui["skillitem" + param2].typeMc1.visible = false;
            this._nijiaui["skillitem" + param2].typeMc2.visible = false;
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(param1.length == 2)
            {
               this._nijiaui["skillitem" + param2].typeMc1.visible = true;
               this._nijiaui["skillitem" + param2].typeMc2.visible = true;
            }
            else
            {
               this._nijiaui["skillitem" + param2].typeMc1.visible = true;
               this._nijiaui["skillitem" + param2].typeMc2.visible = false;
            }
            this._nijiaui["skillitem" + param2]["typeMc" + (_loc3_ + 1)].gotoAndStop("label" + param1[_loc3_]);
            _loc3_++;
         }
      }
      
      protected function setnameText(param1:String, param2:String, param3:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function updateSkillItemStage(param1:int) : void
      {
         var _loc2_:* = 0;
         _loc2_ = 0;
         while(_loc2_ < MAX_SKILL_LEN)
         {
            if(this._nijiaui.contains(this.skillItemUIList[_loc2_]))
            {
               this._nijiaui.removeChild(this.skillItemUIList[_loc2_]);
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1)
         {
            this._nijiaui.addChild(this.skillItemUIList[_loc2_]);
            _loc2_++;
         }
      }
      
      protected function setHeight() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:int = 1;
         while(_loc2_ < MAX_SKILL_LEN + 1)
         {
            if(this._nijiaui["skillitem" + _loc2_].parent)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         this._nijiaui.bg.height = 125 + _loc1_ * 55;
         this._nijiaui.bg.x = 0;
         this._nijiaui.bg.y = 28;
      }
      
      protected function setQualityBG(param1:Bitmap, param2:Class) : Bitmap
      {
         if(param1 == null)
         {
            var param1:Bitmap = new Bitmap();
         }
         if(param1.bitmapData == null || !param1.bitmapData is param2)
         {
            param1.bitmapData = new param2();
         }
         return param1;
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
         if(param2 + this._nijiaui.bg.height > LayoutManager.stageHeight)
         {
            if(this._nijiaui.bg.height + 25 <= LayoutManager.stageHeight)
            {
               this.y = LayoutManager.stageHeight - this._nijiaui.bg.height - 25;
            }
            else
            {
               this.y = param2 - this._nijiaui.bg.height - 25;
            }
         }
         else
         {
            this.y = param2 - 25;
         }
      }
      
      override protected function resize() : void
      {
         if(this.qualityBgDown)
         {
            this.qualityBgDown.x = this._nijiaui.bg.width - this.qualityBgDown.width - 9;
            this.qualityBgDown.y = this._nijiaui.bg.height - this.qualityBgDown.height + 16;
         }
         if(this.qualityBgUp)
         {
            this.qualityBgUp.x = 8;
            this.qualityBgUp.y = 40;
         }
         this._nijiaui.texture_right.x = this._nijiaui.bg.width - this._nijiaui.texture_right.width - 10;
         this._nijiaui.texture_right.y = this._nijiaui.bg.height - this._nijiaui.texture_right.height + 20;
      }
   }
}
