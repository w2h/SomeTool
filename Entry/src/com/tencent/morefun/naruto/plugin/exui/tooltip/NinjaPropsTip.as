package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import crew.data.NinjaPropsInfo;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.NinjaPropsTipsUI;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import crew.def.NinjaPropsTypeDef;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import base.ApplicationData;
   import def.NinjaPropsAssetDef;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import cfgData.dataStruct.NinjaPropsPropertyColorConfigCFG;
   import cfgData.CFGDataLibs;
   import cfgData.CFGDataEnum;
   import crew.cmd.RequestNinjaPropsTipsInfoCommand;
   import com.tencent.morefun.framework.base.CommandEvent;
   import flash.events.MouseEvent;
   
   public class NinjaPropsTip extends BaseTipsView
   {
       
      private var _info:NinjaPropsInfo;
      
      private var _view:NinjaPropsTipsUI;
      
      private var _image:Image;
      
      private var _baseCfgMode:Boolean;
      
      private var _preLoadExrtaValue:Boolean;
      
      public function NinjaPropsTip(param1:Object = null)
      {
         super();
         mouseChildren = mouseEnabled = false;
         cacheAsBitmap = true;
         addChild(this._view = new NinjaPropsTipsUI());
         this.init();
      }
      
      private function init() : void
      {
         this.formatText(this._view.propsName,true);
         this.formatText(this._view.tips,false);
         this.formatText(this._view.level,true);
         this.formatText(this._view.type,true);
         this.formatText(this._view.title1,true);
         this.formatText(this._view.title2,false);
         this.formatText(this._view.title3,false);
         this.formatText(this._view.value1,false);
         this.formatText(this._view.value2,false);
         this.formatText(this._view.extraValue,false);
         this._view.target.addChild(this._image = new Image(60,60,true,true));
         this._view.price.priceless.visible = false;
      }
      
      private function getNinjaPropsTypeName(param1:uint) : String
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function formatText(param1:TextField, param2:Boolean) : TextField
      {
         var _loc3_:TextFormat = param1.defaultTextFormat;
         _loc3_.font = "SimSun";
         _loc3_.bold = param2;
         param1.setTextFormat(_loc3_);
         param1.defaultTextFormat = _loc3_;
         return param1;
      }
      
      private function tint(param1:*, param2:uint) : String
      {
         return "<font color=\'#" + param2.toString(16) + "\'>" + param1 + "</font>";
      }
      
      private function render() : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:String = null;
         var _loc9_:uint = 0;
         var _loc1_:uint = 1363504;
         this._view.propsName.text = this._info.cfg.name;
         this._view.propsName.textColor = this._info.cfg.color;
         if(NinjaPropsTypeDef.EXP_PROPS.indexOf(this._info.cfg.type) > -1)
         {
            _loc2_ = this._info.cfg.description;
            this._view.level.visible = false;
         }
         else
         {
            _loc2_ = this.tint("Lv" + this._info.equipLevel + "可装备",this._info.equipLevel > ApplicationData.singleton.selfInfo.level?16711680:16777215) + "\n";
            if(this._baseCfgMode)
            {
               this._view.level.visible = false;
               _loc2_ = _loc2_ + ("可强化至Lv" + this._info.maxLevel);
            }
            else
            {
               this._view.level.visible = true;
               this._view.level.text = "Lv" + this._info.level.toString();
               _loc2_ = _loc2_ + (this._info.levelUpInfo.ultimate?this.tint("已达顶级",_loc1_):"可强化至Lv" + this._info.maxLevel);
            }
         }
         this._view.tips.htmlText = _loc2_;
         this._view.type.text = this.getNinjaPropsTypeName(this._info.cfg.type);
         this._view.price.sellable["priceText"].htmlText = "<b>" + this._info.cfg.price + "</b>";
         var _loc4_:Vector.<String> = this._info.keys.slice(0,2);
         var _loc7_:int = 1;
         while(_loc7_ <= 2)
         {
            _loc3_ = "";
            _loc6_ = _loc7_ - 1 < _loc4_.length?_loc4_[_loc7_ - 1]:null;
            if(_loc6_)
            {
               _loc3_ = this._info.getPropertyName(_loc6_) + " " + this.tint("+" + this._info[_loc6_],_loc1_);
               if(this._info.upgradeBuff && this._info.upgradeBuff[_loc6_])
               {
                  _loc3_ = _loc3_ + this.tint(" (强化 +" + this._info.upgradeBuff[_loc6_] + ")",_loc1_);
               }
            }
            if(_loc3_)
            {
               _loc5_++;
            }
            (this._view["value" + _loc7_] as TextField).htmlText = _loc3_;
            _loc7_++;
         }
         if(!_loc5_)
         {
            this._view.value1.text = "无";
         }
         var _loc8_:Vector.<String> = new Vector.<String>();
         if(!this._baseCfgMode)
         {
            this._view.title3.visible = true;
            this._view.extraValue.visible = true;
            _loc4_ = this._info.extraBuff.keys;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               _loc6_ = _loc4_[_loc7_];
               _loc8_.push(this.tint(this._info.getPropertyName(_loc6_) + " " + "+" + (this._info.extraBuff?this._info.extraBuff[_loc6_]:"0"),this.getPropertyColor(this._info.getPropertyIndex(_loc6_),this._info.extraBuff?this._info.extraBuff[_loc6_]:0)));
               _loc7_++;
            }
            this._view.extraValue.htmlText = _loc8_.length?_loc8_.join("<br/>"):"无";
            this._view.extraValue.height = this._view.extraValue.textHeight + 5;
            this._view.background.height = this._view.extraValue.y + this._view.extraValue.height + 40;
         }
         else
         {
            this._view.title3.visible = false;
            this._view.extraValue.visible = false;
            this._view.background.height = this._view.value2.y + this._view.value2.height + 40;
         }
         if(this._preLoadExrtaValue || this._info.cfg.type == 97)
         {
            if(this._info.cfg.preloadExtraValue && this._info.cfg.preloadExtraValue.length > 0)
            {
               this._view.title3.visible = true;
               this._view.extraValue.visible = true;
               this._view.extraValue.htmlText = "<font color=\'#ffba00\'>" + this._info.cfg.preloadExtraValue + "</font>";
               this._view.background.height = this._view.extraValue.y + this._view.extraValue.height + 40;
            }
         }
         this._view.decor.y = this._view.background.height - this._view.decor.height - 8;
         var _loc10_:String = NinjaPropsAssetDef.getNinjaPropsUrl(this._info.id);
         if(_loc10_ != this._image.url)
         {
            this._image.dispose();
            this._image.load(_loc10_);
         }
         this.preMove(LayerManager.singleton.stage.mouseX - LayoutManager.stageOffsetX,LayerManager.singleton.stage.mouseY - LayoutManager.stageOffsetY);
      }
      
      private function getPropertyColor(param1:uint, param2:uint) : uint
      {
         var _loc4_:NinjaPropsPropertyColorConfigCFG = null;
         var _loc5_:* = 0;
         var _loc3_:Array = [52784,1815028,11822079,16759296];
         _loc4_ = CFGDataLibs.getRowData(CFGDataEnum.ENUM_NinjaPropsPropertyColorConfigCFG,param1) as NinjaPropsPropertyColorConfigCFG;
         if(_loc4_)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc4_.grade.length)
            {
               if(param2 < _loc4_.grade[_loc5_])
               {
                  break;
               }
               _loc5_++;
            }
            _loc5_--;
            if(_loc5_ >= 0 && _loc5_ < _loc3_.length)
            {
               return _loc3_[_loc5_] as uint;
            }
         }
         return 16777215;
      }
      
      override public function destroy() : void
      {
         this._view.parent && this._view.parent.removeChild(this._view);
         this._view = null;
         this._info = null;
      }
      
      override public function get data() : Object
      {
         return this._info;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:uint = 0;
         var _loc4_:RequestNinjaPropsTipsInfoCommand = null;
         if(param1 && param1.hasOwnProperty("preloadExtraValue"))
         {
            this._preLoadExrtaValue = true;
            _loc2_ = param1.data;
         }
         else
         {
            _loc2_ = param1;
         }
         if(_loc2_ is NinjaPropsInfo)
         {
            this._baseCfgMode = false;
            this._info = _loc2_ as NinjaPropsInfo;
            this._info && this.render();
         }
         else
         {
            this._baseCfgMode = true;
            this._view.parent && this._view.parent.removeChild(this._view);
            _loc3_ = uint(_loc2_);
            _loc4_ = new RequestNinjaPropsTipsInfoCommand(_loc3_);
            _loc4_.addEventListener(CommandEvent.FINISH,this.tipsInfoResponseHandler);
            _loc4_.call();
         }
      }
      
      override public function get height() : Number
      {
         return this._view.background.height;
      }
      
      private function tipsInfoResponseHandler(param1:CommandEvent) : void
      {
         var _loc3_:RequestNinjaPropsTipsInfoCommand = param1.currentTarget as RequestNinjaPropsTipsInfoCommand;
         _loc3_.removeEventListener(param1.type,arguments.callee);
         if(this._view)
         {
            this._info = _loc3_.data;
            this._view.parent == null && addChild(this._view);
            this._info && this.render();
            dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
         }
      }
   }
}
