package com.tencent.morefun.naruto.plugin.exui.dropDownList
{
   import com.tencent.morefun.naruto.plugin.ui.core.CoreDropDownList;
   import ui.exui.dropDownList.DropDownListBackground;
   import flash.events.MouseEvent;
   import com.tencent.morefun.naruto.plugin.exui.render.StarLevelDropDownItemRender;
   import ui.exui.dropDownList.StartLeveRightUI;
   
   public class NinjaStarLevelDropDownList extends CoreDropDownList
   {
       
      private var dropDownListBg:DropDownListBackground;
      
      private var _sources:Array;
      
      public function NinjaStarLevelDropDownList()
      {
         this._sources = [-1,0,1,2,3,4];
         super(6,StarLevelDropDownItemRender,StartLeveRightUI,null,null,this._sources[0]);
         updateCellWidthInfo(52);
         StarLevelDropDownItemRender(openRendererItem).isLabel = true;
         openRendererItem.data = openRendererItem.data;
         openRendererItem.skin["bg"]["bg"].width = 52;
         this.source = this._sources;
         listOffsetX = -8;
      }
      
      public function reset() : void
      {
         this.openRendererData = this._sources[0];
      }
      
      override protected function onOpenItemClick(param1:MouseEvent) : void
      {
         super.onOpenItemClick(param1);
         m_listBackground.x = m_listBackground.x - 8;
      }
   }
}
