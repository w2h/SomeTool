package com.tencent.morefun.naruto.mmefile.render
{
   import flash.display.Sprite;
   
   public class MmeAssetMultiRender extends Sprite
   {
       
      private var renders:Vector.<com.tencent.morefun.naruto.mmefile.render.MmeAssetRender>;
      
      private var layerNum:int;
      
      public function MmeAssetMultiRender(param1:int, param2:MmeAsset = null)
      {
         super();
         this.layerNum = param1;
         this.renders = new Vector.<MmeAssetRender>(param1);
         var _loc3_:int = 0;
         while(_loc3_ < param1)
         {
            this.renders[_loc3_] = new com.tencent.morefun.naruto.mmefile.render.MmeAssetRender(param2);
            addChild(this.renders[_loc3_]);
            _loc3_++;
         }
      }
      
      public function addFrameEventListener(param1:Function) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.layerNum)
         {
            this.renders[_loc2_].addEventListener(MmeAssetRenderEvent.FRAME_EVENT,param1);
            _loc2_++;
         }
      }
      
      public function removeFrameEventListener(param1:Function) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.layerNum)
         {
            this.renders[_loc2_].removeEventListener(MmeAssetRenderEvent.FRAME_EVENT,param1);
            _loc2_++;
         }
      }
      
      public function play(param1:String, param2:int = 0, param3:Boolean = false) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < this.layerNum)
         {
            if(this.renders[_loc4_].getMmeData() != null)
            {
               this.renders[_loc4_].play(param1,param2,param3);
            }
            _loc4_++;
         }
      }
      
      public function stop() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.layerNum)
         {
            this.renders[_loc1_].stop();
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.layerNum)
         {
            this.renders[_loc1_].visible = true;
            _loc1_++;
         }
      }
      
      public function hide() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.layerNum)
         {
            this.renders[_loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function getRenderByIndex(param1:int) : com.tencent.morefun.naruto.mmefile.render.MmeAssetRender
      {
         return this.renders[param1];
      }
      
      public function destoryByIndex(param1:int) : void
      {
         if(this.renders[param1] != null)
         {
            this.renders[param1].destroy();
         }
      }
      
      public function destory() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.layerNum)
         {
            this.renders[_loc1_].destroy();
            _loc1_++;
         }
         this.removeChildren();
      }
      
      public function autoSetNull() : void
      {
      }
   }
}
