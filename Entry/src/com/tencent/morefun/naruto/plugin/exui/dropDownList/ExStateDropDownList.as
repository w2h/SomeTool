package com.tencent.morefun.naruto.plugin.exui.dropDownList
{
   import com.tencent.morefun.naruto.plugin.ui.core.CoreDropDownList;
   import com.tencent.morefun.naruto.plugin.exui.render.ExStateDownItemRender;
   import ui.exui.dropDownList.StartLeveRightUI;
   
   public class ExStateDropDownList extends CoreDropDownList
   {
       
      private var _sources:Array;
      
      public function ExStateDropDownList()
      {
         this._sources = [-1,1,2,3,4,5,6,7,8,9,10,11,12,13];
         super(5,ExStateDownItemRender,StartLeveRightUI,null,null,this._sources[0]);
         updateCellWidthInfo(90);
         ExStateDownItemRender(openRendererItem).isLabel = true;
         openRendererItem.data = openRendererItem.data;
         openRendererItem.skin["bg"]["bg"].width = 90;
         this.source = this._sources;
      }
   }
}
