package com.tencent.morefun.naruto.plugin.exui.card
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.BeastCardUI;
   import com.tencent.morefun.naruto.plugin.exui.item.ItemIcon;
   import bag.data.ItemData;
   import bag.data.BeastFragmentData;
   
   public class BeastCardView extends Sprite
   {
      
      public static const IMG_WIDTH:int = 300;
      
      public static const IMG_HEIGHT:int = 410;
       
      private var _ui:BeastCardUI;
      
      private var _img:ItemIcon;
      
      public function BeastCardView()
      {
         super();
         this._img = new ItemIcon(IMG_WIDTH,IMG_HEIGHT);
         this._img.x = 0;
         this._img.y = 0;
         this._ui = new BeastCardUI();
         this._ui.stop();
         this.addChild(this._ui);
         this._ui.imageUI.addChild(this._img);
      }
      
      public function dispose() : void
      {
         if(this._img.parent)
         {
            this._img.parent.removeChild(this._img);
         }
         this._img.destroy();
         this._img = null;
         this.removeChild(this._ui);
         this._ui = null;
      }
      
      public function set data(param1:ItemData) : void
      {
         var _loc2_:String = null;
         if(param1 != null)
         {
            _loc2_ = "assets/cardPackage/beastImage/" + BeastFragmentData(param1).beastId + ".png";
            this._img.load(_loc2_);
            this._ui.nameTf.visible = true;
            this._ui.nameTf.text = param1.name;
            this._ui.gotoAndStop(param1.type);
         }
      }
      
      public function hideName() : void
      {
         this._ui.nameTf.visible = false;
      }
   }
}
