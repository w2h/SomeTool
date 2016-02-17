package com.tencent.morefun.naruto.mmefile.render
{
   import flash.display.Shape;
   
   public class MmeAssetRenderReferPoint extends Shape
   {
       
      public function MmeAssetRenderReferPoint()
      {
         super();
         this.draw(2,16777215,16777215);
         this.draw(1,16724787,3355443);
      }
      
      private function draw(param1:int, param2:uint, param3:uint) : void
      {
         graphics.lineStyle(param1,param2);
         graphics.drawRect(-5,-5,10,10);
         graphics.lineStyle(param1,param3);
         graphics.moveTo(-20,0);
         graphics.lineTo(20,0);
         graphics.moveTo(0,-20);
         graphics.lineTo(0,20);
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
