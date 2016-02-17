package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.SkillTipsViewUI;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.SimpleLayout;
   import com.tencent.morefun.naruto.plugin.exui.render.SkillType1IconRender;
   import com.tencent.morefun.naruto.plugin.exui.render.SkillNinJutsuTypeRender;
   import cfgData.dataStruct.SkillCFG;
   import bag.utils.BagUtils;
   import skill.SkillAssetDef;
   import skill.config.SkillDef;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   
   public class SkillTipsView extends BaseTipsView
   {
      
      private static const leftSpace:int = 8;
      
      private static const rightSpace:int = 10;
      
      private static const topSpage:int = 11;
      
      private static const downSpage:int = 11;
       
      private var _ui:SkillTipsViewUI;
      
      private var _bg:Sprite;
      
      private var _img:Image;
      
      private var type1List:SimpleLayout;
      
      private var ninJutsuTypeList:SimpleLayout;
      
      public function SkillTipsView(param1:Class)
      {
         this._ui = new SkillTipsViewUI();
         this.configUI();
         super(null);
      }
      
      private function configUI() : void
      {
         this.resetUI();
         addChild(this._ui);
         this._bg = this._ui.bg;
         this._img = new Image();
         this._img.x = 3;
         this._img.y = 4;
         this._ui.icon.addChild(this._img);
         mouseEnabled = mouseChildren = false;
         this.type1List = new SimpleLayout(1,7,0,0);
         this.type1List.itemRenderClass = SkillType1IconRender;
         this._ui.typeListPos.addChild(this.type1List);
         this.ninJutsuTypeList = new SimpleLayout(1,7,0,0);
         this.ninJutsuTypeList.itemRenderClass = SkillNinJutsuTypeRender;
         this._ui.typeListPos.addChild(this.ninJutsuTypeList);
         this._ui.cailiaoTf.text = "";
         this._ui.skill_tupo1.visible = this._ui.skill_tupo2.visible = false;
         this._ui.skill_tupo1.mouseEnabled = this._ui.skill_tupo2.mouseEnabled = false;
         this._ui.skilltupo_di.visible = this._ui.current_skillmc.visible = false;
      }
      
      public function setCurrentType(param1:String, param2:int) : void
      {
         var _loc3_:String = param1;
         if(param2 > 0)
         {
            _loc3_ = _loc3_ + (" +" + param2);
         }
         this._ui.nameTf.htmlText = "<b>" + _loc3_ + "</b>";
         this._ui.nameTf.y = 43;
         this._ui.skilltupo_di.visible = this._ui.current_skillmc.visible = true;
      }
      
      public function set tupoData(param1:Array) : void
      {
         var _loc4_:String = null;
         this.data = param1[0];
         var _loc2_:int = int(param1[1]);
         var _loc3_:String = (param1[0] as SkillCFG).name;
         if(_loc2_ > 0 && param1.length == 3)
         {
            _loc3_ = _loc3_ + (" +" + _loc2_);
         }
         this._ui.nameTf.htmlText = "<b>" + _loc3_ + "</b>";
         if(param1.length == 3)
         {
            _loc4_ = BagUtils.getColoredItemName(param1[2]);
            if(_loc4_)
            {
               this._ui.cailiaoTf.htmlText = "<b>需要：" + _loc4_ + "</b>";
            }
         }
         this._ui.skill_tupo1.visible = _loc2_ == 1;
         this._ui.skill_tupo2.visible = _loc2_ == 2;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(param1 is Array)
         {
            this.tupoData = param1 as Array;
            return;
         }
         var _loc4_:SkillCFG = param1 as SkillCFG;
         this.resetUI();
         this._img.load(SkillAssetDef.getAsset(SkillAssetDef.SKILL_ICON,_loc4_.id));
         this._ui.nameTf.htmlText = "<b>" + _loc4_.name + "</b>";
         this._ui.xumfaTf.visible = _loc4_.isImmediately;
         this.type1List.column = _loc4_.type1.length;
         this.type1List.dataProvider = _loc4_.type1.concat();
         this.ninJutsuTypeList.dataProvider = _loc4_.ninJutsuTypeList.concat();
         this.ninJutsuTypeList.x = this.type1List.width;
         this._ui.desTf.htmlText = _loc4_.desc;
         if(_loc4_.type == 2)
         {
            this._ui.t0.htmlText = "<font color=\'#D8C498\' face=\'黑体\'>冷却时间:</font><font color=\'#FFFFFF\'>" + (_loc4_.cd > 0?_loc4_.cd + "回合":"无") + "</font>";
            this._ui.t1.htmlText = "<font color=\'#D8C498\' face=\'黑体\'>进场冷却:</font><font color=\'#FFFFFF\'>" + (_loc4_.enterCd > 0?_loc4_.enterCd + "回合":"无") + "</font>";
            this._ui.t2.htmlText = "<font color=\'#D8C498\' face=\'黑体\'>查克拉消耗:</font><font color=\'#FFFFFF\'>" + (_loc4_.mp > 0?_loc4_.mp:"无") + "</font>";
            this._ui.t3.htmlText = "<font color=\'#D8C498\' face=\'黑体\'>附加状态:</font><font color=\'#FFFFFF\'>" + SkillDef.getExStatesString(_loc4_.exStates) + "</font>";
            this._ui.blackGrdMC.visible = true;
            this._bg.height = 274;
         }
         else if(_loc4_.type == 1)
         {
            this._ui.t0.htmlText = "<font color=\'#D8C498\' face=\'黑体\'>追击条件:</font><font color=\'#FFFFFF\'>" + SkillDef.getBeHitState1String(_loc4_.beHitState1,_loc4_.beHitState1Param) + "</font>";
            this._ui.t1.htmlText = "<font color=\'#D8C498\' face=\'黑体\'>附加状态:</font><font color=\'#FFFFFF\'>" + SkillDef.getExStatesString(_loc4_.exStates) + "</font>";
            this._bg.height = 258;
         }
         else
         {
            this._ui.t0.htmlText = "<font color=\'#D8C498\' face=\'黑体\'>附加状态:</font><font color=\'#FFFFFF\'>" + SkillDef.getExStatesString(_loc4_.exStates) + "</font>";
            this._bg.height = 258;
         }
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
      }
      
      public function getBgSprite() : Sprite
      {
         return this._bg;
      }
      
      override public function move(param1:int, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc3_ = Math.min(stage.stageWidth - LayoutManager.stageOffsetX,LayoutManager.singleton.maxFrameWidth);
         _loc4_ = Math.min(stage.stageHeight - LayoutManager.stageOffsetY,LayoutManager.singleton.maxFrameHeight);
         if(stage && param1 + 10 + width < _loc3_)
         {
            this.x = param1 + 10;
         }
         else
         {
            this.x = param1 - width;
         }
         if(stage && param2 + 10 + height < _loc4_)
         {
            this.y = param2 + 10;
         }
         else
         {
            this.y = param2 - height;
         }
      }
      
      private function resetUI() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(this._img)
         {
            this._img.dispose();
         }
         this._ui.nameTf.text = "";
         this._ui.xumfaTf.visible = false;
         this.type1List && (this.type1List.dataProvider = null);
         this.ninJutsuTypeList && (this.ninJutsuTypeList.dataProvider = null);
         this._ui.desTf.text = "";
         this._ui.cailiaoTf.text = "";
         _loc2_ = 4;
         _loc1_ = 0;
         while(_loc1_ < _loc2_)
         {
            this._ui["t" + _loc1_].text = "";
            _loc1_++;
         }
         this._ui.skill_tupo1.visible = this._ui.skill_tupo2.visible = false;
         this._ui.blackGrdMC.visible = false;
      }
      
      override public function destroy() : void
      {
         this._img.parent && this._img.parent.removeChild(this._img);
         this._img.dispose();
         this._img = null;
         this.type1List.parent && this.type1List.parent.removeChild(this.type1List);
         this.type1List.dispose();
         this.type1List = null;
         this.ninJutsuTypeList.parent && this.ninJutsuTypeList.parent.removeChild(this.ninJutsuTypeList);
         this.ninJutsuTypeList.dispose();
         this.ninJutsuTypeList = null;
         this._bg = null;
         this._ui.parent && this._ui.parent.removeChild(this._ui);
         this._ui = null;
         super.destroy();
      }
   }
}
