package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.BeastFragmentTooltipUI;
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.avatar.BeastAvatar;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.SimpleLayout;
   import flash.text.TextField;
   import bag.data.BeastFragmentData;
   import throughTheBeast.utils.BeastUtils;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import throughTheBeast.data.BeastData;
   import com.tencent.morefun.naruto.util.StrReplacer;
   import throughTheBeast.command.GetBeastByIdCmd;
   import com.tencent.morefun.framework.base.CommandEvent;
   import com.tencent.morefun.naruto.util.GameTip;
   import com.tencent.morefun.naruto.plugin.exui.render.SkillType1IconRender;
   
   public class BeastFragmentTooltip extends BaseTipsView
   {
      
      private static const leftSpace:int = 8;
      
      private static const rightSpace:int = 10;
      
      private static const topSpage:int = 11;
      
      private static const downSpage:int = 11;
       
      private var _ui:BeastFragmentTooltipUI;
      
      private var _bg:Sprite;
      
      private var _img:BeastAvatar;
      
      private var type1List:SimpleLayout;
      
      private var _propsTitleText:TextField;
      
      private var _propsText:TextField;
      
      public function BeastFragmentTooltip()
      {
         super(null);
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this._ui = new BeastFragmentTooltipUI();
         addChild(this._ui);
         this._bg = this._ui.bg;
         this._img = new BeastAvatar();
         this._img.x = 0;
         this._img.y = 0;
         this._ui.icon.addChild(this._img);
         this.type1List = new SimpleLayout(1,3,0,0);
         this.type1List.itemRenderClass = SkillType1IconRender;
         this._ui.typeListPos.addChild(this.type1List);
         this._propsTitleText = this._ui.propsTitleText;
         this._propsTitleText.htmlText = TooltipConst.BEAST_RUNE_VALUE_LABEL;
         this._propsText = this._ui.propsText;
         this.reset();
      }
      
      override public function set data(param1:Object) : void
      {
         if(!(param1 is BeastFragmentData))
         {
            return;
         }
         this.reset();
         var _loc2_:BeastFragmentData = param1 as BeastFragmentData;
         _data = param1;
         this.type1List.dataProvider = BeastUtils.getSkillTypesById(_loc2_.beastId);
         this.showName(_loc2_);
         this.showIcon(_loc2_);
         this.showProps(_loc2_);
         this.showBottomBar(_loc2_);
         this.resize();
      }
      
      private function reset() : void
      {
         this._img.reset();
         this._ui.nameTf.text = "";
         this.type1List && (this.type1List.dataProvider = null);
         this._ui.desTf.text = "";
         this._propsText.htmlText = "";
         this._ui.bottomBar.visible = false;
         _data = null;
      }
      
      override public function destroy() : void
      {
         this._img.parent && this._img.parent.removeChild(this._img);
         this._img.destroy();
         this._img = null;
         this.type1List.parent && this.type1List.parent.removeChild(this.type1List);
         this.type1List.dispose();
         this.type1List = null;
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
            this.y = param2 + 10;
         }
         else
         {
            this.y = param2 - height;
         }
      }
      
      override protected function resize() : void
      {
         this._bg.height = this._ui.bottomBar.y + this._ui.bottomBar.height + 12;
         this._ui.texture_left.x = leftSpace;
         this._ui.texture_left.y = topSpage;
         this._ui.texture_right.x = this._ui.bg.width - this._ui.texture_right.width - rightSpace;
         this._ui.texture_right.y = this._ui.bg.height - this._ui.texture_right.height - downSpage;
      }
      
      private function showName(param1:BeastFragmentData) : void
      {
         var _loc2_:String = "<b><font color=\'#" + param1.color.toString(16) + "\'>" + (param1.name + TooltipConst.FRAGMENT) + "</font></b>";
         this._ui.nameTf.htmlText = _loc2_;
      }
      
      private function showIcon(param1:BeastFragmentData) : void
      {
         var _loc2_:BeastData = null;
         if(param1.beastId != 0)
         {
            _loc2_ = new BeastData();
            _loc2_.id = param1.beastId;
            this._img.loadByData(_loc2_,false);
         }
         else
         {
            this._img.reset();
         }
      }
      
      private function showProps(param1:BeastFragmentData) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._ui.typeListPos.y = this._img.y + 105;
         this._ui.desTf.y = this._ui.typeListPos.y + 35;
         this._ui.desTf.htmlText = param1.description;
         this._propsTitleText.y = this._ui.desTf.y + this._ui.desTf.textHeight + 20;
         var _loc2_:String = "";
         _loc2_ = _loc2_ + (StrReplacer.replace(TooltipConst.BEAST_PROPS[0],param1.baseProps[0]) + "\n");
         _loc2_ = _loc2_ + (StrReplacer.replace(TooltipConst.BEAST_PROPS[1],param1.baseProps[1]) + "\n");
         _loc2_ = _loc2_ + (StrReplacer.replace(TooltipConst.BEAST_PROPS[2],param1.baseProps[2]) + "\n");
         _loc2_ = _loc2_ + (StrReplacer.replace(TooltipConst.BEAST_PROPS[3],param1.baseProps[3]) + "\n");
         _loc2_ = _loc2_ + StrReplacer.replace(TooltipConst.BEAST_PROPS[4],param1.baseProps[4]);
         this._propsText.y = this._propsTitleText.y + this._propsTitleText.textHeight + 10;
         this._propsText.htmlText = _loc2_;
      }
      
      private function showBottomBar(param1:BeastFragmentData) : void
      {
         var _loc2_:GetBeastByIdCmd = new GetBeastByIdCmd(param1.beastId);
         _loc2_.addEventListener(CommandEvent.FINISH,this.onBeastData);
         _loc2_.addEventListener(CommandEvent.FAILD,this.onBeastData);
         _loc2_.call();
      }
      
      private function onBeastData(param1:CommandEvent) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function udpateBottomBar(param1:BeastData) : void
      {
         var _loc3_:String = null;
         if(!(_data is BeastFragmentData) || this._ui == null)
         {
            return;
         }
         this._ui.bottomBar.y = this._propsText.y + this._propsText.textHeight + 20;
         var _loc2_:Boolean = param1 != null;
         if(!_loc2_)
         {
            _loc3_ = StrReplacer.replace(TooltipConst.BEAST_FRAGMENT_TEXT,[data.beastFragmentNum,data.name]);
         }
         else
         {
            _loc3_ = StrReplacer.replace(TooltipConst.BEAST_OWNED_TEXT,data.name);
         }
         this._ui.bottomBar.txt.text = _loc3_;
         this._ui.bottomBar.visible = true;
      }
   }
}
