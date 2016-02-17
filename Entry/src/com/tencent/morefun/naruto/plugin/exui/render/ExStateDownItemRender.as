package com.tencent.morefun.naruto.plugin.exui.render
{
   import com.tencent.morefun.naruto.plugin.ui.base.ItemRenderer;
   import ui.exui.dropDownList.StartLeveRightUI;
   import skill.config.SkillDef;
   import flash.events.MouseEvent;
   import flash.display.DisplayObject;
   
   public class ExStateDownItemRender extends ItemRenderer
   {
       
      public var isLabel:Boolean;
      
      public function ExStateDownItemRender(param1:DisplayObject)
      {
         super(param1);
         this.view.gotoAndStop(1);
         this.view.addEventListener(MouseEvent.ROLL_OVER,this.onMouseOver);
         this.view.addEventListener(MouseEvent.ROLL_OUT,this.onMouseOut);
         this.view.bg.bg.width = 90;
      }
      
      private function get view() : StartLeveRightUI
      {
         return m_skin as StartLeveRightUI;
      }
      
      override public function set data(param1:Object) : void
      {
         m_data = param1;
         var _loc2_:int = param1 as int;
         if(_loc2_ == -1)
         {
            if(this.isLabel)
            {
               this.view.leaderShipText.text = "造成状态";
            }
            else
            {
               this.view.leaderShipText.text = "全部";
            }
         }
         else
         {
            this.view.leaderShipText.text = "" + SkillDef.getExStateString(_loc2_);
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
