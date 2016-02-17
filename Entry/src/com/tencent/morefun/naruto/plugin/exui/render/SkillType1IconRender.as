package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.SkillType1RenderUI;
   import flash.display.DisplayObject;
   
   public class SkillType1IconRender extends ItemRenderer implements IRender
   {
       
      public function SkillType1IconRender(param1:DisplayObject = null)
      {
         super(new SkillType1RenderUI());
         this.view.gotoAndStop(1);
      }
      
      override public function set data(param1:Object) : void
      {
         this.view.gotoAndStop("label" + param1);
      }
      
      private function get view() : SkillType1RenderUI
      {
         return m_skin as SkillType1RenderUI;
      }
      
      public function dispose() : void
      {
         destroy();
      }
   }
}
