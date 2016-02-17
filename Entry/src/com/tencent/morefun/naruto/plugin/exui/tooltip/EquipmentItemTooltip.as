package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.EquipmentItemTooltipUI;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import flash.display.Bitmap;
   import bag.data.EquipmentItemData;
   import def.TipsTypeDef;
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
   import bag.utils.BagUtils;
   import com.tencent.morefun.naruto.util.StrReplacer;
   import base.ApplicationData;
   import equipment.utils.EquipmentUtils;
   import equipment.utils.FumoUtil;
   import flash.text.TextField;
   import flash.display.Sprite;
   import bag.data.GemItemData;
   import bag.data.EquipFumoInlayInfo;
   import com.tencent.morefun.naruto.util.ScaleUtil;
   
   public class EquipmentItemTooltip extends BaseTipsView
   {
      
      private static const VALUE_NUM:int = 5;
      
      private static const FORGE_VALUE_NUM:int = 5;
      
      private static const SPACE_Y:int = 15;
      
      private static const BOTTOM_SPACE_Y:int = 35;
      
      private static const GEMS_BOTTOM_SPACE_Y:int = 30;
      
      private static const LABEL_VAL_SPACE_Y:int = 5;
      
      private static const BEGIN_Y:int = 120;
      
      private static const leftSpace:int = 10;
      
      private static const rightSpace:int = 12;
      
      private static const topSpage:int = 14;
      
      private static const downSpage:int = 13;
       
      private var _ui:EquipmentItemTooltipUI;
      
      private var _lineY:int;
      
      private var _hasForgeValue:Boolean;
      
      private var _icon:ItemIcon;
      
      private var qualityBgDown:Bitmap;
      
      private var qualityBgUp:Bitmap;
      
      private var _inlayItemList:Vector.<InlayItemView>;
      
      public function EquipmentItemTooltip(param1:Class = null)
      {
         super();
         this._ui = new EquipmentItemTooltipUI();
         this._ui.mouseEnabled = false;
         this._ui.mouseChildren = false;
         addChild(this._ui);
         this._icon = new ItemIcon();
         this._ui.icon.addChild(this._icon);
      }
      
      override public function destroy() : void
      {
         var _loc1_:InlayItemView = null;
         this._icon.destroy();
         this._icon = null;
         if(this._inlayItemList != null)
         {
            for each(_loc1_ in this._inlayItemList)
            {
               _loc1_.dispose();
            }
            this._inlayItemList.length = 0;
         }
         if(this.qualityBgDown)
         {
            this.qualityBgDown.bitmapData.dispose();
            this.qualityBgDown.bitmapData = null;
            this.qualityBgDown = null;
         }
         if(this.qualityBgUp)
         {
            this.qualityBgUp.bitmapData.dispose();
            this.qualityBgUp.bitmapData = null;
            this.qualityBgUp = null;
         }
         super.destroy();
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is EquipmentItemData))
         {
            return;
         }
         _data = param1;
         var _loc2_:EquipmentItemData = param1 as EquipmentItemData;
         this.showIconAndQualityBg(_loc2_);
         this.showName(_loc2_);
         this.showValues(_loc2_);
         this.showForgeValues(_loc2_);
         this.showGems(_loc2_);
         this.resize();
      }
      
      private function showIconAndQualityBg(param1:EquipmentItemData) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function showName(param1:EquipmentItemData) : void
      {
         var _loc5_:String = null;
         this._ui.nameText.htmlText = "<b>" + BagUtils.getColoredItemName(param1.id) + "</b>";
         var _loc2_:String = StrReplacer.replace(TooltipConst.EQUIPMENT_LEVEL_TEXT,param1.level);
         this._ui.levelText.htmlText = _loc2_;
         var _loc3_:String = StrReplacer.replace(TooltipConst.EQUIPMENT_FORGE_TEXT,param1.forgeLevel);
         _loc3_ = ApplicationData.singleton.selfInfo.level < EquipmentUtils.FORGE_PROP_OPEN_LEVEL?"":_loc3_;
         this._ui.forgeText.htmlText = _loc3_;
         var _loc4_:String = StrReplacer.replace(TooltipConst.EQUIPMENT_FORGE_SURMOUNT_TEXT,param1.forgeSurmountPercent1);
         _loc4_ = ApplicationData.singleton.selfInfo.level < EquipmentUtils.FORGE_PROP_OPEN_LEVEL?"":_loc4_;
         this._ui.forgeSurmountText.htmlText = _loc4_;
         if(ApplicationData.singleton.selfInfo.level < EquipmentUtils.FUMO_OPEN_LEVEL || !EquipmentUtils.FUMO_OPEN)
         {
            this._ui.fumoLevelText.htmlText = "";
         }
         else
         {
            if(param1.fumoInfo != null)
            {
               _loc5_ = StrReplacer.replace(TooltipConst.FUMO_LEVEL_TEXT,param1.fumoInfo.fumoLevel);
            }
            else
            {
               _loc5_ = StrReplacer.replace(TooltipConst.FUMO_LEVEL_TEXT,1);
            }
            this._ui.fumoLevelText.htmlText = _loc5_;
         }
         this._lineY = BEGIN_Y;
      }
      
      private function showValues(param1:EquipmentItemData) : void
      {
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc2_:String = "";
         var _loc3_:int = 1;
         while(_loc3_ <= VALUE_NUM)
         {
            _loc4_ = param1["val" + _loc3_];
            _loc5_ = "";
            if(_loc4_ > 0)
            {
               _loc5_ = EquipmentUtils.VAL_LABELS[_loc3_ - 1] + " +" + _loc4_;
               _loc6_ = 10 - _loc5_.length;
               _loc7_ = "";
               if(_loc6_ > 0)
               {
                  _loc7_ = this.copyStr(" ",_loc6_);
               }
               _loc2_ = _loc2_ + ("<font color=\'#FFFFFF\'>" + _loc5_ + "</font>" + _loc7_);
               _loc8_ = param1["upgradeVal" + _loc3_];
               if(_loc8_ > 0)
               {
                  _loc2_ = _loc2_ + ("<font color=\'#00CE30\'>（强化 +" + _loc8_ + "）</font>");
               }
               if(EquipmentUtils.FUMO_OPEN)
               {
                  _loc9_ = BagUtils.calcEquipmentType(param1.id);
                  if(_loc9_ == _loc3_ && param1.fumoInfo)
                  {
                     _loc10_ = FumoUtil.getBaseValue(param1,false);
                     if(_loc10_ > 0)
                     {
                        _loc2_ = _loc2_ + StrReplacer.replace(TooltipConst.EQUIPMENT_FUMO_TEXT,["00CE30",_loc10_]);
                     }
                  }
               }
               _loc2_ = _loc2_ + "\n";
            }
            _loc3_++;
         }
         this._ui.valuesText.htmlText = _loc2_;
         this._ui.valuesText.height = this._ui.valuesText.textHeight + 4;
         this._lineY = this._ui.valuesText.y + this._ui.valuesText.height + SPACE_Y;
      }
      
      private function copyStr(param1:String, param2:int) : String
      {
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc3_ + param1;
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function showForgeValues(param1:EquipmentItemData) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         var _loc11_:* = 0;
         var _loc12_:String = null;
         var _loc13_:* = 0;
         this._ui.hLine.y = this._lineY;
         this._ui.forgeLabelText.y = this._ui.hLine.y + this._ui.hLine.height + SPACE_Y;
         this._ui.forgeValuesText.y = this._ui.forgeLabelText.y + this._ui.forgeLabelText.height + LABEL_VAL_SPACE_Y;
         this._hasForgeValue = this.hasForgeValue(param1);
         if(this._hasForgeValue)
         {
            _loc2_ = "";
            _loc8_ = [1,2,3,5,4];
            _loc9_ = 1;
            while(_loc9_ <= FORGE_VALUE_NUM)
            {
               _loc3_ = EquipmentUtils.FORGE_VAL_LABELS[_loc9_ - 1];
               _loc4_ = param1["forgePropVal" + _loc9_];
               _loc6_ = param1["forgeQualityPercent" + _loc9_];
               _loc7_ = param1["forgeQualityVal" + _loc9_];
               _loc5_ = EquipmentUtils.getForgeQualityColor(_loc6_).toString(16);
               _loc10_ = StrReplacer.replace(TooltipConst.EQUIPMENT_FORGE_PROP_TEXT,[_loc3_,_loc4_]);
               _loc11_ = 10 - _loc10_.length;
               _loc12_ = "";
               if(_loc11_ > 0)
               {
                  _loc12_ = this.copyStr(" ",_loc11_);
               }
               _loc2_ = _loc2_ + (_loc10_ + _loc12_);
               if(_loc7_ > 0)
               {
                  _loc2_ = _loc2_ + StrReplacer.replace(TooltipConst.EQUIPMENT_FORGE_QUALITY_TEXT,[_loc5_,_loc7_]);
               }
               if(EquipmentUtils.FUMO_OPEN && param1.fumoInfo != null)
               {
                  _loc13_ = FumoUtil.getBaseValue(param1,true);
                  if(_loc13_ > 0 && BagUtils.calcEquipmentType(param1.id) == _loc8_[_loc9_ - 1])
                  {
                     _loc2_ = _loc2_ + StrReplacer.replace(TooltipConst.EQUIPMENT_FUMO_TEXT,["00CE30",_loc13_]);
                  }
               }
               _loc2_ = _loc2_ + "\n";
               _loc9_++;
            }
            this._ui.hLine.visible = true;
            this._ui.forgeLabelText.visible = true;
            this._ui.forgeValuesText.htmlText = _loc2_;
         }
         else
         {
            this._ui.hLine.visible = false;
            this._ui.forgeLabelText.visible = false;
            this._ui.forgeValuesText.htmlText = "";
         }
      }
      
      private function hasForgeValue(param1:EquipmentItemData) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:int = 1;
         while(_loc2_ <= FORGE_VALUE_NUM)
         {
            if(param1["forgePropVal" + _loc2_] > 0)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function showGems(param1:EquipmentItemData) : void
      {
         var _loc6_:TextField = null;
         var _loc7_:Sprite = null;
         var _loc8_:Vector.<GemItemData> = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:GemItemData = null;
         var _loc13_:* = 0;
         var _loc14_:EquipFumoInlayInfo = null;
         var _loc15_:InlayItemView = null;
         var _loc2_:int = this.calcEquippedGemsNum(param1);
         var _loc3_:int = this.calcEquippedInlayNum(param1);
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(_loc2_ > 0 || _loc3_ > 0)
         {
            this._inlayItemList = new Vector.<InlayItemView>();
            _loc8_ = new Vector.<GemItemData>();
            if(param1.gems)
            {
               _loc8_ = param1.gems.concat();
            }
            if(param1.stones)
            {
               _loc8_ = _loc8_.concat(param1.stones);
            }
            _loc9_ = _loc8_.length - 1;
            while(_loc9_ >= 0)
            {
               if(_loc8_[_loc9_] == null || _loc8_[_loc9_].id == 0)
               {
                  _loc8_.splice(_loc9_,1);
               }
               _loc9_--;
            }
            if(EquipmentUtils.FUMO_OPEN)
            {
               if(param1.fumoInfo)
               {
                  for each(_loc14_ in param1.fumoInfo.inlayInfoAry)
                  {
                     if(_loc14_.isOpen)
                     {
                        if(_loc14_.jadeInfo && _loc14_.jadeInfo.id > 0)
                        {
                           _loc8_.push(_loc14_.jadeInfo);
                        }
                        if(_loc14_.stoneInfo && _loc14_.stoneInfo.id > 0)
                        {
                           _loc8_.push(_loc14_.stoneInfo);
                        }
                     }
                  }
               }
            }
            _loc8_.sort(this.sortGemsList);
            _loc10_ = 30;
            _loc11_ = int.MIN_VALUE;
            _loc13_ = 0;
            while(_loc13_ < _loc8_.length)
            {
               _loc12_ = _loc8_[_loc13_];
               if(!(_loc12_ == null || _loc12_.id == 0))
               {
                  _loc15_ = new InlayItemView();
                  _loc15_.setData(_loc12_);
                  this._inlayItemList.push(_loc15_);
                  _loc15_.view.x = 0;
                  _loc15_.view.y = _loc10_;
                  this._ui.gems.addChild(_loc15_.view);
                  _loc10_ = _loc15_.view.y + _loc15_.getHeight() + 10;
                  _loc11_ = Math.max(_loc15_.view.width,_loc11_);
               }
               _loc13_++;
            }
         }
         else
         {
            if(this._ui.gems.parent != null)
            {
               this._ui.removeChild(this._ui.gems);
            }
            if(this._ui.gemsBg.parent != null)
            {
               this._ui.removeChild(this._ui.gemsBg);
            }
         }
         this._ui.gemsBg.width = _loc11_ + 20 * 2;
      }
      
      private function sortGemsList(param1:GemItemData, param2:GemItemData) : int
      {
         if(BagUtils.isNarutoStone(param1.id) && !BagUtils.isNarutoStone(param2.id))
         {
            return -1;
         }
         if(!BagUtils.isNarutoStone(param1.id) && BagUtils.isNarutoStone(param2.id))
         {
            return 1;
         }
         if(BagUtils.isNarutoStone(param1.id) && BagUtils.isNarutoStone(param2.id))
         {
            if(!param1.isFumoInlay && param2.isFumoInlay)
            {
               return -1;
            }
            if(param1.isFumoInlay && !param2.isFumoInlay)
            {
               return 1;
            }
            if(param1.levelExp > param2.levelExp)
            {
               return -1;
            }
            return 1;
         }
         if(!param1.isFumoInlay && param2.isFumoInlay)
         {
            return -1;
         }
         if(param1.isFumoInlay && !param2.isFumoInlay)
         {
            return 1;
         }
         if(param1.levelExp > param2.levelExp)
         {
            return -1;
         }
         return 1;
      }
      
      private function calcEquippedGemsNum(param1:EquipmentItemData) : int
      {
         if(param1 == null || param1.gems == null && param1.stones == null)
         {
            return 0;
         }
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.gems)
         {
            _loc2_ = param1.gems.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               if(param1.gems[_loc4_] != null && param1.gems[_loc4_].id > 0)
               {
                  _loc3_++;
               }
               _loc4_++;
            }
         }
         if(param1.stones)
         {
            _loc2_ = param1.stones.length;
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               if(param1.stones[_loc4_] != null && param1.stones[_loc4_].id > 0)
               {
                  _loc3_++;
               }
               _loc4_++;
            }
         }
         return _loc3_;
      }
      
      private function calcEquippedInlayNum(param1:EquipmentItemData) : int
      {
         var _loc3_:EquipFumoInlayInfo = null;
         if(param1 == null || param1.fumoInfo == null || param1.fumoInfo.inlayInfoAry == null)
         {
            return 0;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in param1.fumoInfo.inlayInfoAry)
         {
            if(_loc3_ && _loc3_.isOpen && _loc3_.jadeInfo && _loc3_.jadeInfo.id != 0)
            {
               _loc2_++;
            }
            else if(_loc3_ && _loc3_.isOpen && _loc3_.stoneInfo && _loc3_.stoneInfo.id != 0)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      override protected function resize() : void
      {
         if(this._hasForgeValue)
         {
            this._ui.bg.height = this._ui.forgeValuesText.y + this._ui.forgeValuesText.textHeight + BOTTOM_SPACE_Y;
         }
         else
         {
            this._ui.bg.height = this._ui.valuesText.y + this._ui.valuesText.textHeight + BOTTOM_SPACE_Y;
         }
         this._ui.gemsBg.height = this._ui.gems.y + this._ui.gems.height + GEMS_BOTTOM_SPACE_Y;
         if(this.qualityBgDown)
         {
            ScaleUtil.scaleInBox(this.qualityBgDown,this._ui.bg.width - leftSpace - rightSpace,int.MAX_VALUE);
            this.qualityBgDown.x = this._ui.bg.width - this.qualityBgDown.width - rightSpace;
            this.qualityBgDown.y = this._ui.bg.height - this.qualityBgDown.height - downSpage;
         }
         if(this.qualityBgUp)
         {
            ScaleUtil.scaleInBox(this.qualityBgUp,this._ui.bg.width - leftSpace - rightSpace,int.MAX_VALUE);
            this.qualityBgUp.x = leftSpace;
            this.qualityBgUp.y = topSpage;
         }
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
      }
      
      override public function get height() : Number
      {
         var _loc1_:int = this.calcEquippedGemsNum(_data as EquipmentItemData);
         if(_loc1_ > 0)
         {
            return this._ui.bg.height > this._ui.gemsBg.height?this._ui.bg.height:this._ui.gemsBg.height;
         }
         return this._ui.bg.height;
      }
   }
}

