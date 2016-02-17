package com.greensock.motionPaths
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.display.Graphics;
   
   public class LinePath2D extends MotionPath
   {
       
      protected var _first:PathPoint;
      
      protected var _points:Array;
      
      protected var _totalLength:Number;
      
      protected var _hasAutoRotate:Boolean;
      
      protected var _prevMatrix:Matrix;
      
      public var autoUpdatePoints:Boolean;
      
      public function LinePath2D(param1:Array = null, param2:Number = 0, param3:Number = 0, param4:Boolean = false)
      {
         super();
         this._points = [];
         this._totalLength = 0;
         this.autoUpdatePoints = param4;
         if(param1 != null)
         {
            this.insertMultiplePoints(param1,0);
         }
         super.x = param2;
         super.y = param3;
      }
      
      public function appendPoint(param1:Point) : void
      {
         this._insertPoint(param1,this._points.length,false);
      }
      
      public function insertPoint(param1:Point, param2:uint = 0) : void
      {
         this._insertPoint(param1,param2,false);
      }
      
      protected function _insertPoint(param1:Point, param2:uint, param3:Boolean) : void
      {
         this._points.splice(param2,0,new PathPoint(param1));
         if(!param3)
         {
            this._organize();
         }
      }
      
      public function appendMultiplePoints(param1:Array) : void
      {
         this.insertMultiplePoints(param1,this._points.length);
      }
      
      public function insertMultiplePoints(param1:Array, param2:uint = 0) : void
      {
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            this._insertPoint(param1[_loc4_],param2 + _loc4_,true);
            _loc4_++;
         }
         this._organize();
      }
      
      public function removePoint(param1:Point) : void
      {
         var _loc2_:int = this._points.length;
         while(--_loc2_ > -1)
         {
            if(this._points[_loc2_].point == param1)
            {
               this._points.splice(_loc2_,1);
            }
         }
         this._organize();
      }
      
      public function removePointByIndex(param1:uint) : void
      {
         this._points.splice(param1,1);
         this._organize();
      }
      
      protected function _organize() : void
      {
         var _loc2_:PathPoint = null;
         this._totalLength = 0;
         this._hasAutoRotate = false;
         var _loc1_:int = this._points.length - 1;
         if(_loc1_ == -1)
         {
            this._first = null;
         }
         else if(_loc1_ == 0)
         {
            this._first = this._points[0];
            this._first.progress = this._first.xChange = this._first.yChange = this._first.length = 0;
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ <= _loc1_)
         {
            if(this._points[_loc3_] != null)
            {
               _loc2_ = this._points[_loc3_];
               _loc2_.x = _loc2_.point.x;
               _loc2_.y = _loc2_.point.y;
               if(_loc3_ == _loc1_)
               {
                  _loc2_.length = 0;
                  _loc2_.next = null;
               }
               else
               {
                  _loc2_.next = this._points[_loc3_ + 1];
                  _loc2_.xChange = _loc2_.next.x - _loc2_.x;
                  _loc2_.yChange = _loc2_.next.y - _loc2_.y;
                  _loc2_.length = Math.sqrt(_loc2_.xChange * _loc2_.xChange + _loc2_.yChange * _loc2_.yChange);
                  this._totalLength = this._totalLength + _loc2_.length;
               }
            }
            _loc3_++;
         }
         this._first = _loc2_ = this._points[0];
         var _loc4_:Number = 0;
         while(_loc2_)
         {
            _loc2_.progress = _loc4_ / this._totalLength;
            _loc4_ = _loc4_ + _loc2_.length;
            _loc2_ = _loc2_.next;
         }
         this._updateAngles();
      }
      
      protected function _updateAngles() : void
      {
         var _loc1_:Matrix = this.transform.matrix;
         var _loc2_:PathPoint = this._first;
         while(_loc2_)
         {
            _loc2_.angle = Math.atan2(_loc2_.xChange * _loc1_.b + _loc2_.yChange * _loc1_.d,_loc2_.xChange * _loc1_.a + _loc2_.yChange * _loc1_.c) * _RAD2DEG;
            _loc2_ = _loc2_.next;
         }
         this._prevMatrix = _loc1_;
      }
      
      override protected function renderAll() : void
      {
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:PathPoint = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc15_:Graphics = null;
         if(this._first == null || this._points.length <= 1)
         {
            return;
         }
         var _loc1_:Boolean = false;
         var _loc7_:Matrix = this.transform.matrix;
         var _loc8_:Number = _loc7_.a;
         var _loc9_:Number = _loc7_.b;
         var _loc10_:Number = _loc7_.c;
         var _loc11_:Number = _loc7_.d;
         var _loc12_:Number = _loc7_.tx;
         var _loc13_:Number = _loc7_.ty;
         var _loc14_:PathFollower = _rootFollower;
         if(this.autoUpdatePoints)
         {
            _loc4_ = this._first;
            while(_loc4_)
            {
               if(_loc4_.point.x != _loc4_.x || _loc4_.point.y != _loc4_.y)
               {
                  this._organize();
                  _redrawLine = true;
                  this.renderAll();
                  return;
               }
               _loc4_ = _loc4_.next;
            }
         }
         while(_loc14_)
         {
            _loc5_ = _loc14_.cachedProgress;
            _loc4_ = this._first;
            while(_loc4_ != null && _loc4_.next.progress < _loc5_)
            {
               _loc4_ = _loc4_.next;
            }
            if(_loc4_ != null)
            {
               _loc6_ = (_loc5_ - _loc4_.progress) / (_loc4_.length / this._totalLength);
               _loc2_ = _loc4_.x + _loc6_ * _loc4_.xChange;
               _loc3_ = _loc4_.y + _loc6_ * _loc4_.yChange;
               _loc14_.target.x = _loc2_ * _loc8_ + _loc3_ * _loc10_ + _loc12_;
               _loc14_.target.y = _loc2_ * _loc9_ + _loc3_ * _loc11_ + _loc13_;
               if(_loc14_.autoRotate)
               {
                  if(!_loc1_ && (this._prevMatrix.a != _loc8_ || this._prevMatrix.b != _loc9_ || this._prevMatrix.c != _loc10_ || this._prevMatrix.d != _loc11_))
                  {
                     this._updateAngles();
                     _loc1_ = true;
                  }
                  _loc14_.target.rotation = _loc4_.angle + _loc14_.rotationOffset;
               }
            }
            _loc14_ = _loc14_.cachedNext;
         }
         if(_redrawLine && this.visible && this.parent)
         {
            _loc15_ = this.graphics;
            _loc15_.clear();
            _loc15_.lineStyle(_thickness,_color,_lineAlpha,_pixelHinting,_scaleMode,_caps,_joints,_miterLimit);
            _loc4_ = this._first;
            _loc15_.moveTo(_loc4_.x,_loc4_.y);
            while(_loc4_)
            {
               _loc15_.lineTo(_loc4_.x,_loc4_.y);
               _loc4_ = _loc4_.next;
            }
            _redrawLine = false;
         }
      }
      
      override public function renderObjectAt(param1:Object, param2:Number, param3:Boolean = false, param4:Number = 0) : void
      {
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:Matrix = null;
         if(param2 > 1)
         {
            var param2:Number = param2 - int(param2);
         }
         else if(param2 < 0)
         {
            param2 = param2 - (int(param2) - 1);
         }
         if(this._first == null)
         {
            return;
         }
         var _loc5_:PathPoint = this._first;
         while(_loc5_.next != null && _loc5_.next.progress < param2)
         {
            _loc5_ = _loc5_.next;
         }
         if(_loc5_ != null)
         {
            _loc6_ = (param2 - _loc5_.progress) / (_loc5_.length / this._totalLength);
            _loc7_ = _loc5_.x + _loc6_ * _loc5_.xChange;
            _loc8_ = _loc5_.y + _loc6_ * _loc5_.yChange;
            _loc9_ = this.transform.matrix;
            param1.x = _loc7_ * _loc9_.a + _loc8_ * _loc9_.c + _loc9_.tx;
            param1.y = _loc7_ * _loc9_.b + _loc8_ * _loc9_.d + _loc9_.ty;
            if(param3)
            {
               if(this._prevMatrix.a != _loc9_.a || this._prevMatrix.b != _loc9_.b || this._prevMatrix.c != _loc9_.c || this._prevMatrix.d != _loc9_.d)
               {
                  this._updateAngles();
               }
               param1.rotation = _loc5_.angle + param4;
            }
         }
      }
      
      public function getSegmentProgress(param1:uint, param2:Number) : Number
      {
         if(this._first == null)
         {
            return 0;
         }
         if(this._points.length <= param1)
         {
            var param1:uint = this._points.length;
         }
         var _loc3_:PathPoint = this._points[param1 - 1];
         return _loc3_.progress + param2 * _loc3_.length / this._totalLength;
      }
      
      public function snap(param1:Object, param2:Boolean = false, param3:Number = 0) : PathFollower
      {
         return this.addFollower(param1,this.getClosestProgress(param1),param2,param3);
      }
      
      public function getClosestProgress(param1:Object) : Number
      {
         var _loc2_:PathPoint = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:PathPoint = null;
         var _loc16_:* = NaN;
         if(this._first == null || this._points.length == 1)
         {
            return 0;
         }
         var _loc3_:Number = 9.999999999E9;
         var _loc4_:Number = 0;
         var _loc5_:Number = Math.PI / 2;
         var _loc6_:Number = param1.x;
         var _loc7_:Number = param1.y;
         var _loc8_:PathPoint = this._first;
         while(_loc8_)
         {
            _loc9_ = _loc6_ - _loc8_.x;
            _loc10_ = _loc7_ - _loc8_.y;
            _loc15_ = _loc8_.next != null?_loc8_.next:_loc8_;
            _loc11_ = _loc15_.x - _loc8_.x;
            _loc12_ = _loc15_.y - _loc8_.y;
            _loc13_ = Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_);
            _loc14_ = Math.atan2(_loc10_,_loc9_) - Math.atan2(_loc12_,_loc11_);
            if(_loc14_ < 0)
            {
               _loc14_ = -_loc14_;
            }
            if(_loc14_ > _loc5_)
            {
               if(_loc13_ < _loc3_)
               {
                  _loc3_ = _loc13_;
                  _loc2_ = _loc8_;
                  _loc4_ = 0;
               }
            }
            else
            {
               _loc16_ = Math.cos(_loc14_) * _loc13_;
               if(_loc16_ < 0)
               {
                  _loc16_ = -_loc16_;
               }
               if(_loc16_ > _loc8_.length)
               {
                  _loc11_ = _loc6_ - _loc15_.x;
                  _loc12_ = _loc7_ - _loc15_.y;
                  _loc16_ = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_);
                  if(_loc16_ < _loc3_)
                  {
                     _loc3_ = _loc16_;
                     _loc2_ = _loc8_;
                     _loc4_ = _loc8_.length;
                  }
               }
               else
               {
                  _loc16_ = Math.sin(_loc14_) * _loc13_;
                  if(_loc16_ < _loc3_)
                  {
                     _loc3_ = _loc16_;
                     _loc2_ = _loc8_;
                     _loc4_ = Math.cos(_loc14_) * _loc13_;
                  }
               }
            }
            _loc8_ = _loc8_.next;
         }
         return _loc2_.progress + _loc4_ / this._totalLength;
      }
      
      public function get totalLength() : Number
      {
         return this._totalLength;
      }
      
      public function get points() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = this._points.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_[_loc3_] = this._points[_loc3_].point;
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function set points(param1:Array) : void
      {
         this._points = [];
         this.insertMultiplePoints(param1,0);
      }
      
      override public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super.["autoSetNull"]();
         }
         this._first = null;
         this._points = null;
         this._prevMatrix = null;
      }
   }
}

import flash.geom.Point;

class PathPoint
{
    
   public var x:Number;
   
   public var y:Number;
   
   public var progress:Number;
   
   public var xChange:Number;
   
   public var yChange:Number;
   
   public var point:Point;
   
   public var length:Number;
   
   public var angle:Number;
   
   public var next:PathPoint;
   
   function PathPoint(param1:Point)
   {
      super();
      this.x = param1.x;
      this.y = param1.y;
      this.point = param1;
   }
   
   public function autoSetNull() : void
   {
      this.point = null;
      this.next = null;
   }
}
