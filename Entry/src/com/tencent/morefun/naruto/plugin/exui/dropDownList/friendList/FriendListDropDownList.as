package com.tencent.morefun.naruto.plugin.exui.dropDownList.friendList
{
   import com.tencent.morefun.naruto.plugin.ui.base.DropDownList;
   import ui.exui.dropDownList.DropDownListBackground;
   import flash.geom.Rectangle;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import flash.events.MouseEvent;
   import flash.display.DisplayObject;
   import ui.exui.dropDownList.FriendInfoRenderUI;
   import com.tencent.morefun.naruto.plugin.ui.DropDownListScrollBar_1_Skin;
   
   public class FriendListDropDownList extends DropDownList
   {
       
      protected var dropDownListBg:DropDownListBackground;
      
      public function FriendListDropDownList(param1:int = 7, param2:Class = null, param3:Class = null)
      {
         var _loc4_:DisplayObject = null;
         !param2 && (param2 = FriendInfoRender);
         !param3 && (param3 = FriendInfoRenderUI);
         _loc4_ = new param2(new param3());
         this.dropDownListBg = new DropDownListBackground();
         this.dropDownListBg.width = _loc4_.width;
         this.dropDownListBg.height = 173;
         super(param1,param2,param3,new DropDownListScrollBar_1_Skin(),this.dropDownListBg);
         this.m_srcollBar.height = 163;
         this.m_srcollBar.x = this.dropDownListBg.width - this.m_srcollBar.width;
         (openRendererItem as FriendInfoRender).switchToOpenRenderMode();
         _loc4_.hasOwnProperty("destory") && _loc4_["destory"]();
         _loc4_ = null;
      }
      
      public function showList() : void
      {
         var _loc1_:Rectangle = m_openRendererItem.getBounds(stage);
         if(_loc1_.bottom + m_listBackground.height > LayoutManager.stageHeight)
         {
            m_listBackground.y = _loc1_.top - m_listBackground.height - 1;
         }
         else
         {
            m_listBackground.y = _loc1_.bottom + 1;
         }
         m_listBackground.x = _loc1_.left;
         m_listWindow.x = m_listBackground.x + (m_listBackground.width - m_listWindow.width) / 2;
         m_listWindow.y = m_listBackground.y + (m_listBackground.height - m_listWindow.height) / 2;
         LayerManager.singleton.addItemToLayer(m_listBackground,LayerDef.DROP_DOWN_LIST);
         LayerManager.singleton.addItemToLayer(m_listWindow,LayerDef.DROP_DOWN_LIST);
         stage.addEventListener(MouseEvent.CLICK,onStageMouseClick);
         m_isOpen = true;
      }
      
      public function hideList() : void
      {
         LayerManager.singleton.removeItemToLayer(m_listBackground);
         LayerManager.singleton.removeItemToLayer(m_listWindow);
         stage.removeEventListener(MouseEvent.CLICK,onStageMouseClick);
         m_isOpen = false;
      }
      
      override protected function onOpenItemClick(param1:MouseEvent) : void
      {
      }
      
      override public function set source(param1:Array) : void
      {
         m_list.source = param1;
         m_listWindow.updateNow();
      }
      
      override public function destroy() : void
      {
         this.dropDownListBg.parent && this.dropDownListBg.parent.removeChild(this.dropDownListBg);
         this.dropDownListBg = null;
         super.destroy();
      }
   }
}
