package com.tencent.morefun.naruto.plugin.exui.item
{
   import com.tencent.morefun.naruto.plugin.exui.avatar.Avatar;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import bag.utils.BagUtils;
   import crew.data.NinjaPropsInfo;
   import def.TipsTypeDef;
   import bag.data.EquipmentItemData;
   import bag.data.BeastRuneData;
   import bag.data.ItemData;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.filters.GlowFilter;
   import equipment.utils.EquipmentUtils;
   import com.tencent.morefun.naruto.plugin.exui.ui.EquipmentMaxEffectUI;
   import com.tencent.morefun.naruto.plugin.exui.ui.BeastRuneEffectUI;
   
   public class ItemIcon extends Avatar
   {
      
      private static const DEFAULT_ITEM_ICON_WIDTH:int = 64;
      
      private static const DEFAULT_ITEM_ICON_HEIGHT:int = 64;
      
      private static const FORGE_MAX_EFFECT_X:int = 25;
      
      private static const FORGE_MAX_EFFECT_Y:int = -1;
       
      public var _equipmentForgeMaxEffect:MovieClip;
      
      private var _bg:com.tencent.morefun.naruto.plugin.exui.item.ItemIconBg;
      
      private var _numText:TextField;
      
      private var _beastRuneEffect:MovieClip;
      
      public function ItemIcon(param1:int = 64, param2:int = 64, param3:Boolean = false)
      {
         super(param1,param2,param3);
         this.mouseEnabled = false;
         _container.mouseEnabled = false;
         _container.mouseChildren = false;
         this.initBg();
         this.initNumText();
         this.initForgeMaxEffect();
         this.initBeastRuneEffect();
      }
      
      override public function destroy() : void
      {
         this.removeChild(this._bg);
         this._bg.destroy();
         this._bg = null;
         this.removeChild(this._numText);
         this._numText = null;
         if(this._equipmentForgeMaxEffect)
         {
            this._equipmentForgeMaxEffect.gotoAndStop(1);
            this._equipmentForgeMaxEffect = null;
         }
         super.destroy();
      }
      
      override public function unload() : void
      {
         this.hideMaxEffect();
         this.hideBeastRuneEffect();
         if(this._bg != null)
         {
            this._bg.alpha = 0;
            TipsManager.singleton.unbinding(this._bg);
         }
         if(this._numText != null)
         {
            this._numText.htmlText = "";
         }
         super.unload();
      }
      
      public function loadIcon(param1:uint, param2:Object = null, param3:String = "default") : void
      {
         var _loc4_:String = null;
         if(param1 != 0)
         {
            _loc4_ = BagUtils.getItemResUrl(param1);
            if(_loc4_ != null && _loc4_ != _url)
            {
               this._bg.alpha = 1;
            }
            this._numText.htmlText = "";
            load(_loc4_);
            if(param2 != null && param2 != "")
            {
               if(BagUtils.isNinjaPropsItem(param1))
               {
                  TipsManager.singleton.binding(this._bg,param2 && param2 is NinjaPropsInfo?param2:param1,TipsTypeDef.NINJA_PROPS);
               }
               else
               {
                  TipsManager.singleton.binding(this._bg,param2,param3);
               }
            }
            this.playEquipmentMaxEffect(param2 as EquipmentItemData);
            this.playBeastRuneEffect(param2 as BeastRuneData);
         }
         else
         {
            this.unload();
         }
      }
      
      public function loadIconWithNum(param1:ItemData, param2:Boolean, param3:uint) : void
      {
         this.loadIconByData(param1,param2,false);
         this._numText.htmlText = param3 > 0?String(param3):"";
         this._numText.visible = true;
      }
      
      public function updateNum(param1:uint) : void
      {
         this._numText.htmlText = param1 > 0?String(param1):"";
         this._numText.visible = true;
      }
      
      public function loadIconByData(param1:ItemData, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1 != null && param1.id != 0)
         {
            _loc4_ = BagUtils.getItemResUrl(param1.id);
            if(_loc4_ != null && _loc4_ != _url)
            {
               this._bg.alpha = 1;
            }
            this._numText.htmlText = param1.num > 0?String(param1.num):"";
            this._numText.visible = param3;
            load(_loc4_);
            if(param2)
            {
               if(BagUtils.isNinjaPropsItem(param1.id))
               {
                  TipsManager.singleton.binding(this._bg,param1.id,TipsTypeDef.NINJA_PROPS);
               }
               else
               {
                  TipsManager.singleton.binding(this._bg,param1,TipsTypeDef.BAG_ITEM);
               }
            }
            this.playEquipmentMaxEffect(param1 as EquipmentItemData);
            this.playBeastRuneEffect(param1 as BeastRuneData);
         }
         else
         {
            this.unload();
         }
      }
      
      public function get bg() : DisplayObjectContainer
      {
         return this._bg;
      }
      
      override public function get width() : Number
      {
         if(_width > 0)
         {
            return _width;
         }
         return super.width;
      }
      
      override public function get height() : Number
      {
         if(_height > 0)
         {
            return _height;
         }
         return super.height;
      }
      
      override protected function onLoaded(param1:Event) : void
      {
         super.onLoaded(param1);
         this._bg.alpha = 0;
         this._bg.width = _container.width;
         this._bg.height = _container.height;
         this._bg.x = _container.x;
         this._bg.y = _container.y;
         this._numText.width = _container.width - 2;
         this._numText.x = _container.x;
         this._numText.y = _container.y + _container.height - this._numText.height;
         if(this._numText.width < this._numText.textWidth)
         {
            this._numText.width = this._numText.textWidth + 5;
            this._numText.x = _container.x - (this._numText.width - _container.width);
         }
      }
      
      private function initBg() : void
      {
         this._bg = new com.tencent.morefun.naruto.plugin.exui.item.ItemIconBg();
         this._bg.alpha = 0;
         if(_width > 0 && _height > 0)
         {
            this._bg.width = this.width;
            this._bg.height = this.height;
         }
         this.addChildAt(this._bg,this.getChildIndex(_container));
      }
      
      private function initNumText() : void
      {
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.size = 12;
         _loc1_.align = TextFormatAlign.RIGHT;
         _loc1_.font = "SimSun";
         this._numText = new TextField();
         this._numText.selectable = false;
         this._numText.multiline = false;
         this._numText.mouseEnabled = false;
         this._numText.textColor = 16777215;
         this._numText.filters = [new GlowFilter(0,1,2,2,10)];
         this._numText.defaultTextFormat = _loc1_;
         this._numText.htmlText = "";
         this._numText.visible = false;
         this._numText.width = this._bg.width - 2;
         this._numText.height = 18;
         this._numText.x = this._bg.x;
         this._numText.y = this._bg.y + this._bg.height - this._numText.height;
         this.addChild(this._numText);
      }
      
      private function playEquipmentMaxEffect(param1:EquipmentItemData) : void
      {
         var _loc2_:int = 0;
         if(param1 != null)
         {
            if(param1.forgeLevelMax > 0 && param1.forgeLevel == param1.forgeLevelMax)
            {
               _loc2_ = _loc2_ | 1;
            }
            if(param1.fumoInfo && param1.fumoInfo.fumoLevel > 0 && param1.fumoInfo.fumoLevel == param1.fumoInfo.maxLevel)
            {
               _loc2_ = _loc2_ | 2;
            }
         }
         if(!EquipmentUtils.FUMO_OPEN)
         {
            if(_loc2_ == 2)
            {
               _loc2_ = 0;
            }
            else if(_loc2_ == 3)
            {
               _loc2_ = 1;
            }
         }
         if(_loc2_ == 1)
         {
            this.showForgeMaxEffect();
         }
         else if(_loc2_ == 2)
         {
            this.showFumoMaxEffect();
         }
         else if(_loc2_ == 3)
         {
            this.showForgeAndFumoMaxEffect();
         }
         else
         {
            this.hideMaxEffect();
         }
      }
      
      private function playBeastRuneEffect(param1:BeastRuneData) : void
      {
         if(param1 != null && param1.quality > 11)
         {
            this.showBeastRuneEffect(param1.quality,param1.position);
         }
         else
         {
            this.hideBeastRuneEffect();
         }
      }
      
      private function initForgeMaxEffect() : void
      {
         this._equipmentForgeMaxEffect = new EquipmentMaxEffectUI();
         this._equipmentForgeMaxEffect.mouseEnabled = false;
         this._equipmentForgeMaxEffect.mouseChildren = false;
         this._equipmentForgeMaxEffect.x = FORGE_MAX_EFFECT_X;
         this._equipmentForgeMaxEffect.y = FORGE_MAX_EFFECT_Y;
         this._equipmentForgeMaxEffect.gotoAndStop(1);
      }
      
      private function showForgeMaxEffect() : void
      {
         if(this._equipmentForgeMaxEffect == null)
         {
            return;
         }
         if(!this.contains(this._equipmentForgeMaxEffect))
         {
            this.addChild(this._equipmentForgeMaxEffect);
         }
         this._equipmentForgeMaxEffect.gotoAndStop("forgeMax");
      }
      
      private function showFumoMaxEffect() : void
      {
         if(this._equipmentForgeMaxEffect == null)
         {
            return;
         }
         if(!this.contains(this._equipmentForgeMaxEffect))
         {
            this.addChild(this._equipmentForgeMaxEffect);
         }
         this._equipmentForgeMaxEffect.gotoAndStop("fumoMax");
      }
      
      private function showForgeAndFumoMaxEffect() : void
      {
         if(this._equipmentForgeMaxEffect == null)
         {
            return;
         }
         if(!this.contains(this._equipmentForgeMaxEffect))
         {
            this.addChild(this._equipmentForgeMaxEffect);
         }
         this._equipmentForgeMaxEffect.gotoAndStop("forgeAndFumoMax");
      }
      
      private function hideMaxEffect() : void
      {
         if(this._equipmentForgeMaxEffect == null)
         {
            return;
         }
         if(this.contains(this._equipmentForgeMaxEffect))
         {
            this.removeChild(this._equipmentForgeMaxEffect);
         }
         this._equipmentForgeMaxEffect.gotoAndStop(1);
      }
      
      private function initBeastRuneEffect() : void
      {
         this._beastRuneEffect = new BeastRuneEffectUI();
         this._beastRuneEffect.mouseEnabled = false;
         this._beastRuneEffect.mouseChildren = false;
         this._beastRuneEffect.x = DEFAULT_ITEM_ICON_WIDTH * 0.5;
         this._beastRuneEffect.y = DEFAULT_ITEM_ICON_HEIGHT * 0.5;
         this._beastRuneEffect.gotoAndStop(1);
      }
      
      private function showBeastRuneEffect(param1:int, param2:int) : void
      {
         if(this._beastRuneEffect == null)
         {
            return;
         }
         if(!this.contains(this._beastRuneEffect))
         {
            this.addChild(this._beastRuneEffect);
         }
         this._beastRuneEffect.gotoAndStop(param2 * 10 + param1);
      }
      
      private function hideBeastRuneEffect() : void
      {
         if(this._beastRuneEffect == null)
         {
            return;
         }
         if(this.contains(this._beastRuneEffect))
         {
            this.removeChild(this._beastRuneEffect);
         }
         this._beastRuneEffect.gotoAndStop(1);
      }
   }
}
