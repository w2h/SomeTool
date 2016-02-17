package com.tencent.morefun.naruto.plugin.exui.loading
{
   import com.tencent.morefun.naruto.plugin.exui.loading.flash.ProgressLoadingUI;
   import flash.events.Event;
   import flash.geom.Point;
   import ui.loading.FullScreenProgressLoadingUI;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   
   public class ProgressLoadingView extends LoadingView
   {
       
      private var _view:ProgressLoadingUI;
      
      private var _percent:Number = 0;
      
      private var _bgAlpha:Number;
      
      private var _loadingLineWidth:int;
      
      private var _loadingLineX:int;
      
      public function ProgressLoadingView(param1:ProgressLoadingUI, param2:Number = 1)
      {
         super();
         this._bgAlpha = param2;
         addChild(this._view = param1);
         stopAnimation(this._view);
         this._loadingLineWidth = this._view.loadingLine.width;
         this._loadingLineX = this._view.loadingLine.x;
      }
      
      override protected function resizeUpdate(param1:Event) : void
      {
         super.resizeUpdate(param1);
         var _loc2_:Point = globalToLocal(new Point(stage.stageWidth / 2,stage.stageHeight / 2));
         this._view.x = _loc2_.x;
         this._view.y = _loc2_.y;
      }
      
      public function keepClean(param1:Boolean = false) : void
      {
         if(this._view.indicator)
         {
            this._view.indicator.visible = false;
         }
         this._view.detailInfo.text = "";
         this._view.errorTips.text = "";
         this._view.assetTips.text = "";
         if(this._view.countdown)
         {
            this._view.countdown.text = "";
         }
         if(param1)
         {
            this.percent = 0;
         }
      }
      
      public function show() : void
      {
         var _loc1_:uint = 0;
         if(this._view is FullScreenProgressLoadingUI)
         {
            LayerManager.singleton.addItemToLayer(this,LayerDef.FULL_LOADING);
         }
         else
         {
            LayerManager.singleton.addItemToLayer(this,LayerDef.LOADING);
         }
         resumeAnimation(this._view);
         if(tipslist && tipslist.length)
         {
            _loc1_ = tipslist.length * Math.random() >> 0;
            this._view.helpTips.visible = true;
            this._view.helpTips.htmlText = "<font color=\'#FFFFFF\'>" + "小贴士：" + tipslist[_loc1_] + "</font>";
         }
         else
         {
            this._view.helpTips.visible = false;
         }
      }
      
      public function hide() : void
      {
         parent && parent.removeChild(this);
         stopAnimation(this._view);
      }
      
      public function setCountDownInfo(param1:String) : void
      {
         if(this._view.countdown)
         {
            this._view.countdown.htmlText = param1;
         }
      }
      
      public function setWaitingInfo(param1:String) : void
      {
         this._view.indicator.visible = Boolean(param1);
         this._view.detailInfo.htmlText = param1;
      }
      
      public function get percent() : Number
      {
         return this._percent;
      }
      
      public function set percent(param1:Number) : void
      {
         var _loc5_:* = 0;
         this._percent = isNaN(param1)?0:Math.max(0,Math.min(100,param1));
         this._view.loadingLine.x = this._loadingLineX - this._loadingLineWidth + this._loadingLineWidth * this._percent / 100;
         var _loc2_:String = Math.floor(this._percent + 1 / 10000000).toString();
         var _loc3_:Array = _loc2_.split("");
         var _loc4_:int = 2;
         while(_loc4_ >= 0)
         {
            this._view.percentMC["mc" + _loc4_].visible = _loc3_.length > 0;
            if(_loc3_.length > 0)
            {
               _loc5_ = _loc3_.pop();
               this._view.percentMC["mc" + _loc4_].gotoAndStop(_loc5_ + 1);
            }
            else
            {
               this._view.percentMC["mc" + _loc4_].gotoAndStop(1);
            }
            _loc4_--;
         }
         if(this._view.anchor)
         {
            this._view.anchor.x = this._view.loadingLine.x + this._loadingLineWidth;
         }
         if(this._view.anchorAnimation)
         {
            this._view.anchorAnimation.x = this._view.loadingLine.x + this._loadingLineWidth;
         }
      }
      
      public function get view() : ProgressLoadingUI
      {
         return this._view;
      }
      
      override public function get bgAlpha() : Number
      {
         return this._bgAlpha;
      }
      
      public function get assetTips() : String
      {
         return this._view.assetTips.text;
      }
      
      public function set assetTips(param1:String) : void
      {
         this._view.assetTips.htmlText = param1;
      }
      
      public function get errorTips() : String
      {
         return this._view.errorTips.text;
      }
      
      public function set errorTips(param1:String) : void
      {
         this._view.errorTips.htmlText = param1;
      }
   }
}
