package com.tencent.morefun.naruto.plugin.exui.dropDownList
{
   import com.tencent.morefun.naruto.plugin.ui.core.CoreDropDownList;
   import com.tencent.morefun.naruto.plugin.exui.dropDownList.data.BeHitStateData;
   import com.tencent.morefun.naruto.plugin.exui.render.BeHitStateDownItemRender;
   import ui.exui.dropDownList.StartLeveRightUI;
   
   public class BeHitStateDropDownList extends CoreDropDownList
   {
       
      private var _sources:Array;
      
      public function BeHitStateDropDownList()
      {
         this._sources = [];
         this._sources.push(this.newData(-1,0));
         this._sources.push(this.newData(2,0));
         this._sources.push(this.newData(3,0));
         this._sources.push(this.newData(1,0));
         this._sources.push(this.newData(7,0));
         this._sources.push(this.newData(10,2));
         this._sources.push(this.newData(10,1));
         this._sources.push(this.newData(10,6));
         this._sources.push(this.newData(10,4));
         this._sources.push(this.newData(9,0));
         this._sources.push(this.newData(10,8));
         this._sources.push(this.newData(4,-1));
         super(5,BeHitStateDownItemRender,StartLeveRightUI,null,null,this._sources[0]);
         updateCellWidthInfo(85);
         BeHitStateDownItemRender(openRendererItem).isLabel = true;
         openRendererItem.data = openRendererItem.data;
         openRendererItem.skin["bg"]["bg"].width = 90;
         this.source = this._sources;
      }
      
      private function newData(param1:int, param2:int) : BeHitStateData
      {
         return new BeHitStateData(param1,param2);
      }
   }
}
