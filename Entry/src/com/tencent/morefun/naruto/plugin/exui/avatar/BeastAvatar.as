package com.tencent.morefun.naruto.plugin.exui.avatar
{
   import flash.display.Sprite;
   import com.tencent.morefun.naruto.plugin.exui.base.Image;
   import com.tencent.morefun.naruto.plugin.ui.tips.TipsManager;
   import throughTheBeast.data.BeastData;
   import def.TipsTypeDef;
   
   public class BeastAvatar extends Sprite
   {
       
      private var _img:Image;
      
      public function BeastAvatar(param1:int = 75, param2:int = 75)
      {
         super();
         this._img = new Image(param1,param2,true);
         this.addChild(this._img);
      }
      
      public function destroy() : void
      {
         this.reset();
         this._img = null;
      }
      
      public function reset() : void
      {
         this._img.dispose();
         TipsManager.singleton.unbinding(this._img);
      }
      
      public function loadByData(param1:BeastData, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         if(param1 != null)
         {
            _loc3_ = "assets/bag/item/" + param1.id + ".png";
            this._img.load(_loc3_);
            if(param2)
            {
               TipsManager.singleton.binding(this._img,param1,TipsTypeDef.BEAST);
            }
         }
         else
         {
            this.reset();
         }
      }
   }
}
