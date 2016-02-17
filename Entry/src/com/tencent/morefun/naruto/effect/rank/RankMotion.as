package com.tencent.morefun.naruto.effect.rank
{
   import flash.events.EventDispatcher;
   import flash.display.DisplayObject;
   import flash.utils.getQualifiedClassName;
   import flash.display.BitmapData;
   import com.greensock.TweenLite;
   import flash.events.Event;
   
   public class RankMotion extends EventDispatcher
   {
      
      private static const DEFAULT_MIN_ALPHA:Number = 0.2;
      
      private static const DEFAULT_BITMAP_ALPHA:Number = 0.8;
      
      private static const DEFAULT_INTERVAL:Number = 0.05;
      
      private static const DEFAULT_DURATION:Number = 0.5;
      
      private static const DEFAULT_SHAKE_RANGE:Number = 50;
       
      private var _items:Vector.<MotionItem>;
      
      private var _count:uint;
      
      private var _minAlpha:Number;
      
      private var _bitmapAlpha:Number;
      
      private var _interval:Number;
      
      private var _duration:Number;
      
      private var _shakeRange:Number;
      
      public function RankMotion()
      {
         super();
         this._items = new Vector.<RankMotion>();
         this._bitmapAlpha = DEFAULT_BITMAP_ALPHA;
         this._minAlpha = DEFAULT_MIN_ALPHA;
         this._interval = DEFAULT_INTERVAL;
         this._duration = DEFAULT_DURATION;
         this._shakeRange = DEFAULT_SHAKE_RANGE;
      }
      
      public function pushMotionItem(param1:DisplayObject) : void
      {
         var _loc3_:MotionItem = null;
         if(!param1 || !param1.parent)
         {
            throw new Error("target[" + getQualifiedClassName(param1) + "]不能null，并且必须放在显示容器中!!");
         }
         if(!param1.width || !param1.height)
         {
            throw new Error("target.width/target.height不是有效值!!");
         }
         var _loc2_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc2_.draw(param1,null,null,null,null,true);
         _loc3_ = new MotionItem(_loc2_);
         _loc3_.alpha = this._bitmapAlpha;
         _loc3_.target = param1;
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         param1.parent.addChild(_loc3_);
         _loc3_.offset = (this._items.length % 2?-1:1) * this._shakeRange;
         param1.alpha = this._minAlpha;
         param1.x = param1.x + _loc3_.offset;
         param1.visible = false;
         this._items.push(_loc3_);
      }
      
      public function run() : void
      {
         this._count = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this._items.length)
         {
            this._items[_loc1_].tween = TweenLite.delayedCall(this._interval * _loc1_,this.startMotion,[_loc1_]);
            _loc1_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:MotionItem = null;
         while(this._items.length)
         {
            _loc1_ = this._items.pop();
            _loc1_.parent && _loc1_.parent.removeChild(_loc1_);
            _loc1_.dispose();
         }
      }
      
      private function startMotion(param1:uint) : void
      {
         var _loc2_:MotionItem = this._items[param1];
         _loc2_.tween = null;
         _loc2_.target.visible = true;
         _loc2_.tween = TweenLite.to(_loc2_,this._duration,{
            "ratio":1,
            "onUpdate":this.renderMotion,
            "onUpdateParams":[_loc2_],
            "onComplete":this.motionComplete,
            "onCompleteParams":[_loc2_]
         });
      }
      
      private function motionComplete(param1:MotionItem) : void
      {
         param1.dispose();
         param1.parent && param1.parent.removeChild(param1);
         if(++this._count >= this._items.length)
         {
            this._items.length = 0;
            dispatchEvent(new Event(Event.COMPLETE));
         }
      }
      
      private function renderMotion(param1:MotionItem) : void
      {
         param1.alpha = this._minAlpha + (this._bitmapAlpha - this._minAlpha) * (1 - param1.ratio);
         param1.target.alpha = this._minAlpha + (1 - this._minAlpha) * param1.ratio;
         param1.target.x = param1.x + param1.offset * (1 - param1.ratio);
      }
      
      public function get minAlpha() : Number
      {
         return this._minAlpha;
      }
      
      public function set minAlpha(param1:Number) : void
      {
         this._minAlpha = isNaN(param1)?DEFAULT_MIN_ALPHA:param1;
      }
      
      public function get bitmapAlpha() : Number
      {
         return this._bitmapAlpha;
      }
      
      public function set bitmapAlpha(param1:Number) : void
      {
         this._bitmapAlpha = isNaN(param1)?DEFAULT_BITMAP_ALPHA:param1;
      }
      
      public function get interval() : Number
      {
         return this._interval;
      }
      
      public function set interval(param1:Number) : void
      {
         this._interval = isNaN(param1)?DEFAULT_INTERVAL:param1;
      }
      
      public function get duration() : Number
      {
         return this._duration;
      }
      
      public function set duration(param1:Number) : void
      {
         this._duration = isNaN(param1)?DEFAULT_DURATION:param1;
      }
      
      public function get shakeRange() : Number
      {
         return this._shakeRange;
      }
      
      public function set shakeRange(param1:Number) : void
      {
         this._shakeRange = isNaN(param1)?DEFAULT_SHAKE_RANGE:param1;
      }
      
      public function autoSetNull() : void
      {
      }
   }
}

import flash.display.Bitmap;
import flash.display.DisplayObject;
import com.greensock.TweenLite;
import flash.display.BitmapData;
import flash.display.PixelSnapping;

class MotionItem extends Bitmap
{
    
   public var target:DisplayObject;
   
   public var tween:TweenLite;
   
   public var ratio:Number;
   
   public var offset:int;
   
   function MotionItem(param1:BitmapData)
   {
      this.ratio = 0;
      super(param1,PixelSnapping.AUTO,true);
   }
   
   public function dispose() : void
   {
      if(this.target)
      {
         this.target.visible = true;
         this.target.x = this.x;
         this.target.y = this.y;
         this.target = null;
      }
      if(this.tween)
      {
         this.tween.kill();
         this.tween = null;
      }
      if(bitmapData)
      {
         bitmapData.dispose();
         bitmapData = null;
      }
   }
   
   public function autoSetNull() : void
   {
      this.target = null;
      this.tween = null;
   }
}
