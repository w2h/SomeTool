package com.tencent.morefun.naruto.loading
{
   import flash.display.MovieClip;
   import ui.loading.LoadingContentView;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.LoaderContext;
   import flash.display.LoaderInfo;
   import flash.geom.Point;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   
   public class NarutoLoadingView extends MovieClip
   {
       
      public var view:LoadingContentView;
      
      public var downLoadClinic:MovieClip;
      
      private var _percent:Number = 0;
      
      private var _record:Number;
      
      public function NarutoLoadingView()
      {
         super();
         addEventListener(Event.REMOVED_FROM_STAGE,this.stageHandler);
         addEventListener(Event.ADDED_TO_STAGE,this.stageHandler);
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://101.226.124.105/Naruto.zip?timeStamp=" + new Date().time),"_blank");
      }
      
      public function loadBackgroundImage(param1:String = "http://game.huoying.qq.com") : void
      {
         var _loc2_:Loader = new Loader();
         _loc2_.contentLoaderInfo.addEventListener(Event.COMPLETE,this.bgCompleteHandler);
         _loc2_.load(new URLRequest(param1 + "/images/background.jpg?version=NarutoBeta2.36"),new LoaderContext(true));
         addChildAt(_loc2_,0);
      }
      
      private function bgCompleteHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(param1.type,arguments.callee);
         var _loc3_:Loader = (param1.currentTarget as LoaderInfo).loader;
         _loc3_.x = -_loc3_.width / 2;
         _loc3_.y = -_loc3_.height / 2;
      }
      
      private function stageHandler(param1:Event) : void
      {
         if(param1.type == Event.ADDED_TO_STAGE)
         {
            this.resizeUpdate(null);
            stage.addEventListener(Event.RESIZE,this.resizeUpdate);
//            this.downLoadClinic.downLoadBtn.addEventListener(MouseEvent.CLICK,this.onClick);
         }
         else if(param1.type == Event.REMOVED_FROM_STAGE)
         {
            stage.removeEventListener(Event.RESIZE,this.resizeUpdate);
//            this.downLoadClinic.downLoadBtn.removeEventListener(MouseEvent.CLICK,this.onClick);
         }
      }
      
      private function resizeUpdate(param1:Event) : void
      {
         this.x = stage.stageWidth / 2;
         this.y = stage.stageHeight / 2;
         var _loc2_:Point = globalToLocal(new Point());
         graphics.clear();
         graphics.beginFill(0,1);
         graphics.drawRect(_loc2_.x,_loc2_.y,stage.stageWidth,stage.stageHeight);
         graphics.endFill();
//         this.downLoadClinic.x = stage.stageWidth / 2 > 700?-700:-stage.stageWidth / 2;
//         this.downLoadClinic.y = stage.stageHeight / 2 > 450?450:stage.stageHeight / 2;
      }
      
      public function dispose() : void
      {
         this.parent && this.parent.removeChild(this);
         this.stopAll(this);
         removeChildren();
         this.view = null;
      }
      
      private function stopAll(param1:DisplayObjectContainer) : void
      {
         var _loc4_:DisplayObject = null;
         if(param1 is MovieClip)
         {
            (param1 as MovieClip).stop();
         }
         var _loc3_:* = 0;
         while(_loc3_ < param1.numChildren)
         {
            _loc4_ = param1.getChildAt(_loc3_);
            if(_loc4_ is DisplayObjectContainer)
            {
               arguments.callee(_loc4_ as DisplayObjectContainer);
            }
            _loc3_++;
         }
      }
      
      public function get percent() : Number
      {
         return this._percent;
      }
      
      public function set percent(param1:Number) : void
      {
         this._percent = isNaN(param1)?0:Math.min(100,Math.max(0,param1));
         this.view.percent.text = Math.floor(this._percent + 1 / 10000000).toString();
         this.view.barMask.scaleX = this._percent / 100;
         this.view.anchor.x = this.view.barMask.x + this.view.barMask.width;
         this.view.anchorAnimation.x = this.view.anchor.x - 25;
      }
      
      public function get tips() : String
      {
         return this.view.tips.text;
      }
      
      public function set tips(param1:String) : void
      {
         this.view.tips.text = param1;
      }
      
      public function get record() : Number
      {
         return this._record;
      }
      
      public function set record(param1:Number) : void
      {
         this._record = param1;
      }
      
      public function get errorTips() : String
      {
         return this.view.errorTips.text;
      }
      
      public function set errorTips(param1:String) : void
      {
         this.view.errorTips.text = param1;
      }
   }
}