import com.tencent.morefun.naruto.plugin.ui.tooltip.InlayItemUI;
import flash.text.TextField;
import flash.display.Sprite;
import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
import bag.data.GemItemData;
import bag.utils.BagUtils;
import equipment.utils.EquipmentUtils;
import flash.display.DisplayObject;
import flash.text.TextFieldAutoSize;

class InlayItemView
{
   
   private static const GEM_ICON_W:int = 28;
   
   private static const GEM_ICON_H:int = 28;
   
   private static const GEM_ICON_X:int = 2;
   
   private static const GEM_ICON_Y:int = 2;
    
   private var _ui:InlayItemUI;
   
   private var gemsText:TextField;
   
   private var gemsIcon:Sprite;
   
   private var ico:ItemIcon;
   
   private var _data:GemItemData;
   
   function InlayItemView()
   {
      super();
      this._ui = new InlayItemUI();
      this.gemsText = this._ui["gems_text"];
      this.gemsText.autoSize = TextFieldAutoSize.LEFT;
      this.gemsText.width = 182;
      this.gemsIcon = this._ui["gems_icon"];
   }
   
   public function setData(param1:GemItemData) : void
   {
      this._data = param1;
      this.gemsText.htmlText = BagUtils.getColoredItemName(param1.id) + "\n" + this.getGemBuffTips(param1);
      this.ico = new ItemIcon(GEM_ICON_W,GEM_ICON_H);
      this.ico.x = GEM_ICON_X;
      this.ico.y = GEM_ICON_Y;
      this.ico.loadIconByData(param1,true);
      this.gemsIcon.addChild(this.ico);
   }
   
