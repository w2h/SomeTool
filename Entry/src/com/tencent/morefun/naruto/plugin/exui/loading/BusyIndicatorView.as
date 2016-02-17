package com.tencent.morefun.naruto.plugin.exui.loading
{
   import ui.loading.BusyLoadingUI;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LayerDef;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class BusyIndicatorView extends LoadingView
   {
       
      private var _indicator:BusyLoadingUI;
      
      public function BusyIndicatorView()
      {
         super();
         addChild(this._indicator = new BusyLoadingUI());
         stopAnimation(this._indicator);
      }
      
      public function show(param1:Boolean = true) : void
      {
         LayerManager.singleton.addItemToLayer(this,LayerDef.LOADING);
         if(param1)
         {
            this._indicator.visible = true;
            resumeAnimation(this._indicator);
         }
         else
         {
            this._indicator.visible = false;
            stopAnimation(this._indicator);
         }
      }
      
      override protected function resizeUpdate(param1:Event) : void
      {
         super.resizeUpdate(param1);
         var _loc2_:Point = globalToLocal(new Point(stage.stageWidth / 2,stage.stageHeight / 2));
         this._indicator.x = _loc2_.x;
         this._indicator.y = _loc2_.y;
      }
      
      public function hide() : void
      {
         parent && parent.removeChild(this);
         stopAnimation(this._indicator);
      }
      
      override public function get bgAlpha() : Number
      {
         return 0;
      }
   }
}
