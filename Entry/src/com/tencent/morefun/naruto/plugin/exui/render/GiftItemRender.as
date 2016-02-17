package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import flash.text.TextFieldAutoSize;
   import bag.data.ItemData;
   import bag.data.GiftItemData;
   import bag.utils.BagUtils;
   import bag.conf.BagItemConf;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import def.TipsTypeDef;
   import ui.exui.GiftItemUI;
   import com.tencent.morefun.naruto.plugin.ui.util.DisplayUtils;
   import flash.display.DisplayObject;
   
   public class GiftItemRender extends ItemRenderer implements IRender
   {
      
      private static const IMG_WIDTH:Number = 64;
      
      private static const IMG_HEIGHT:Number = 64;
      
      private static const TXT_OFFSET_X:int = -4;
      
      private static const TXT_OFFSET_Y:int = -1;
       
      protected var _icon:ItemIcon;
      
      protected var _takeIcon:GiftTakeIcon;
      
      public function GiftItemRender(param1:DisplayObject = null)
      {
         super(new GiftItemUI());
         this.initUI();
      }
      
      protected function initUI() : void
      {
         this.view.txt.wordWrap = false;
         this.view.txt.autoSize = TextFieldAutoSize.RIGHT;
         this.view.txt.mouseEnabled = false;
         this.view.txt.visible = false;
         this._icon = new ItemIcon();
         this.view.img.addChild(this._icon);
         this._takeIcon = new GiftTakeIcon();
         this._takeIcon.visible = false;
         this.view.img.addChild(this._takeIcon);
         this.scaleX = this.scaleY = 0.75;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:ItemData = null;
         this._takeIcon.visible = false;
         if(param1 is GiftItemData)
         {
            this._takeIcon.visible = (param1 as GiftItemData).isTake;
            m_data = (param1 as GiftItemData).itemData;
         }
         else
         {
            m_data = param1;
         }
         if(m_data != 0 && m_data != null)
         {
            if(m_data is ItemData)
            {
               _loc2_ = m_data as ItemData;
            }
            else
            {
               if(BagUtils.isNinjaPropsItem(int(m_data)))
               {
                  _loc2_ = new ItemData();
                  _loc2_.id = int(m_data);
               }
               else
               {
                  _loc2_ = BagItemConf.findDataById(int(m_data));
               }
               if(!_loc2_ && !(m_data is ItemData))
               {
                  throw new Error("找不到id为" + m_data + "的物品");
               }
               _loc2_.num = 0;
            }
            this._icon.loadIcon(_loc2_.id);
            this.view.txt.text = _loc2_.num > 1?String(_loc2_.num):"";
            TipsManager.singleton.unbinding(this.view,TipsTypeDef.BAG_ITEM);
            TipsManager.singleton.unbinding(this.view,TipsTypeDef.NINJA_PROPS);
            if(_loc2_.id != 0)
            {
               if(BagUtils.isNinjaPropsItem(_loc2_.id))
               {
                  TipsManager.singleton.binding(this.view,_loc2_.id,TipsTypeDef.NINJA_PROPS);
               }
               else
               {
                  _loc2_.name && TipsManager.singleton.binding(this.view,_loc2_,TipsTypeDef.BAG_ITEM);
               }
            }
         }
      }
      
      protected function get view() : GiftItemUI
      {
         return m_skin as GiftItemUI;
      }
      
      override public function destroy() : void
      {
         this._icon.parent && this._icon.parent.removeChild(this._icon);
         this._icon.destroy();
         this._icon = null;
         DisplayUtils.clear(this.view);
         super.destroy();
      }
      
      public function dispose() : void
      {
         this.destroy();
      }
      
      override public function set scaleX(param1:Number) : void
      {
         this._icon.scaleX = param1;
         this._takeIcon.scaleX = param1;
         this.view.bg.scaleX = param1;
         this.updateNumTextPosition();
      }
      
      override public function set scaleY(param1:Number) : void
      {
         this._icon.scaleY = param1;
         this._takeIcon.scaleY = param1;
         this.view.bg.scaleY = param1;
         this.updateNumTextPosition();
      }
      
      override public function get scaleX() : Number
      {
         return this._icon.scaleX;
      }
      
      override public function get scaleY() : Number
      {
         return this._icon.scaleY;
      }
      
      override public function get width() : Number
      {
         return IMG_WIDTH * this._icon.scaleX;
      }
      
      override public function get height() : Number
      {
         return IMG_HEIGHT * this._icon.scaleY;
      }
      
      private function updateNumTextPosition() : void
      {
         this.view.txt.x = this.width - this.view.txt.width + TXT_OFFSET_X * this._icon.scaleX;
         this.view.txt.y = this.height - this.view.txt.height + TXT_OFFSET_Y * this._icon.scaleY;
      }
   }
}
