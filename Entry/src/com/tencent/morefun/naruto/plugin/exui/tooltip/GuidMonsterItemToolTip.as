package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.NinjiaItemTooltipUI;
   import flash.text.TextField;
   import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
   import serverProto.guild.ProtoGuildBeastInfo;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import flash.display.Bitmap;
   import cfgData.dataStruct.NinjaSkillCFG;
   import cfgData.dataStruct.SkillCFG;
   import def.NinjaAssetDef;
   import skill.config.NinjaSkillConfig;
   import skill.config.SkillConfig;
   import flash.display.DisplayObject;
   import guildBeast.def.GuildBeastColorDef;
   import user.data.NinjaInfoConfig;
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
   import skill.SkillAssetDef;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import flash.text.TextFieldAutoSize;
   import flash.filters.GlowFilter;
   
   public class GuidMonsterItemToolTip extends BaseTipsView
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
      
      protected var guildProp:TextField;
      
      protected var battleProp:TextField;
      
      protected var image1:Image;
      
      protected var image2:Image;
      
      protected var image3:Image;
      
      protected var image4:Image;
      
      protected var image5:Image;
      
      protected var image6:Image;
      
      protected var nijiaImage:Image;
      
      protected var qualityBgDown:Bitmap;
      
      protected var qualityBgUp:Bitmap;
      
      private var ninjaData:ProtoGuildBeastInfo;
      
      public function GuidMonsterItemToolTip(param1:Class = null)
      {
         this.skillItemUIList = [];
         this.image1 = new Image();
         this.image2 = new Image();
         this.image3 = new Image();
         this.image4 = new Image();
         this.image5 = new Image();
         this.image6 = new Image();
         this.nijiaImage = new Image();
         super();
         this._nijiaui = new NinjiaItemTooltipUI();
         this._nijiaui.mouseEnabled = false;
         this._nijiaui.mouseChildren = false;
         this._nijiaui.cardtips.visible = false;
         this._nijiaui.tagiconmc.visible = false;
         this.guildProp = new TextField();
         this.guildProp.autoSize = TextFieldAutoSize.NONE;
         this.guildProp.width = 200;
         this.guildProp.filters = [new GlowFilter(0,1,5,5,4)];
         this.battleProp = new TextField();
         this.battleProp.autoSize = TextFieldAutoSize.NONE;
         this.battleProp.width = 200;
         this.battleProp.filters = [new GlowFilter(0,1,5,5,4)];
         this._nijiaui.addChild(this.guildProp);
         this._nijiaui.addChild(this.battleProp);
         this.guildProp.x = this.battleProp.x = 240;
         this.guildProp.y = 50;
         this.battleProp.y = 75;
         this._nijiaui.shiyongText.visible = this._nijiaui.shiyongCdText.visible = false;
         var _loc2_:int = 1;
         while(_loc2_ <= MAX_SKILL_LEN)
         {
            this.skillItemUIList.push(this._nijiaui["skillitem" + _loc2_]);
            _loc2_++;
         }
         this._nijiaui.nameText.width = 260;
         this.resize();
      }
      
      override public function destroy() : void
      {
         this.image1.dispose();
         this.image2.dispose();
         this.image3.dispose();
         this.image4.dispose();
         this.image5.dispose();
         this.image6.dispose();
         this.nijiaImage.dispose();
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
         this._nijiaui && this._nijiaui.parent && this._nijiaui.parent.removeChild(this._nijiaui);
         DisplayUtils.clear(this._nijiaui);
         this._nijiaui = null;
         this.skillItemUIList = null;
         this.guildProp = null;
         this.battleProp = null;
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is ProtoGuildBeastInfo))
         {
            return;
         }
         var _loc2_:ProtoGuildBeastInfo = param1 as ProtoGuildBeastInfo;
         addChild(this._nijiaui);
         this.showNinjiaSkill(_loc2_);
         this.guildProp.htmlText = "<b><font size=\'14\' color=\'#e9e499\' face=\'simsun\'>属性加成 </font>" + "<b><font size=\'14\' color=\'#ffffff\' face=\'simsun\'>" + _loc2_.additionPerchent + "%</font></b>";
         this.battleProp.htmlText = "<b><font size=\'14\' color=\'#e9e499\' face=\'simsun\'>出战属性 </font>" + "<b><font size=\'14\' color=\'#ffffff\' face=\'simsun\'>" + _loc2_.chuzhanPercent + "%</font></b>";
      }
      
      protected function showNinjiaSkill(param1:ProtoGuildBeastInfo) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      protected function setSkillIcon(param1:int, param2:int) : void
      {
         this["image" + param2].dispose();
         this["image" + param2].load(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,param1));
         this["image" + param2].x = 4;
         this["image" + param2].y = 4;
         this._nijiaui["skillitem" + param2].skill_tupo1.visible = this._nijiaui["skillitem" + param2].skill_tupo2.visible = false;
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
