package com.tencent.morefun.naruto.plugin.exui.dropDownList
{
   import com.tencent.morefun.naruto.plugin.ui.core.CoreDropDownList;
   import com.tencent.morefun.naruto.plugin.exui.dropDownList.data.NinjaPropertyData;
   import ninja.conf.NinjaDefConfig;
   import com.tencent.morefun.naruto.plugin.exui.render.NinjaClassDropDownItemRender;
   import ui.exui.dropDownList.NinjaClassDropDownItemUI;
   
   public class NinjaClassDropDownList extends CoreDropDownList
   {
       
      private var _sources:Array;
      
      public function NinjaClassDropDownList()
      {
         this._sources = new Array();
         this._sources.push(new NinjaPropertyData("",-1));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.CATEGORY,1));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.CATEGORY,2));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.CATEGORY,3));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.CATEGORY,4));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.CATEGORY,5));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,1));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,51));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,11));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,15));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,49));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,13));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,14));
         this._sources.push(new NinjaPropertyData(NinjaDefConfig.PROPERTY,48));
         super(7,NinjaClassDropDownItemRender,NinjaClassDropDownItemUI,null,null,this._sources[0]);
         updateCellWidthInfo(85);
         NinjaClassDropDownItemRender(openRendererItem).isLabel = true;
         openRendererItem.data = openRendererItem.data;
         openRendererItem.skin["bg"]["bg"].width = 85;
         this.source = this._sources;
      }
      
      public function reset() : void
      {
         this.openRendererData = this._sources[0];
      }
   }
}
