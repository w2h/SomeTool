package com.tencent.morefun.naruto.mmefile.render
{
   import flash.geom.ColorTransform;
   import com.tencent.morefun.naruto.mmefile.render.datas.MmeData;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import com.tencent.morefun.naruto.mmefile.render.datas.LayerData;
   import com.tencent.morefun.naruto.mmefile.render.datas.FrameData;
   import com.tencent.morefun.naruto.mmefile.render.datas.ElementData;
   import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
   import com.tencent.morefun.naruto.mmefile.render.datas.ActionData;
   import com.tencent.morefun.naruto.mmefile.render.datas.AssetData;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.util.CollectionClearUtil;
   
   public class SimpleInnerRenderer extends BaseInnerRenderer
   {
      
      protected static var DEFAULT_COLOR_TRANSFORM:ColorTransform = new ColorTransform();
      
      private static const BLAND_NORMAL:String = "normal";
       
      protected var mmeAsset:com.tencent.morefun.naruto.mmefile.render.MmeAsset;
      
      protected var mmeData:MmeData;
      
      protected var appDomain:ApplicationDomain;
      
      protected var currActionIndex:int;
      
      protected var bitmaps:Dictionary;
      
      private var hitTestPointTemp:Point;
      
      public function SimpleInnerRenderer(param1:MmeAssetRender, param2:MmeData, param3:com.tencent.morefun.naruto.mmefile.render.MmeAsset, param4:ApplicationDomain)
      {
         super(param1);
         this.mmeData = param2;
         this.mmeAsset = param3;
         this.appDomain = param4;
      }
      
      override function gotoAction(param1:String, param2:int = 0) : Boolean
      {
         var _loc6_:LayerData = null;
         var _loc7_:FrameData = null;
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.mmeData.actionDatas.length)
         {
            if(this.mmeData.actionDatas[_loc4_].name == param1)
            {
               _loc3_ = _loc4_;
               break;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            return false;
         }
         var _loc5_:int = 0;
         for each(_loc6_ in this.mmeData.actionDatas[_loc3_].layerDatas)
         {
            for each(_loc7_ in _loc6_.frameDatas)
            {
               if(_loc5_ < _loc7_.index + _loc7_.length - 1)
               {
                  _loc5_ = _loc7_.index + _loc7_.length - 1;
               }
            }
         }
         currActionName = param1;
         this.currActionIndex = _loc3_;
         currTotalFrame = _loc5_;
         currFrame = Math.max(0,Math.min(param2,_loc5_));
         this.update();
         return true;
      }
      
      override function update() : void
      {
         var _loc2_:MmeAssetRenderEvent = null;
         var _loc4_:LayerData = null;
         var _loc5_:FrameData = null;
         var _loc6_:ElementData = null;
         var _loc7_:MmeAssetBitmap = null;
         var _loc8_:String = null;
         var _loc9_:PointElementData = null;
         var _loc10_:MmeAssetRenderReferPoint = null;
         var _loc11_:* = false;
         var _loc12_:String = null;
         var _loc1_:int = 0;
         var _loc3_:int = this.mmeData.actionDatas[this.currActionIndex].layerDatas.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = this.mmeData.actionDatas[this.currActionIndex].layerDatas[_loc3_];
            for each(_loc5_ in _loc4_.frameDatas)
            {
               if(_loc5_.index <= currFrame && _loc5_.index + _loc5_.length > currFrame)
               {
                  if(_loc5_.sound && _loc5_.index == currFrame)
                  {
                     if(render.hasEventListener(MmeAssetRenderEvent.FRAME_SOUND))
                     {
                        _loc2_ = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_SOUND);
                        _loc2_.sound = _loc5_.sound;
                        _loc2_.volume = _loc5_.volume;
                        render.dispatchEvent(_loc2_);
                     }
                  }
                  if(_loc5_.useTween && _loc5_.index != currFrame)
                  {
                     _loc5_ = this.getTweenFrameData(currFrame,_loc5_,_loc4_.frameDatas) || _loc5_;
                  }
                  _loc6_ = _loc5_.element as ElementData;
                  if(_loc6_)
                  {
                     if(_loc6_.extname)
                     {
                        _loc7_ = this.getBitmapFromShared(_loc6_.extname,_loc3_);
                        if(_loc7_ == null)
                        {
                           throw new MmeAssetError("未找到资源 " + _loc6_.extname + " 似乎是共享资源引起的");
                        }
                     }
                     else
                     {
                        _loc7_ = this.getBitmap(_loc6_.assetName,_loc3_);
                     }
                     _loc8_ = _loc6_.blendMode || BLAND_NORMAL;
                     if(_loc7_.blendMode != _loc8_)
                     {
                        _loc7_.blendMode = _loc8_;
                     }
                     _loc7_.x = _loc6_.x;
                     _loc7_.y = _loc6_.y;
                     _loc7_.scaleX = _loc6_.scaleX;
                     _loc7_.scaleY = _loc6_.scaleY;
                     _loc7_.rotation = _loc6_.rotation;
                     _loc7_.colorTransform = _loc6_.color.getColorTransform() || DEFAULT_COLOR_TRANSFORM;
                     _loc7_.alpha = _loc6_.alpha;
                     if(!render.contains(_loc7_))
                     {
                        render.addChildAt(_loc7_,_loc1_);
                     }
                     else if(render.getChildIndex(_loc7_) != _loc1_)
                     {
                        render.setChildIndex(_loc7_,_loc1_);
                     }
                     _loc1_++;
                  }
                  if(render.referPointVisible && _loc5_.element is PointElementData)
                  {
                     _loc9_ = _loc5_.element as PointElementData;
                     _loc10_ = new MmeAssetRenderReferPoint();
                     _loc10_.x = _loc9_.x;
                     _loc10_.y = _loc9_.y;
                     if(!render.contains(_loc10_))
                     {
                        render.addChildAt(_loc10_,_loc1_++);
                     }
                     else
                     {
                        render.setChildIndex(_loc10_,_loc1_++);
                     }
                  }
                  if(_loc5_.event && _loc5_.index == currFrame)
                  {
                     _loc11_ = false;
                     for each(_loc12_ in _loc5_.events)
                     {
                        if(render.hasEventListener(MmeAssetRenderEvent.FRAME_EVENT))
                        {
                           _loc2_ = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT,_loc12_);
                           render.dispatchEvent(_loc2_);
                           _loc11_ = _loc11_ || _loc2_.isStopUpdated;
                        }
                     }
                     if(_loc11_ || this.mmeData == null)
                     {
                        return;
                     }
                  }
               }
            }
            _loc3_--;
         }
         while(render.numChildren > _loc1_)
         {
            render.removeChildAt(_loc1_);
         }
      }
      
      override public function getCurrReferPoints() : Array
      {
         var _loc2_:LayerData = null;
         var _loc3_:FrameData = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.mmeData.actionDatas[this.currActionIndex].layerDatas)
         {
            for each(_loc3_ in _loc2_.frameDatas)
            {
               if(_loc3_.index <= currFrame && currFrame < _loc3_.index + _loc3_.length)
               {
                  if(_loc3_.useTween && _loc3_.index != currFrame)
                  {
                     _loc3_ = this.getTweenFrameData(currFrame,_loc3_,_loc2_.frameDatas) || _loc3_;
                  }
                  if(_loc3_.element is PointElementData)
                  {
                     _loc1_.push(_loc3_.element);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      override public function getCurrReferPointByName(param1:String) : PointElementData
      {
         var _loc2_:LayerData = null;
         var _loc3_:FrameData = null;
         var _loc4_:PointElementData = null;
         for each(_loc2_ in this.mmeData.actionDatas[this.currActionIndex].layerDatas)
         {
            for each(_loc3_ in _loc2_.frameDatas)
            {
               if(_loc3_.index <= currFrame && currFrame < _loc3_.index + _loc3_.length)
               {
                  if(_loc3_.useTween && _loc3_.index != currFrame)
                  {
                     _loc3_ = this.getTweenFrameData(currFrame,_loc3_,_loc2_.frameDatas) || _loc3_;
                  }
                  _loc4_ = _loc3_.element as PointElementData;
                  if(_loc4_ && _loc4_.name == param1)
                  {
                     return _loc4_;
                  }
               }
            }
         }
         return null;
      }
      
      override public function getReferPointsFromAction(param1:String, param2:int) : Array
      {
         var _loc4_:ActionData = null;
         var _loc5_:LayerData = null;
         var _loc6_:FrameData = null;
         if(!this.mmeData)
         {
            return null;
         }
         var _loc3_:Array = [];
         for each(_loc4_ in this.mmeData.actionDatas)
         {
            if(_loc4_.name == param1)
            {
               for each(_loc5_ in _loc4_.layerDatas)
               {
                  for each(_loc6_ in _loc5_.frameDatas)
                  {
                     if(_loc6_.index <= param2 && param2 < _loc6_.index + _loc6_.length)
                     {
                        if(_loc6_.useTween && _loc6_.index != currFrame)
                        {
                           _loc6_ = this.getTweenFrameData(currFrame,_loc6_,_loc5_.frameDatas) || _loc6_;
                        }
                        if(_loc6_.element is PointElementData)
                        {
                           _loc3_.push(_loc6_.element);
                        }
                     }
                  }
               }
               break;
            }
         }
         return _loc3_;
      }
      
      override public function getReferPointFromActionByName(param1:String, param2:int, param3:String) : PointElementData
      {
         var _loc4_:ActionData = null;
         var _loc5_:LayerData = null;
         var _loc6_:FrameData = null;
         var _loc7_:PointElementData = null;
         if(!this.mmeData)
         {
            return null;
         }
         for each(_loc4_ in this.mmeData.actionDatas)
         {
            if(_loc4_.name == param1)
            {
               for each(_loc5_ in _loc4_.layerDatas)
               {
                  for each(_loc6_ in _loc5_.frameDatas)
                  {
                     if(_loc6_.index <= param2 && param2 < _loc6_.index + _loc6_.length)
                     {
                        if(_loc6_.useTween && _loc6_.index != currFrame)
                        {
                           _loc6_ = this.getTweenFrameData(currFrame,_loc6_,_loc5_.frameDatas) || _loc6_;
                        }
                        _loc7_ = _loc6_.element as PointElementData;
                        if(_loc7_ && _loc7_.name == param3)
                        {
                           return _loc7_;
                        }
                     }
                  }
               }
               break;
            }
         }
         return null;
      }
      
      override public function getTotalFrameByActionName(param1:String) : int
      {
         var _loc2_:* = 0;
         var _loc5_:LayerData = null;
         var _loc6_:FrameData = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.mmeData.actionDatas.length)
         {
            if(this.mmeData.actionDatas[_loc3_].name == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_ == -1)
         {
            return -1;
         }
         var _loc4_:int = 0;
         for each(_loc5_ in this.mmeData.actionDatas[_loc2_].layerDatas)
         {
            for each(_loc6_ in _loc5_.frameDatas)
            {
               if(_loc4_ < _loc6_.index + _loc6_.length - 1)
               {
                  _loc4_ = _loc6_.index + _loc6_.length - 1;
               }
            }
         }
         return _loc4_;
      }
      
      override public function getActionNames() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         while(_loc3_ < this.mmeData.actionDatas.length)
         {
            _loc1_.push(this.mmeData.actionDatas[_loc3_].name);
            _loc3_++;
         }
         return _loc1_;
      }
      
      override public function hasActionName(param1:String) : Boolean
      {
         if(this.mmeData == null || this.mmeData.actionDatas == null)
         {
            return false;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.mmeData.actionDatas.length)
         {
            if(this.mmeData.actionDatas[_loc2_].name == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      override public function eventIndexOf(param1:String, param2:String, param3:int = 1) : Array
      {
         var _loc5_:ActionData = null;
         var _loc6_:LayerData = null;
         var _loc7_:* = 0;
         var _loc8_:Array = null;
         if(!this.mmeData)
         {
            return null;
         }
         var _loc4_:Array = [];
         for each(_loc5_ in this.mmeData.actionDatas)
         {
            if(_loc5_.name == param1)
            {
               for each(_loc6_ in _loc5_.layerDatas)
               {
                  _loc7_ = 0;
                  while(_loc7_ < _loc6_.frameDatas.length)
                  {
                     _loc8_ = _loc6_.frameDatas[_loc7_].event.split(",");
                     if(_loc8_.indexOf(param2) != -1)
                     {
                        _loc4_.push(_loc6_.frameDatas[_loc7_].index);
                        if(_loc4_.length >= param3)
                        {
                           return _loc4_;
                        }
                     }
                     _loc7_++;
                  }
               }
               break;
            }
         }
         return _loc4_;
      }
      
      protected function getBitmapFromShared(param1:String, param2:int) : MmeAssetBitmap
      {
         var _loc4_:AssetData = null;
         var _loc5_:BitmapData = null;
         var _loc3_:MmeData = this.mmeAsset.getSharedMmeData();
         if(_loc3_)
         {
            _loc4_ = this.mmeAsset.getSharedAssetData(param1);
            if(_loc4_ == null)
            {
               return null;
            }
            _loc5_ = this.mmeAsset.getSharedAsset(_loc4_.className);
            if(_loc5_ == null)
            {
               return null;
            }
            if(!this.bitmaps)
            {
               this.bitmaps = new Dictionary();
            }
            if(!this.bitmaps[param2])
            {
               this.bitmaps[param2] = new MmeAssetBitmap(_loc5_,_loc4_.x,_loc4_.y);
            }
            else
            {
               this.bitmaps[param2].setData(_loc5_,_loc4_.x,_loc4_.y);
            }
            return this.bitmaps[param2];
         }
         return null;
      }
      
      protected function getBitmap(param1:String, param2:int) : MmeAssetBitmap
      {
         var _loc4_:Shape = null;
         var _loc3_:BitmapData = this.mmeAsset.getAsset(param1,this.appDomain);
         var _loc5_:AssetData = this.mmeData.assetDatas[param1];
         if(_loc5_ == null)
         {
            return null;
         }
         if(!this.bitmaps)
         {
            this.bitmaps = new Dictionary();
         }
         if(!this.bitmaps[param2])
         {
            this.bitmaps[param2] = new MmeAssetBitmap(_loc3_,_loc5_.x,_loc5_.y);
         }
         else
         {
            this.bitmaps[param2].setData(_loc3_,_loc5_.x,_loc5_.y);
         }
         return this.bitmaps[param2];
      }
      
      protected function getTweenFrameData(param1:int, param2:FrameData, param3:Vector.<FrameData>) : FrameData
      {
         var _loc5_:FrameData = null;
         var _loc6_:FrameData = null;
         var _loc7_:* = NaN;
         var _loc4_:FrameData = param2.clone();
         for each(_loc6_ in param3)
         {
            if(_loc6_ != param2 && _loc6_.index == param2.index + param2.length)
            {
               if(_loc6_.element is ElementData && param2.element is ElementData && ElementData(_loc6_.element).assetId == ElementData(param2.element).assetId)
               {
                  _loc5_ = _loc6_;
                  break;
               }
               if(_loc6_.element is PointElementData && param2.element is PointElementData)
               {
                  _loc5_ = _loc6_;
                  break;
               }
            }
         }
         if(_loc5_)
         {
            _loc7_ = (param1 - param2.index) / (_loc5_.index - param2.index);
            _loc4_.element.x = _loc7_ * (_loc5_.element.x - param2.element.x) + param2.element.x;
            _loc4_.element.y = _loc7_ * (_loc5_.element.y - param2.element.y) + param2.element.y;
            if(_loc5_.element is ElementData)
            {
               ElementData(_loc4_.element).scaleX = _loc7_ * (ElementData(_loc5_.element).scaleX - ElementData(param2.element).scaleX) + ElementData(param2.element).scaleX;
               ElementData(_loc4_.element).scaleY = _loc7_ * (ElementData(_loc5_.element).scaleY - ElementData(param2.element).scaleY) + ElementData(param2.element).scaleY;
               ElementData(_loc4_.element).rotation = _loc7_ * (ElementData(_loc5_.element).rotation - ElementData(param2.element).rotation) + ElementData(param2.element).rotation;
               ElementData(_loc4_.element).alpha = _loc7_ * (ElementData(_loc5_.element).alpha - ElementData(param2.element).alpha) + ElementData(param2.element).alpha;
            }
            return _loc4_;
         }
         return null;
      }
      
      public function destroyBitmaps() : void
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for(_loc2_ in this.bitmaps)
         {
            _loc1_.push(_loc2_);
         }
         for each(_loc2_ in _loc1_)
         {
            this.bitmaps[_loc2_].destroy();
            delete this.bitmaps[_loc2_];
         }
         this.bitmaps = null;
      }
      
      override public function destroy() : void
      {
         this.destroyBitmaps();
         this.mmeAsset = null;
         this.mmeData = null;
         this.appDomain = null;
         this.currActionIndex = -1;
         super.destroy();
      }
      
      override public function hitTestPoint(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:MmeAssetBitmap = null;
         var _loc3_:int = render.numChildren - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = render.getChildAt(_loc3_) as MmeAssetBitmap;
            if(_loc4_)
            {
               if(this.hitTestPointTemp == null)
               {
                  this.hitTestPointTemp = new Point();
               }
               if(_loc4_.hitTestPoint(param1,param2))
               {
                  return true;
               }
            }
            _loc3_--;
         }
         return false;
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         CollectionClearUtil.clearDictionary(this.bitmaps,"autoDestroy");
         this.bitmaps = null;
         this.mmeAsset = null;
         this.mmeData = null;
         this.appDomain = null;
         this.bitmaps = null;
         DEFAULT_COLOR_TRANSFORM = null;
         this.hitTestPointTemp = null;
      }
   }
}
