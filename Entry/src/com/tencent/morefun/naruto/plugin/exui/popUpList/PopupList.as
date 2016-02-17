package com.tencent.morefun.naruto.plugin.exui.popUpList
{
   import flash.display.Sprite;
   import naruto.component.controls.Background_11;
   import com.tencent.morefun.naruto.plugin.ui.components.layouts.EasyLayout;
   import com.tencent.morefun.naruto.plugin.exui.render.PopupListItemRender;
   
   public class PopupList extends Sprite
   {
       
      private var bg:Background_11;
      
      private var list:EasyLayout;
      
      public function PopupList()
      {
         super();
         this.initUI();
      }
      
      private function initUI() : void
      {
         this.graphics.beginFill(0,0);
         this.graphics.drawRect(-5,-5,10,10);
         this.graphics.endFill();
         this.bg = new Background_11();
         addChild(this.bg);
         this.list = new EasyLayout(PopupListItemRender,5,1,0,0);
         this.list.x = 2;
         this.list.y = 22;
         addChild(this.list);
         this.bg.height = this.list.height + 22;
         this.bg.width = this.list.width + 4;
      }
      
      public function set data(param1:Array) : void
      {
         if(param1 && param1.length > 0)
         {
            this.list.row = param1.length;
         }
         this.list.dataProvider = param1;
         this.bg.height = this.list.height + 44;
         this.bg.width = this.list.width + 4;
      }
      
      public function get data() : Array
      {
         return this.list.dataProvider;
      }
      
      public function destroy() : void
      {
         removeChild(this.bg);
         this.bg.dispose();
         this.bg = null;
         removeChild(this.list);
         this.list.dispose();
         this.list = null;
      }
      
      public function dispose() : void
      {
         this.destroy();
      }
   }
}
