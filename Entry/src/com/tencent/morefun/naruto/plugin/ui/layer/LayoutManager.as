package com.tencent.morefun.naruto.plugin.ui.layer
{
   import com.tencent.morefun.naruto.plugin.ui.box.BaseBox;
   import com.tencent.morefun.naruto.plugin.ui.box.IFullScreenBox;
   import com.tencent.morefun.naruto.plugin.ui.layer.def.LocationDef;
   
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.errors.IllegalOperationError;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class LayoutManager extends EventDispatcher
   {
      
      private static var instance:com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager;
      
      private static var vaildCreate:Boolean;
      
      public static var stageWidth:int;
      
      public static var stageHeight:int;
      
      public static var stageOffsetX:int;
      
      public static var stageOffsetY:int;
       
      public var minFrameWidth:int = 1020;
      
      public var minFrameHeight:int = 600;
      
      public var maxFrameWidth:int = 1920;
      
      public var maxFrameHeight:int = 1080;
      
      private var _itemArr:Array;
      
      private var m_stage:Stage;
      
      private var _boxSideWidth:int = 0;
      
      private var frameInfoList:Array;
      
      public function LayoutManager()
      {
         this.frameInfoList = [];
         super();
         if(vaildCreate == false)
         {
            throw new Error("LayoutManager 是单例!");
         }
         vaildCreate = false;
      }
      
      public static function get singleton() : com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager
      {
         if(instance == null)
         {
            vaildCreate = true;
            instance = new com.tencent.morefun.naruto.plugin.ui.layer.LayoutManager();
         }
         return instance;
      }
      
      public function initialize(param1:Stage) : void
      {
         this._itemArr = new Array();
         this.m_stage = param1;
         this.m_stage.addEventListener(Event.RESIZE,this.onStageResize,false,100);
         this.onStageResize(null);
      }
      
      public function get stage() : Stage
      {
         return this.m_stage;
      }
      
      public function pushFrameSize(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.frameInfoList.push({
            "minWidht":param1,
            "maxWidth":param2,
            "minHeight":param3,
            "maxHeight":param4
         });
         this.updateFrameSize(param1,param2,param3,param4);
      }
      
      public function popFrameSize() : void
      {
         var _loc1_:Object = null;
         if(this.frameInfoList.length == 1)
         {
            throw new Error("frameInfoList 数组越界");
         }
         this.frameInfoList.pop();
         _loc1_ = this.frameInfoList[this.frameInfoList.length - 1];
         this.updateFrameSize(_loc1_.minWidht,_loc1_.maxWidth,_loc1_.minHeight,_loc1_.maxHeight);
      }
      
      public function getCurFrameSize() : Object
      {
         return this.frameInfoList[this.frameInfoList.length - 1];
      }
      
      private function updateFrameSize(param1:int, param2:int, param3:int, param4:int) : void
      {
         this.minFrameWidth = param1;
         this.maxFrameWidth = param2;
         this.minFrameHeight = param3;
         this.maxFrameHeight = param4;
         this.m_stage.dispatchEvent(new Event(Event.RESIZE));
      }
      
      private function onStageResize(param1:Event) : void
      {
         stageWidth = this.m_stage.stageWidth;
         stageHeight = this.m_stage.stageHeight;
         stageWidth = Math.max(this.minFrameWidth,stageWidth);
         stageWidth = Math.min(this.maxFrameWidth,stageWidth);
         stageHeight = Math.max(this.minFrameHeight,stageHeight);
         stageHeight = Math.min(this.maxFrameHeight,stageHeight);
         stageOffsetX = (this.m_stage.stageWidth - stageWidth) / 2;
         stageOffsetY = (this.m_stage.stageHeight - stageHeight) / 2;
         LayerManager.singleton.updateFrameInfo(stageOffsetX,stageOffsetY,stageWidth,stageHeight);
         var _loc2_:int = 0;
         while(_loc2_ < this._itemArr.length)
         {
            this.locationRefresh(this._itemArr[_loc2_].item,this._itemArr[_loc2_].location,this._itemArr[_loc2_].offset,this._itemArr[_loc2_].layer,this._itemArr[_loc2_].calcWH);
            _loc2_++;
         }
      }
      
      private function locationRefresh(param1:DisplayObject, param2:int, param3:Point, param4:String, param5:Boolean) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new IllegalOperationError("Not decompiled due to error");
      }
      
      public function updateItemOffset(param1:DisplayObject, param2:Point = null) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         while(_loc4_ < this._itemArr.length)
         {
            _loc3_ = this._itemArr[_loc4_];
            if(_loc3_.item == param1)
            {
               _loc3_.offset = param2;
               break;
            }
            _loc4_++;
         }
         this.locationRefresh(_loc3_.item,_loc3_.location,_loc3_.offset,_loc3_.layer,_loc3_.calcWH);
      }
      
      public function addItemAndLayout(param1:DisplayObject, param2:String, param3:int, param4:Point = null, param5:Boolean = true) : void
      {
         var _loc6_:Object = new Object();
         _loc6_.item = param1;
         _loc6_.name = param2;
         _loc6_.location = param3;
         _loc6_.offset = param4;
         _loc6_.calcWH = param5;
         _loc6_.layer = param2;
         this._itemArr.push(_loc6_);
         this.locationRefresh(param1,param3,param4,param2,param5);
         LayerManager.singleton.addItemToLayer(param1,param2);
         param1.addEventListener(Event.RESIZE,this.onStageResize);
      }
      
      public function removeItem(param1:DisplayObject) : void
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         param1.removeEventListener(Event.RESIZE,this.onStageResize);
         LayerManager.singleton.removeItemToLayer(param1);
         var _loc3_:int = 0;
         while(_loc3_ < this._itemArr.length)
         {
            _loc2_ = this._itemArr[_loc3_];
            if(_loc2_.item == param1)
            {
               this._itemArr.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
      }
      
      public function get boxSideWidth() : int
      {
         return this._boxSideWidth;
      }
      
      public function set boxSideWidth(param1:int) : void
      {
         this._boxSideWidth = param1;
      }
   }
}
