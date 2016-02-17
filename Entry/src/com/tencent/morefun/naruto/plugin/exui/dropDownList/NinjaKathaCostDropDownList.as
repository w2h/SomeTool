package com.tencent.morefun.naruto.plugin.exui.dropDownList
{
   import com.tencent.morefun.naruto.plugin.ui.core.CoreDropDownList;
   import ui.exui.dropDownList.DropDownListBackground;
   import com.tencent.morefun.naruto.plugin.exui.render.KathaCostDropDownItemRender;
   import ui.exui.dropDownList.StartLeveRightUI;
   
   public class NinjaKathaCostDropDownList extends CoreDropDownList
   {
       
      private var dropDownListBg:DropDownListBackground;
      
      private var _sources:Array;
      
      public function NinjaKathaCostDropDownList()
      {
         this._sources = [-1,0,20,40,60,80,100];
         super(6,KathaCostDropDownItemRender,StartLeveRightUI,null,null,this._sources[0]);
         updateCellWidthInfo(70);
         KathaCostDropDownItemRender(openRendererItem).isLabel = true;
         openRendererItem.data = openRendererItem.data;
         openRendererItem.skin["bg"]["bg"].width = 70;
         this.source = this._sources;
      }
      
      public function reset() : void
      {
         this.openRendererData = this._sources[0];
      }
   }
}