   private function getGemBuffTips(param1:GemItemData) : String
   {
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:String = null;
      var _loc10_:String = null;
      var _loc2_:String = "";
      var _loc3_:Array = [0,1,2,3,4,0,1,2,4,3];
      var _loc4_:Array = [1,2,3,4,5,6,7,8,9,10];
      var _loc5_:int = 0;
      while(_loc5_ < _loc3_.length)
      {
         _loc6_ = _loc3_[_loc5_];
         _loc7_ = _loc4_[_loc5_];
         _loc8_ = param1["val" + _loc7_];
         if(_loc5_ < 5)
         {
            _loc9_ = EquipmentUtils.VAL_LABELS[_loc6_];
         }
         else
         {
            _loc9_ = EquipmentUtils.FORGE_VAL_LABELS[_loc6_];
         }
         if(_loc8_ > 0)
         {
            _loc10_ = this.formantValue(_loc8_,3);
            _loc2_ = _loc2_ + (_loc9_ + " <font color=\'#00CE30\'>+" + _loc10_ + "</font>");
            _loc2_ = _loc2_ + " ";
            if((_loc5_ + 1) % 3 == 0)
            {
               _loc2_ = _loc2_ + "\n";
            }
         }
         _loc5_++;
      }
      return _loc2_;
   }
   
   private function formantValue(param1:Object, param2:int, param3:String = " ") : String
   {
      var _loc4_:int = param2 - String(param1).length;
      if(_loc4_ <= 0)
      {
         return param1.toString();
      }
      var _loc5_:String = "";
      var _loc6_:int = 0;
      while(_loc6_ < _loc4_)
      {
         _loc5_ = _loc5_ + param3;
         _loc6_++;
      }
      return param1 + _loc5_;
   }
   
   public function get view() : DisplayObject
   {
      return this._ui;
   }
   
   public function dispose() : void
   {
      if(this._ui && this._ui.parent)
      {
         this._ui.parent.removeChild(this._ui);
      }
      this._ui = null;
      this.gemsText = null;
      this.gemsIcon = null;
      if(this.ico)
      {
         this.ico.destroy();
         this.ico = null;
      }
   }
   
   public function getHeight() : int
   {
      if(this._data && this._data.isFumoInlay)
      {
         return 42;
      }
      return 30;
   }
}
