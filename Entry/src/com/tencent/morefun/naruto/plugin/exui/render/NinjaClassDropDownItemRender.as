package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import flash.display.MovieClip;
   import com.tencent.morefun.naruto.plugin.exui.dropDownList.data.NinjaPropertyData;
   import ninja.conf.NinjaDefConfig;
   import def.NinjaAssetDef;
   import user.def.NinjaPropertyDef;
   import flash.events.MouseEvent;
   import flash.display.DisplayObject;
   
   public class NinjaClassDropDownItemRender extends ItemRenderer
   {
       
      public var isLabel:Boolean;
      
      private var icon:Image;
      
      public function NinjaClassDropDownItemRender(param1:DisplayObject)
      {
         super(param1);
         this.view.gotoAndStop(1);
         this.view.addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.view.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         this.icon = new Image(20,20);
         this.icon.mouseChildren = this.icon.mouseEnabled = false;
         this.icon.x = this.view.iconPos.x;
         this.icon.y = this.view.iconPos.y;
         addChild(this.icon);
      }
      
      private function get view() : MovieClip
      {
         return m_skin as MovieClip;
      }
      
      override public function set data(param1:Object) : void
      {
         m_data = param1;
         this.icon.dispose();
         this.view.lTf.visible = false;
         this.view.rTf.visible = true;
         if(param1 is int && param1 == -1 || param1 is NinjaPropertyData && (param1 as NinjaPropertyData).type == "")
         {
            if(this.isLabel)
            {
               this.view.lTf.visible = true;
               this.view.rTf.visible = false;
               this.view.lTf.text = "属性";
            }
            else
            {
               this.view.rTf.text = "全部";
            }
         }
         else if(param1 is NinjaPropertyData)
         {
            if((param1 as NinjaPropertyData).type == NinjaDefConfig.TUPO_SKILL)
            {
               this.view.rTf.text = "突破";
               this.icon.load(NinjaAssetDef.getAsset(NinjaAssetDef.PROPERTY_ICON,(param1 as NinjaPropertyData).id));
            }
            else
            {
               this.view.rTf.text = NinjaDefConfig.getDefName((param1 as NinjaPropertyData).type,(param1 as NinjaPropertyData).id);
               this.icon.load(NinjaAssetDef.getAsset((param1 as NinjaPropertyData).type == NinjaDefConfig.CATEGORY?NinjaAssetDef.NINJA_PROPERTY:NinjaAssetDef.PROPERTY_ICON,(param1 as NinjaPropertyData).id));
            }
         }
         else
         {
            this.view.rTf.text = NinjaPropertyDef.getNinjaPropertyName(param1 as int);
            this.icon.load(NinjaAssetDef.getAsset(NinjaAssetDef.NINJA_PROPERTY,param1 as int));
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         this.view.gotoAndStop(2);
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         this.view.gotoAndStop(1);
      }
      
      override public function destroy() : void
      {
         this.view.removeEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.view.removeEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         super.destroy();
      }
   }
}
