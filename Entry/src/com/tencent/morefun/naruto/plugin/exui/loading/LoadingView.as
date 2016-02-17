package com.tencent.morefun.naruto.plugin.exui.loading
{
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import com.tencent.morefun.framework.net.LoadManager;
   
   public class LoadingView extends Sprite implements ILoadingMask
   {
      
      protected static var tipslist:Vector.<String>;
       
      public function LoadingView()
      {
         super();
         mouseChildren = false;
         addEventListener(Event.REMOVED_FROM_STAGE,this.stageHandler);
         addEventListener(Event.ADDED_TO_STAGE,this.stageHandler);
         if(!tipslist)
         {
            tipslist = new Vector.<String>();
            LoadManager.getManager().loadTask("config/LoadingTips.xml",this.processTipsTask);
         }
      }
      
      protected static function stopAnimation(param1:DisplayObjectContainer) : void
      {
         var _loc3_:DisplayObject = null;
         if(param1 is MovieClip)
         {
            (param1 as MovieClip).stop();
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc4_);
            if(_loc3_ is DisplayObjectContainer)
            {
               arguments.callee(_loc3_ as DisplayObjectContainer);
            }
            _loc4_++;
         }
      }
      
      protected static function resumeAnimation(param1:DisplayObjectContainer) : void
      {
         var _loc3_:DisplayObject = null;
         if(param1 is MovieClip)
         {
            (param1 as MovieClip).play();
         }
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc4_);
            if(_loc3_ is DisplayObjectContainer)
            {
               arguments.callee(_loc3_ as DisplayObjectContainer);
            }
            _loc4_++;
         }
      }
      
      private function processTipsTask(param1:XML) : void
      {
         var _loc2_:XML = null;
         if(!param1)
         {
            return;
         }
         for each(_loc2_ in param1.item)
         {
            tipslist.push(_loc2_.@msg);
         }
      }
      
      private function stageHandler(param1:Event) : void
      {
         if(param1.type == Event.ADDED_TO_STAGE)
         {
            this.resizeUpdate(null);
            stage.addEventListener(Event.RESIZE,this.resizeUpdate);
         }
         else if(param1.type == Event.REMOVED_FROM_STAGE)
         {
            stage.removeEventListener(Event.RESIZE,this.resizeUpdate);
         }
      }
      
      protected function resizeUpdate(param1:Event) : void
      {
         var _loc2_:Point = globalToLocal(new Point());
         graphics.clear();
         graphics.beginFill(this.bgColor,this.bgAlpha);
         graphics.drawRect(_loc2_.x,_loc2_.y,stage.stageWidth,stage.stageHeight);
         graphics.endFill();
      }
      
      public function get bgColor() : uint
      {
         return 0;
      }
      
      public function get bgAlpha() : Number
      {
         return 1;
      }
   }
}
