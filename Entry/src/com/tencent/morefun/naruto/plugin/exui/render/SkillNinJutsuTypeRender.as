package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import com.tencent.morefun.naruto.plugin.ui.components.interfaces.IRender;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.TipsIconUI;
   import flash.display.DisplayObject;
   
   public class SkillNinJutsuTypeRender extends ItemRenderer implements IRender
   {
       
      public function SkillNinJutsuTypeRender(param1:DisplayObject = null)
      {
         super(new TipsIconUI());
         this.view.gotoAndStop(1);
      }
      
      override public function set data(param1:Object) : void
      {
         this.view.gotoAndStop("" + param1);
      }
      
      private function get view() : TipsIconUI
      {
         return m_skin as TipsIconUI;
      }
      
      public function dispose() : void
      {
         destroy();
      }
   }
}
