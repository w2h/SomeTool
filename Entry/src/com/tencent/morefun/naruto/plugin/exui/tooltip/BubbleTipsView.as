package com.tencent.morefun.naruto.plugin.exui.tooltip
{
   import com.tencent.morefun.naruto.plugin.ui.tips.BaseTipsView;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.BubbleTipsUI;
   import com.tencent.morefun.naruto.plugin.ui.tooltip.DefaultTipsViewUI;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   
   public class BubbleTipsView extends BaseTipsView
   {
       
      private var tipsUI:BubbleTipsUI;
      
      private var ui:DefaultTipsViewUI;
      
      public function BubbleTipsView(param1:Class)
      {
         super(param1);
         this.tipsUI = new BubbleTipsUI();
         addChild(this.tipsUI);
      }
      
      override public function set data(param1:Object) : void
      {
         this.tipsUI.text.text = param1 as String;
         this.tipsUI.text.width = this.tipsUI.text.textWidth + 5;
         this.tipsUI.bg.width = this.tipsUI.text.textWidth + 10;
      }
      
      override public function move(param1:int, param2:int) : void
      {
         if(stage && param1 + width > LayoutManager.stageWidth)
         {
            this.x = LayoutManager.stageWidth - width;
         }
         else
         {
            this.x = param1;
         }
         this.y = param2 + 10;
      }
   }
}
