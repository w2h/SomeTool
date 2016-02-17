package com.tencent.morefun.naruto.plugin.ui.layer
{
   import flash.events.EventDispatcher;
   import flash.geom.ColorTransform;
   import flash.filters.ColorMatrixFilter;
   import flash.display.Stage;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class LayerManager extends EventDispatcher
   {
      
      public static const COLOR_TRANSFORM_MASK:ColorTransform = new ColorTransform(0.26953125,0.26953125,0.26953125);
      
      public static const COLOR_TRANSFORM_NORMAL:ColorTransform = new ColorTransform();
      
      protected static var disableCM:ColorMatrixFilter = new ColorMatrixFilter([0.33,0.33,0.33,0,0,0.33,0.33,0.33,0,0,0.33,0.33,0.33,0,0,0,0,0,1,0]);
      
      private static var instance:com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
      
      private static var vaildCreate:Boolean;
       
      private var m_stage:Stage;
      
      private var m_layerList:Array;
      
      private var m_activateList:Array;
      
      private var offsetX:int;
      
      private var offsetY:int;
      
      private var stageScrollRect:Rectangle;
      
      public function LayerManager()
      {
         this.m_layerList = [];
         this.m_activateList = [];
         this.stageScrollRect = new Rectangle();
         super();
         if(vaildCreate == false)
         {
            throw new Error("LayerManager 是单例");
         }
         vaildCreate = false;
      }
      
      public static function get singleton() : com.tencent.morefun.naruto.plugin.ui.layer.LayerManager
      {
         if(instance == null)
         {
            vaildCreate = true;
            instance = new com.tencent.morefun.naruto.plugin.ui.layer.LayerManager();
         }
         return instance;
      }
      
      public function initialize(param1:Stage) : void
      {
         this.m_stage = param1;
      }
      
      public function createLayer(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = true) : void
      {
         var _loc6_:BaseLayer = null;
         _loc6_ = new BaseLayer(this.m_stage,this.reSortLayers);
         _loc6_.name = param1;
         _loc6_.mouseEnabled = param3;
         _loc6_.mouseChildren = param4;
         _loc6_.index = param2;
         _loc6_.updateOffset = param5;
         this.m_layerList.push(_loc6_);
         this.m_layerList.sortOn(["index"],Array.NUMERIC);
         if(param5)
         {
            _loc6_.x = this.offsetX;
            _loc6_.y = this.offsetY;
         }
      }
      
      public function removeLayer(param1:String) : void
      {
         var _loc2_:BaseLayer = null;
         _loc2_ = this.findLayerByName(param1);
         if(this.m_stage.contains(_loc2_))
         {
            this.m_stage.removeChild(_loc2_);
         }
         this.m_layerList.splice(this.m_layerList.indexOf(_loc2_),1);
      }
      
      public function addItemToLayer(param1:DisplayObject, param2:String) : void
      {
         var _loc3_:BaseLayer = null;
         _loc3_ = this.findLayerByName(param2);
         if(_loc3_ != null)
         {
            _loc3_.addChild(param1);
         }
      }
      
      public function addItemToLayerAt(param1:DisplayObject, param2:String, param3:int) : void
      {
         var _loc4_:BaseLayer = null;
         _loc4_ = this.findLayerByName(param2);
         if(_loc4_ != null)
         {
            _loc4_.addChildAt(param1,param3);
         }
      }
      
      public function removeItemToLayer(param1:DisplayObject) : void
      {
         var _loc2_:String = null;
         _loc2_ = this.findLayerByItem(param1);
         if(_loc2_ != null)
         {
            this.findLayerByName(_loc2_).removeChild(param1);
         }
      }
      
      public function getLayerActivate(param1:String) : Boolean
      {
         var _loc2_:BaseLayer = null;
         _loc2_ = this.findLayerByName(param1);
         this.m_activateList.push(param1);
         return _loc2_.isActivate;
      }
      
      public function setLayerActivate(param1:String, param2:Boolean) : void
      {
         var _loc3_:BaseLayer = null;
         _loc3_ = this.findLayerByName(param1);
         if(this.m_activateList.indexOf(param1) != -1)
         {
            this.m_activateList.splice(this.m_activateList.indexOf(param1),1);
         }
         _loc3_.isActivate = param2;
      }
      
      public function getActivateList() : Array
      {
         return this.m_activateList;
      }
      
      public function hasLayerChildName(param1:String, param2:String) : Boolean
      {
         return this.getLayerChildByName(param1,param2) != null;
      }
      
      public function getLayerChildByName(param1:String, param2:String) : DisplayObject
      {
         var _loc3_:String = null;
         var _loc4_:BaseLayer = null;
         var _loc5_:DisplayObject = null;
         _loc4_ = this.findLayerByName(param1);
         if(_loc4_ == null)
         {
            return null;
         }
         return _loc4_.getChildByName(param2);
      }
      
      public function findLayerByItem(param1:DisplayObject) : String
      {
         var _loc2_:BaseLayer = null;
         for each(_loc2_ in this.m_layerList)
         {
            if(_loc2_.contains(param1))
            {
               return _loc2_.name;
            }
         }
         return null;
      }
      
      public function isOffsetLayer(param1:String) : Boolean
      {
         var _loc2_:BaseLayer = null;
         _loc2_ = this.findLayerByName(param1);
         if(_loc2_)
         {
            return _loc2_.updateOffset;
         }
         return false;
      }
      
      public function findLayerByName(param1:String) : BaseLayer
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_layerList.length)
         {
            if(this.m_layerList[_loc2_].name == param1)
            {
               return this.m_layerList[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function setLayerIndex(param1:String, param2:int) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         while(_loc4_ < this.m_layerList.length)
         {
            if(this.m_layerList[_loc4_].name == param1)
            {
               _loc3_ = this.m_layerList[_loc4_];
               break;
            }
            _loc4_++;
         }
         if(_loc3_)
         {
            _loc3_["index"] = param2;
            this.m_layerList.sortOn(["index"],Array.NUMERIC);
            this.reSortLayers();
         }
      }
      
      public function setAllLayerVisible(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.m_layerList.length)
         {
            this.m_layerList[_loc2_].visible = param1;
            _loc2_++;
         }
      }
      
      public function setLayerVisible(param1:String, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.m_layerList.length)
         {
            if(this.m_layerList[_loc3_].name == param1)
            {
               this.m_layerList[_loc3_].visible = param2;
               break;
            }
            _loc3_++;
         }
      }
      
      public function setLayerEnabled(param1:String, param2:Boolean) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.m_layerList.length)
         {
            if(this.m_layerList[_loc3_].name == param1)
            {
               this.m_layerList[_loc3_].mouseEnabled = param2;
               this.m_layerList[_loc3_].mouseChildren = param2;
               break;
            }
            _loc3_++;
         }
      }
      
      public function updateFrameInfo(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc6_:BaseLayer = null;
         this.offsetX = param1;
         this.offsetY = param2;
         this.stageScrollRect.x = 0;
         this.stageScrollRect.y = 0;
         this.stageScrollRect.width = param3;
         this.stageScrollRect.height = param4;
         var _loc5_:int = 0;
         while(_loc5_ < this.m_layerList.length)
         {
            _loc6_ = this.m_layerList[_loc5_];
            if(_loc6_.updateOffset)
            {
               _loc6_.x = param1;
               _loc6_.y = param2;
            }
            _loc5_++;
         }
      }
      
      public function get stage() : Stage
      {
         return this.m_stage;
      }
      
      public function setAllLayerMonoMask() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_layerList.length)
         {
            this.m_layerList[_loc1_].transform.colorTransform = COLOR_TRANSFORM_MASK;
            _loc1_++;
         }
      }
      
      public function removeAllLayerMonoMask() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.m_layerList.length)
         {
            this.m_layerList[_loc1_].transform.colorTransform = COLOR_TRANSFORM_NORMAL;
            _loc1_++;
         }
      }
      
      public function reSortLayers() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < this.m_layerList.length)
         {
            if(this.m_layerList[_loc2_].parent)
            {
               if(this.m_stage.getChildIndex(this.m_layerList[_loc2_]) != _loc2_ + 1 - _loc1_)
               {
                  this.m_stage.setChildIndex(this.m_layerList[_loc2_],_loc2_ + 1 - _loc1_);
               }
            }
            else
            {
               _loc1_++;
            }
            _loc2_++;
         }
      }
      
      override public function toString() : String
      {
         var _loc3_:BaseLayer = null;
         var _loc1_:String = "";
         var _loc2_:int = 0;
         while(_loc2_ < this.m_layerList.length)
         {
            _loc3_ = this.m_layerList[_loc2_];
            _loc1_ = _loc1_ + ("{BaseLayer.name:" + _loc3_.name + ",BaseLayer.index:" + _loc3_.index + ",BaseLayer.parent:" + _loc3_.parent + ",BaseLayer.numChildren:" + _loc3_.numChildren + ",BaseLayer.width:" + _loc3_.width + ",BaseLayer.height:" + _loc3_.height + "}\r");
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
