package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import bag.data.ItemData;
   import bag.utils.BagUtils;
   import bag.conf.BagItemConf;
   import com.tencent.morefun.naruto.plugin.exui.tooltip.ItemAchievedWayTip;
   import ui.exui.SingleLineItemUI;
   import flash.display.DisplayObject;
   
   public class SingleLineItemRender extends ItemRenderer implements IRender
   {
       
      protected const RENDER_WIDTH:int = 76;
      
      protected const RENDER_HEIGHT:int = 89;
      
      protected var giftItemRender:com.tencent.morefun.naruto.plugin.exui.render.GiftItemRender;
      
      public function SingleLineItemRender(param1:DisplayObject = null)
      {
         super(new SingleLineItemUI());
         this.initUI();
      }
      
      protected function initUI() : void
      {
         this.giftItemRender = new com.tencent.morefun.naruto.plugin.exui.render.GiftItemRender();
         this.giftItemRender.scaleX = this.giftItemRender.scaleY = 1;
         this.view.imgPos.addChild(this.giftItemRender);
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:ItemData = null;
         if(m_data == param1)
         {
            return;
         }
         m_data = param1;
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
               _loc2_.num = 0;
            }
            _loc2_ && (this.view.nameText.htmlText = BagUtils.getColoredItemName(_loc2_.id));
            this.giftItemRender.data = _loc2_;
            ItemAchievedWayTip.singleton.unbind(this.view);
            _loc2_ && ItemAchievedWayTip.singleton.binding(this.view,_loc2_,0,[6,-1]);
         }
      }
      
      protected function get view() : SingleLineItemUI
      {
         return m_skin as SingleLineItemUI;
      }
      
      override public function destroy() : void
      {
         ItemAchievedWayTip.singleton.unbind(this.view);
         this.giftItemRender.parent && this.giftItemRender.parent.removeChild(this.giftItemRender);
         this.giftItemRender.dispose();
         this.giftItemRender = null;
         super.destroy();
      }
      
      public function dispose() : void
      {
         this.destroy();
      }
      
      override public function get width() : Number
      {
         return this.RENDER_WIDTH;
      }
      
      override public function get height() : Number
      {
         return this.RENDER_HEIGHT;
      }
   }
}
