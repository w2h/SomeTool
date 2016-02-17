package com.tencent.morefun.naruto.util
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.greensock.TweenLite;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import flash.text.TextFormat;
   import flash.text.TextFieldAutoSize;
   import flash.filters.GlowFilter;
   
   public class GameTipAnim extends Sprite
   {
      
      private static const TEXT_SIZE:int = 22;
      
      private static const TEXT_COLOR:uint = 15909438;
      
      private static const APPEAR_SPEED:Number = 1;
      
      private static const APPEAR_MOVE:int = -80;
      
      private static const STAY_DURATION:Number = 0.4;
      
      private static const DISAPPEAR_MOVE:int = -50;
      
      private static const DISAPPEAR_SPEED:Number = 0.5;
      
      private static const TEXT_GLOW_FILTER_COLOR:uint = 0;
      
      private static const TEXT_GLOW_FILTER_BLUR:int = 4;
      
      private static const TEXT_GLOW_FILTER_STRENGTH:Number = 10;
       
      private var _ui:Sprite;
      
      private var _txt:TextField;
      
      private var _onAnimComplete:Function;
      
      public function GameTipAnim(param1:Function = null)
      {
         super();
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this._ui = new Sprite();
         this.addChild(this._ui);
         this.initText();
         this._onAnimComplete = param1;
      }
      
      public function dispose() : void
      {
         if(this._ui != null)
         {
            this.removeChild(this._ui);
            this._ui.removeChild(this._txt);
            this._txt.filters = [];
            LayerManager.singleton.removeItemToLayer(this);
            TweenLite.killTweensOf(this._ui);
         }
         TweenLite.killTweensOf(this);
         this._ui = null;
         this._txt = null;
         this._onAnimComplete = null;
      }
      
      public function show(param1:String) : void
      {
         this._ui.alpha = 0;
         this._txt.htmlText = param1;
         this._ui.x = LayoutManager.stageWidth / 2 - this._txt.width / 2;
         this._ui.y = LayoutManager.stageHeight / 2;
         LayerManager.singleton.addItemToLayer(this,LayerDef.GAME_TIP);
         TweenLite.to(this._ui,APPEAR_SPEED,{
            "alpha":1,
            "y":this._ui.y + APPEAR_MOVE,
            "onComplete":this.onAppear
         });
      }
      
      private function initText() : void
      {
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.size = TEXT_SIZE;
         _loc1_.color = TEXT_COLOR;
         _loc1_.font = "SimSun";
         this._txt = new TextField();
         this._txt.autoSize = TextFieldAutoSize.LEFT;
         this._txt.defaultTextFormat = _loc1_;
         this._txt.filters = [this.getGameTipTextFilter()];
         this._ui.addChild(this._txt);
      }
      
      private function onAppear() : void
      {
         TweenLite.delayedCall(STAY_DURATION,this.onStay);
      }
      
      private function onStay() : void
      {
         if(this._ui == null)
         {
            return;
         }
         var _loc1_:int = this._ui.y + DISAPPEAR_MOVE;
         TweenLite.to(this._ui,DISAPPEAR_SPEED,{
            "alpha":0,
            "y":_loc1_,
            "onComplete":this.onDisappear
         });
      }
      
      private function onDisappear() : void
      {
         if(this._ui == null)
         {
            return;
         }
         LayerManager.singleton.removeItemToLayer(this);
         TweenLite.killTweensOf(this._ui);
         if(this._onAnimComplete != null)
         {
            this._onAnimComplete(this);
         }
      }
      
      private function getGameTipTextFilter() : GlowFilter
      {
         var _loc1_:GlowFilter = new GlowFilter(TEXT_GLOW_FILTER_COLOR,1,TEXT_GLOW_FILTER_BLUR,TEXT_GLOW_FILTER_BLUR,TEXT_GLOW_FILTER_STRENGTH);
         return _loc1_;
      }
   }
}
