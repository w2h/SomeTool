package com.tencent.morefun.naruto.plugin.ui.popup
{
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
   import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
   
   public class PopResizeManager
   {
      
      private static var instance:com.tencent.morefun.naruto.plugin.ui.popup.PopResizeManager = new com.tencent.morefun.naruto.plugin.ui.popup.PopResizeManager();
       
      private var _childSpDict:Dictionary;
      
      public function PopResizeManager()
      {
         super();
         this.init();
      }
      
      public static function addChildPopResize(param1:DisplayObject, param2:int = 4, param3:int = 0, param4:int = 0) : void
      {
         instance.addChildPos(param1,param2,param3,param4);
      }
      
      private function addChildPos(param1:DisplayObject, param2:int, param3:int = 0, param4:int = 0) : void
      {
         this._childSpDict[param1] = {
            "pos":param2,
            "disX":param3,
            "disY":param4
         };
         param1.addEventListener(Event.REMOVED_FROM_STAGE,this.removeChildHandler,false,0,true);
         this.refreshChildPos(param1);
      }
      
      private function refreshChildPos(param1:DisplayObject, param2:Boolean = false) : void
      {
         if(!param1.parent)
         {
            return;
         }
         var _loc3_:Point = new Point();
         var _loc4_:Object = this._childSpDict[param1];
         if(_loc4_.pos == PopResizeEnum.LEFT_TOP)
         {
            if(param2)
            {
               _loc3_.x = _loc4_.disX;
               _loc3_.y = _loc4_.disY;
            }
         }
         else if(_loc4_.pos == PopResizeEnum.LEFT_BOTTOM)
         {
            _loc3_.x = _loc4_.disX;
            _loc3_.y = LayoutManager.stageHeight - _loc4_.disY;
         }
         else if(_loc4_.pos == PopResizeEnum.RIGHT_TOP)
         {
            _loc3_.x = LayoutManager.stageWidth - _loc4_.disX;
            _loc3_.y = _loc4_.disY;
         }
         else if(_loc4_.pos == PopResizeEnum.RIGHT_BOTTOM)
         {
            _loc3_.x = LayoutManager.stageWidth - _loc4_.disX;
            _loc3_.y = LayoutManager.stageHeight - _loc4_.disY;
         }
         else if(_loc4_.pos == PopResizeEnum.CENTER)
         {
            _loc3_.x = LayoutManager.stageWidth * 0.5 + _loc4_.disX;
            _loc3_.y = LayoutManager.stageHeight * 0.5 + _loc4_.disY;
         }
         else if(_loc4_.pos == PopResizeEnum.CENTER_TOP)
         {
            _loc3_.x = LayoutManager.stageWidth * 0.5 + _loc4_.disX;
            _loc3_.y = _loc4_.disY;
         }
         else if(_loc4_.pos == PopResizeEnum.CENTER_BOTTOM)
         {
            _loc3_.x = LayoutManager.stageWidth * 0.5 + _loc4_.disX;
            _loc3_.y = LayoutManager.stageHeight - _loc4_.disY;
         }
         else if(_loc4_.pos == PopResizeEnum.CENTER_LEFT)
         {
            _loc3_.x = _loc4_.disX;
            _loc3_.y = LayoutManager.stageHeight * 0.5 + _loc4_.disY;
         }
         else if(_loc4_.pos == PopResizeEnum.CENTER_RIGHT)
         {
            _loc3_.x = LayoutManager.stageWidth - _loc4_.disX;
            _loc3_.y = LayoutManager.stageHeight * 0.5 + _loc4_.disY;
         }
         param1.x = param1.parent.globalToLocal(_loc3_).x;
         param1.y = param1.parent.globalToLocal(_loc3_).y;
      }
      
      private function init() : void
      {
         this._childSpDict = new Dictionary();
         LayerManager.singleton.stage.addEventListener(Event.RESIZE,this.resizeHandler,false,1000);
      }
      
      private function resizeHandler(param1:Event) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in this._childSpDict)
         {
            this.refreshChildPos(_loc2_,true);
         }
      }
      
      private function removeChildHandler(param1:Event) : void
      {
         var _loc2_:DisplayObject = param1.currentTarget as DisplayObject;
         _loc2_.removeEventListener(Event.REMOVED_FROM_STAGE,this.removeChildHandler);
         delete this._childSpDict[_loc2_];
      }
   }
}
