package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.CardItemTooltipUI;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.NinjiaItemTooltipUI;
   import flash.display.MovieClip;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.TagIcon;
   import bag.data.CardItemData;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import flash.display.Bitmap;
   import com.tencent.morefun.naruto.plugin.ui.components.BitmapUint;
   import bag.data.ItemData;
   import cfgData.dataStruct.SkillCFG;
   import cfgData.dataStruct.NinjaInfoCFG;
   import ninja.command.RequestNinjaListCommand;
   import skill.config.NinjaSkillConfig;
   import cfgData.dataStruct.NinjaSkillCFG;
   import user.data.NinjaInfoConfig;
   import ninja.def.NinjaListTypeDef;
   import com.tencent.morefun.framework.base.CommandEvent;
   import def.NinjaAssetDef;
   import skill.config.SkillConfig;
   import skill.SkillAssetDef;
   import flash.display.DisplayObject;
   import ninja.model.data.NinjaInfo;
   import bag.utils.BagUtils;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import com.tencent.morefun.naruto.plugin.ui.DigitItemUI;
   import flash.text.TextFormatAlign;
   
   public class CardItemTooltip extends BaseTipsView
   {
      
      private static const MAX_SKILL_LEN:int = 5;
      
      protected static const SPACE_X:int = 30;
      
      protected static const SPACE_Y:int = 25;
      
      protected static const NAME_SPACE_Y:int = 10;
      
      protected static const DESCRIPTION_SPACE_Y:int = 15;
      
      protected static var ninjareqed:Boolean;
      
      protected static const leftSpace:int = 8;
      
      protected static const rightSpace:int = 10;
      
      protected static const topSpage:int = 11;
      
      protected static const downSpage:int = 11;
       
      protected var _ui:CardItemTooltipUI;
      
      protected var _lineY:int;
      
      protected var _nijiaui:NinjiaItemTooltipUI;
      
      private var skillItemUIList:Array;
      
      private var tagIconMcArray:Array;
      
      protected var image1:Image;
      
      protected var image2:Image;
      
      protected var image3:Image;
      
      protected var image4:Image;
      
      protected var image5:Image;
      
      protected var nijiaImage:Image;
      
      protected var qualityBgDown:Bitmap;
      
      protected var qualityBgUp:Bitmap;
      
      protected var _combatUI:BitmapUint;
      
      protected var itemData:CardItemData;
      
      public function CardItemTooltip(param1:Class = null)
      {
         this.skillItemUIList = [];
         this.image1 = new Image();
         this.image2 = new Image();
         this.image3 = new Image();
         this.image4 = new Image();
         this.image5 = new Image();
         this.nijiaImage = new Image();
         this._combatUI = new BitmapUint(DigitItemUI,-6);
         super();
         this._ui = new CardItemTooltipUI();
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         this._ui.descriptionText.autoSize = TextFormatAlign.LEFT;
         this._nijiaui = new NinjiaItemTooltipUI();
         this._nijiaui.mouseEnabled = false;
         this._nijiaui.mouseChildren = false;
         this._nijiaui.combatBg.visible = false;
         this._nijiaui.mc_source.visible = false;
         this._nijiaui.tagiconmc.visible = false;
         this._nijiaui.shiyongText.visible = this._nijiaui.shiyongCdText.visible = false;
         this._nijiaui.skillitem6.visible = false;
         var _loc2_:int = 1;
         while(_loc2_ <= MAX_SKILL_LEN)
         {
            this.skillItemUIList.push(this._nijiaui["skillitem" + _loc2_]);
            _loc2_++;
         }
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
         this._nijiaui && this._nijiaui.parent && this._nijiaui.parent.removeChild(this._nijiaui);
         this._nijiaui = null;
         this._ui && this._ui.parent && this._ui.parent.removeChild(this._ui);
         this._ui = null;
         this.image1.dispose();
         this.image1 = null;
         this.image2.dispose();
         this.image2 = null;
         this.image3.dispose();
         this.image3 = null;
         this.image4.dispose();
         this.image4 = null;
         this.image5.dispose();
         this.image5 = null;
         this.nijiaImage.dispose();
         this.nijiaImage = null;
         super.destroy();
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is CardItemData))
         {
            return;
         }
         var _loc2_:CardItemData = param1 as CardItemData;
         if(_loc2_.isNinjable && _loc2_.id != 20400125 || _loc2_.isFragment && _loc2_.id != 20400125)
         {
            if(this.contains(this._ui))
            {
               removeChild(this._ui);
            }
            addChild(this._nijiaui);
            this.showNinjiaSkill(_loc2_);
            this.setHeight();
            this._resize();
         }
         else if(!_loc2_.isNinjable || _loc2_.id == 20400125)
         {
            if(this.contains(this._nijiaui))
            {
               removeChild(this._nijiaui);
            }
            addChild(this._ui);
            if(_loc2_.id == 20400125)
            {
               _loc2_.name = "主角碎片";
            }
            this.showName(_loc2_);
            this.showDescription(_loc2_);
            this.resize();
         }
      }
      
      protected function showNinjiaSkill(param1:ItemData) : void
      {
         var _loc4_:* = 0;
         var _loc5_:SkillCFG = null;
         var _loc6_:NinjaInfoCFG = null;
         var _loc7_:CardItemData = null;
         var _loc8_:RequestNinjaListCommand = null;
         this.itemData = param1 as CardItemData;
         var _loc2_:int = 1;
         var _loc3_:NinjaSkillCFG = NinjaSkillConfig.instance.getNinjaSkillCfg(this.itemData.ninjaId);
         if(_loc3_ == null)
         {
            return;
         }
         this._nijiaui.starLabel.visible = false;
         if(param1 is CardItemData)
         {
            _loc7_ = param1 as CardItemData;
            this.setTagIcon(NinjaInfoConfig.getNinjaCfgInfo(_loc7_.ninjaId).showPropertys);
            if(!ninjareqed)
            {
               _loc8_ = new RequestNinjaListCommand(NinjaListTypeDef.ALL,true);
               ninjareqed = true;
            }
            else
            {
               _loc8_ = new RequestNinjaListCommand(NinjaListTypeDef.ALL,false);
            }
            _loc8_.addEventListener(CommandEvent.FINISH,this.requestNinjaListCommandFinishHandler);
            _loc8_.addEventListener(CommandEvent.FAILD,this.requestNinjaListCommandFinishHandler);
            _loc8_.call();
            _loc6_ = NinjaInfoConfig.getNinjaCfgInfo(_loc7_.ninjaId);
            this._nijiaui.propertyTag.gotoAndStop(_loc6_.property);
         }
         else
         {
            this._nijiaui.cardtips.txt.text = param1.description;
         }
         this._nijiaui.nameText.htmlText = "<b><font color=\'#ffffff\'>" + this.itemData.name + this.itemData.title + "碎片</font></b>";
         this.nijiaImage.load(NinjaAssetDef.getAsset(NinjaAssetDef.HEAD_WIDE,this.itemData.ninjaId));
         this._nijiaui.ImagePicMc.addChild(this.nijiaImage);
         _loc4_ = 1;
         while(_loc4_ < 6)
         {
            this._nijiaui["skillitem" + _loc4_].visible = false;
            _loc4_++;
         }
         _loc5_ = SkillConfig.instance.getSkill(_loc3_.specials[0]);
         if(_loc5_ == null)
         {
            return;
         }
         if(this._nijiaui["skillitem" + _loc2_])
         {
            if(_loc5_.isImmediately)
            {
               this._nijiaui["skillitem" + _loc2_].descriptionText.htmlText = "<b>" + _loc5_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc5_.desc;
            }
            else
            {
               this._nijiaui["skillitem" + _loc2_].descriptionText.htmlText = "<b>" + _loc5_.name + "：</b>" + _loc5_.desc;
            }
            this._nijiaui["skillitem" + _loc2_].skilltype.gotoAndStop(1);
            this["image" + _loc2_].dispose();
            this["image" + _loc2_].load(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,_loc5_.id));
            this._nijiaui["skillitem" + _loc2_].skill_tupo1.visible = this._nijiaui["skillitem" + _loc2_].skill_tupo2.visible = false;
            this["image" + _loc2_].x = 4;
            this["image" + _loc2_].y = 4;
            this._nijiaui["skillitem" + _loc2_].gems_icon_0.addChild(this["image" + _loc2_] as DisplayObject);
            this._nijiaui["skillitem" + _loc2_].visible = true;
            this.setskilltype(_loc5_.type1,_loc2_);
            _loc2_++;
         }
         _loc5_ = SkillConfig.instance.getSkill(_loc3_.normals[2]);
         if(this._nijiaui["skillitem" + _loc2_])
         {
            if(_loc5_.isImmediately)
            {
               this._nijiaui["skillitem" + _loc2_].descriptionText.htmlText = "<b>" + _loc5_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc5_.desc;
            }
            else
            {
               this._nijiaui["skillitem" + _loc2_].descriptionText.htmlText = "<b>" + _loc5_.name + "：</b>" + _loc5_.desc;
            }
            this._nijiaui["skillitem" + _loc2_].skilltype.gotoAndStop(2);
            this["image" + _loc2_].dispose();
            this["image" + _loc2_].load(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,_loc5_.id));
            this._nijiaui["skillitem" + _loc2_].skill_tupo1.visible = this._nijiaui["skillitem" + _loc2_].skill_tupo2.visible = false;
            this["image" + _loc2_].x = 4;
            this["image" + _loc2_].y = 4;
            this._nijiaui["skillitem" + _loc2_].gems_icon_0.addChild(this["image" + _loc2_] as DisplayObject);
            this._nijiaui["skillitem" + _loc2_].visible = true;
            this.setskilltype(_loc5_.type1,_loc2_);
            _loc2_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc3_.skills.length)
         {
            _loc5_ = SkillConfig.instance.getSkill(_loc3_.skills[_loc4_]);
            if(_loc5_.showIcon)
            {
               if(this._nijiaui["skillitem" + _loc2_])
               {
                  if(_loc5_.isImmediately)
                  {
                     this._nijiaui["skillitem" + _loc2_].descriptionText.htmlText = "<b>" + _loc5_.name + "<font color=\'#ffba00\'>[瞬发]</font>：</b>" + _loc5_.desc;
                  }
                  else
                  {
                     this._nijiaui["skillitem" + _loc2_].descriptionText.htmlText = "<b>" + _loc5_.name + "：</b>" + _loc5_.desc;
                  }
                  this._nijiaui["skillitem" + _loc2_].skilltype.gotoAndStop(3);
                  this["image" + _loc2_].dispose();
                  this["image" + _loc2_].load(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,_loc5_.id));
                  this._nijiaui["skillitem" + _loc2_].skill_tupo1.visible = this._nijiaui["skillitem" + _loc2_].skill_tupo2.visible = false;
                  this["image" + _loc2_].x = 4;
                  this["image" + _loc2_].y = 4;
                  this._nijiaui["skillitem" + _loc2_].gems_icon_0.addChild(this["image" + _loc2_] as DisplayObject);
                  this._nijiaui["skillitem" + _loc2_].visible = true;
                  if(_loc5_.type == 3 || _loc5_.type == 4)
                  {
                     this._nijiaui["skillitem" + _loc2_].skilltype.gotoAndStop(3);
                  }
                  if(_loc5_.type == 1)
                  {
                     this._nijiaui["skillitem" + _loc2_].skilltype.gotoAndStop(4);
                  }
                  this.setskilltype(_loc5_.type1,_loc2_);
                  _loc2_++;
               }
               this.updateSkillItemStage(_loc2_ - 1);
            }
            _loc4_++;
         }
      }
      
      protected function requestNinjaListCommandFinishHandler(param1:CommandEvent) : void
      {
         var _loc3_:Vector.<NinjaInfo> = null;
         var _loc5_:NinjaInfo = null;
         var _loc6_:* = false;
         var _loc7_:NinjaInfoCFG = null;
         param1.currentTarget.removeEventListener(CommandEvent.FINISH,this.requestNinjaListCommandFinishHandler);
         param1.currentTarget.removeEventListener(CommandEvent.FAILD,this.requestNinjaListCommandFinishHandler);
         if(this._nijiaui == null)
         {
            return;
         }
         var _loc2_:CardItemData = this.itemData as CardItemData;
         var _loc4_:RequestNinjaListCommand = param1.currentTarget as RequestNinjaListCommand;
         _loc3_ = _loc4_.ninjas[NinjaListTypeDef.ALL];
         if(_loc3_)
         {
            _loc6_ = true;
            for each(_loc5_ in _loc3_)
            {
               _loc7_ = NinjaInfoConfig.getNinjaCfgInfo(_loc5_.id);
               if(_loc7_.risingStarTatter == _loc2_.id)
               {
                  this._nijiaui.cardtips.visible = true;
                  this._nijiaui.cardtips.txt.text = "已拥有该忍者，使用碎片可进行忍者升星";
                  if(_loc5_.starLevel == NinjaInfo.MAX_STAR_LEVEL)
                  {
                     this._nijiaui.cardtips.txt.text = "此忍者已达五星";
                  }
                  _loc6_ = false;
                  break;
               }
            }
         }
         if(_loc6_)
         {
            this._nijiaui.cardtips.visible = true;
            this._nijiaui.cardtips.txt.text = "收集" + _loc2_.cardFragmentNum + "个碎片可招募此忍者";
         }
      }
      
      private function setskilltype(param1:Array, param2:int) : void
      {
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
      
      private function updateSkillItemStage(param1:int) : void
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
      
      private function setHeight() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:int = 1;
         while(_loc2_ < 6)
         {
            if(this._nijiaui["skillitem" + _loc2_].parent)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         this._nijiaui.bg.height = 150 + _loc1_ * 55;
         this._nijiaui.bg.x = 0;
         this._nijiaui.bg.y = 28;
      }
      
      protected function showName(param1:ItemData) : void
      {
         this._ui.nameText.htmlText = "<b>" + BagUtils.getColoredItemName(param1.id) + "</b>";
         this._ui.nameText.x = SPACE_X;
         this._ui.nameText.y = SPACE_Y;
         this._lineY = this._ui.nameText.y + this._ui.nameText.height + NAME_SPACE_Y;
      }
      
      protected function showDescription(param1:ItemData) : void
      {
         var _loc2_:String = param1 != null && param1.description != null?param1.description:TooltipConst.UNKNOWN;
         this._ui.descriptionText.htmlText = _loc2_;
         this._ui.descriptionText.x = SPACE_X;
         this._ui.descriptionText.y = this._lineY + 10;
         this._lineY = this._ui.descriptionText.y + this._ui.descriptionText.height + DESCRIPTION_SPACE_Y;
      }
      
      override protected function resize() : void
      {
         var _loc1_:int = this._ui.nameText.textWidth;
         _loc1_ = _loc1_ > this._ui.descriptionText.textWidth?_loc1_:this._ui.descriptionText.textWidth;
         this._ui.bg.width = _loc1_ + SPACE_X * 2;
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
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
      
      protected function _resize() : void
      {
         this._nijiaui.texture_right.x = this._nijiaui.bg.width - this._nijiaui.texture_right.width - 10;
         this._nijiaui.texture_right.y = this._nijiaui.bg.height - this._nijiaui.texture_right.height + 18;
         this._nijiaui.cardtips.y = this._nijiaui.bg.height - this._nijiaui.cardtips.height + 15;
      }
   }
}
