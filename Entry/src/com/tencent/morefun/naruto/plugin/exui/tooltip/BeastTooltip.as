package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.BeastTooltipUI;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.avatar.BeastAvatar;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.SimpleLayout;
   import flash.text.TextField;
   import bag.data.BeastRuneData;
   import throughTheBeast.data.BeastData;
   import throughTheBeast.utils.BeastUtils;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import bag.utils.BagUtils;
   import cfgData.dataStruct.SkillCFG;
   import com.tencent.morefun.naruto.util.StrReplacer;
   import com.tencent.morefun.naruto.plugin.exui.render.SkillType1IconRender;
   import com.tencent.morefun.naruto.plugin.exui.render.BeastTipRuneRender;
   
   public class BeastTooltip extends BaseTipsView
   {
      
      private static const leftSpace:int = 8;
      
      private static const rightSpace:int = 10;
      
      private static const topSpage:int = 11;
      
      private static const downSpage:int = 11;
       
      private var _ui:BeastTooltipUI;
      
      private var _bg:Sprite;
      
      private var _img:BeastAvatar;
      
      private var type1List:SimpleLayout;
      
      private var runeList:SimpleLayout;
      
      private var _propsTitleText:TextField;
      
      private var _propsText:TextField;
      
      public function BeastTooltip(param1:Class = null)
      {
         super(null);
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this._ui = new BeastTooltipUI();
         addChild(this._ui);
         this._bg = this._ui.bg;
         this._img = new BeastAvatar();
         this._img.x = 0;
         this._img.y = 0;
         this._ui.icon.addChild(this._img);
         this.type1List = new SimpleLayout(1,3,0,0);
         this.type1List.itemRenderClass = SkillType1IconRender;
         this._ui.typeListPos.addChild(this.type1List);
         this.runeList = new SimpleLayout(5,2,0,0);
         this.runeList.itemRenderClass = BeastTipRuneRender;
         this._ui.runelist.addChild(this.runeList);
         this._propsTitleText = this._ui.propsTitleText;
         this._propsTitleText.htmlText = TooltipConst.BEAST_RUNE_VALUE_LABEL;
         this._ui.propsTitleText2.htmlText = TooltipConst.BEAST_RUNE_VALUE_LABEL2;
         this._propsText = this._ui.propsText;
         this.reset();
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc4_:BeastRuneData = null;
         if(!(param1 is BeastData))
         {
            return;
         }
         super.data = param1;
         var _loc2_:BeastData = param1 as BeastData;
         if(_loc2_.runes && _loc2_.runes.length > 0)
         {
            this._ui.propsTitleText2.htmlText = TooltipConst.BEAST_RUNE_VALUE_LABEL2;
         }
         else
         {
            this._ui.propsTitleText2.htmlText = "";
         }
         this.reset();
         this.type1List.dataProvider = BeastUtils.getSkillTypesById(_loc2_.id);
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_.runes)
         {
            if(_loc4_)
            {
               _loc3_.push(_loc4_);
            }
         }
         this.runeList.dataProvider = _loc3_;
         this.showName(_loc2_);
         this.showIcon(_loc2_);
         this.showProps(_loc2_);
         this._ui.propsTitleText2.y = this._propsText.y + this._propsText.textHeight + 30;
         this._ui.runelist.y = this._ui.propsTitleText2.y + this._ui.propsTitleText2.height + 10;
         this.resize();
      }
      
      private function reset() : void
      {
         this._img.reset();
         this._ui.nameTf.text = "";
         this.type1List && (this.type1List.dataProvider = null);
         this.runeList && (this.runeList.dataProvider = null);
         this._ui.desTf.text = "";
         this._propsText.htmlText = "";
      }
      
      override public function destroy() : void
      {
         this._img.parent && this._img.parent.removeChild(this._img);
         this._img.destroy();
         this._img = null;
         this.type1List.parent && this.type1List.parent.removeChild(this.type1List);
         this.type1List.dispose();
         this.type1List = null;
         this.runeList.parent && this.runeList.parent.removeChild(this.runeList);
         this.runeList.dispose();
         this.runeList = null;
         this._propsTitleText = null;
         this._propsText = null;
         this._bg = null;
         this._ui.parent && this._ui.parent.removeChild(this._ui);
         this._ui = null;
         super.destroy();
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
            this.y = param2 + 10 - height / 2;
         }
         else
         {
            this.y = param2 - height + height / 2;
         }
         this.x = Math.max(0,Math.min(_loc3_ - width,this.x));
         this.y = Math.max(0,Math.min(_loc4_ - height,this.y));
      }
      
      override protected function resize() : void
      {
         if(data && data.runes && data.runes.length)
         {
            this._bg.width = 425;
            this._bg.height = this.runeList.height + this._ui.runelist.y + 30;
         }
         else
         {
            this._bg.width = 345;
            this._bg.height = this._propsText.y + this._propsText.textHeight + 30;
         }
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
      }
      
      private function showName(param1:BeastData) : void
      {
         var _loc2_:uint = BagUtils.QUALITY_COLORS[param1.type + 1];
         var _loc3_:String = "<b><font color=\'#" + _loc2_.toString(16) + "\'>" + param1.name + "</font></b>";
         this._ui.nameTf.htmlText = _loc3_;
      }
      
      private function showIcon(param1:BeastData) : void
      {
         if(param1.id != 0)
         {
            this._img.loadByData(param1,false);
         }
         else
         {
            this._img.reset();
         }
      }
      
      private function showProps(param1:BeastData) : void
      {
         var _loc5_:* = 0;
         if(param1 == null)
         {
            return;
         }
         this._ui.typeListPos.y = this._img.y + 105;
         var _loc2_:SkillCFG = BeastUtils.getSkillCfgById(param1.id);
         this._ui.desTf.y = this._ui.typeListPos.y + 35;
         this._ui.desTf.htmlText = _loc2_.desc;
         this._propsTitleText.y = this._ui.desTf.y + this._ui.desTf.textHeight + 20;
         var _loc3_:String = "";
         var _loc4_:int = TooltipConst.BEAST_PROPS.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc3_ = _loc3_ + StrReplacer.replace(TooltipConst.BEAST_PROPS[_loc6_],param1.baseProps[_loc6_]);
            _loc5_ = this.getTotalRuneValue(param1,_loc6_);
            if(_loc5_ > 0)
            {
               _loc3_ = _loc3_ + StrReplacer.replace(TooltipConst.BEAST_RUNE_VALUE,_loc5_);
            }
            if(_loc6_ < _loc4_ - 1)
            {
               _loc3_ = _loc3_ + "\n";
            }
            _loc6_++;
         }
         this._propsText.y = this._propsTitleText.y + this._propsTitleText.textHeight + 10;
         this._propsText.htmlText = _loc3_;
      }
      
      private function getTotalRuneValue(param1:BeastData, param2:int) : int
      {
         var _loc4_:BeastRuneData = null;
         if(param1 == null || param1.runes == null)
         {
            return 0;
         }
         var _loc3_:int = param1.runes.length;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = param1.runes[_loc6_];
            if(_loc4_)
            {
               _loc5_ = _loc5_ + _loc4_["val" + (param2 + 1)];
            }
            _loc6_++;
         }
         return _loc5_;
      }
   }
}
