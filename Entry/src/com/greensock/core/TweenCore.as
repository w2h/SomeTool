package com.greensock.core
{
   import com.greensock.TweenLite;
   
   public class TweenCore
   {
      
      public static const version:Number = 1.392;
      
      protected static var _classInitted:Boolean;
       
      protected var _delay:Number;
      
      protected var _hasUpdate:Boolean;
      
      protected var _rawPrevTime:Number = -1;
      
      public var vars:Object;
      
      public var active:Boolean;
      
      public var gc:Boolean;
      
      public var initted:Boolean;
      
      public var timeline:com.greensock.core.SimpleTimeline;
      
      public var cachedStartTime:Number;
      
      public var cachedTime:Number;
      
      public var cachedTotalTime:Number;
      
      public var cachedDuration:Number;
      
      public var cachedTotalDuration:Number;
      
      public var cachedTimeScale:Number;
      
      public var cachedPauseTime:Number;
      
      public var cachedReversed:Boolean;
      
      public var nextNode:com.greensock.core.TweenCore;
      
      public var prevNode:com.greensock.core.TweenCore;
      
      public var cachedOrphan:Boolean;
      
      public var cacheIsDirty:Boolean;
      
      public var cachedPaused:Boolean;
      
      public var data;
      
      public function TweenCore(param1:Number = 0, param2:Object = null)
      {
         super();
         this.vars = param2 != null?param2:{};
         this.cachedDuration = this.cachedTotalDuration = param1;
         this._delay = this.vars.delay?Number(this.vars.delay):0;
         this.cachedTimeScale = this.vars.timeScale?Number(this.vars.timeScale):1;
         this.active = Boolean(param1 == 0 && this._delay == 0 && this.vars.immediateRender != false);
         this.cachedTotalTime = this.cachedTime = 0;
         this.data = this.vars.data;
         if(!_classInitted)
         {
            if(isNaN(TweenLite.rootFrame))
            {
               TweenLite.initClass();
               _classInitted = true;
            }
            else
            {
               return;
            }
         }
         var _loc3_:com.greensock.core.SimpleTimeline = this.vars.timeline is SimpleTimeline?this.vars.timeline:this.vars.useFrames?TweenLite.rootFramesTimeline:TweenLite.rootTimeline;
         this.cachedStartTime = _loc3_.cachedTotalTime + this._delay;
         _loc3_.addChild(this);
         if(this.vars.reversed)
         {
            this.cachedReversed = true;
         }
         if(this.vars.paused)
         {
            this.paused = true;
         }
      }
      
      public function play() : void
      {
         this.reversed = false;
         this.paused = false;
      }
      
      public function pause() : void
      {
         this.paused = true;
      }
      
      public function resume() : void
      {
         this.paused = false;
      }
      
      public function restart(param1:Boolean = false, param2:Boolean = true) : void
      {
         this.reversed = false;
         this.paused = false;
         this.setTotalTime(param1?-this._delay:0,param2);
      }
      
      public function reverse(param1:Boolean = true) : void
      {
         this.reversed = true;
         if(param1)
         {
            this.paused = false;
         }
         else if(this.gc)
         {
            this.setEnabled(true,false);
         }
      }
      
      public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!param1)
         {
            this.renderTime(this.totalDuration,param2,false);
            return;
         }
         if(this.timeline.autoRemoveChildren)
         {
            this.setEnabled(false,false);
         }
         else
         {
            this.active = false;
         }
         if(!param2)
         {
            if(this.vars.onComplete && this.cachedTotalTime >= this.cachedTotalDuration && !this.cachedReversed)
            {
               this.vars.onComplete.apply(null,this.vars.onCompleteParams);
            }
            else if(this.cachedReversed && this.cachedTotalTime == 0 && this.vars.onReverseComplete)
            {
               this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
            }
         }
      }
      
      public function invalidate() : void
      {
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         this.gc = !param1;
         if(param1)
         {
            this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
            if(!param2 && this.cachedOrphan)
            {
               this.timeline.addChild(this);
            }
         }
         else
         {
            this.active = false;
            if(!param2 && !this.cachedOrphan)
            {
               this.timeline.remove(this,true);
            }
         }
         return false;
      }
      
      public function kill() : void
      {
         this.setEnabled(false,false);
      }
      
      protected function setDirtyCache(param1:Boolean = true) : void
      {
         var _loc2_:com.greensock.core.TweenCore = param1?this:this.timeline;
         while(_loc2_)
         {
            _loc2_.cacheIsDirty = true;
            _loc2_ = _loc2_.timeline;
         }
      }
      
      protected function setTotalTime(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(this.timeline)
         {
            _loc3_ = this.cachedPauseTime || this.cachedPauseTime == 0?this.cachedPauseTime:this.timeline.cachedTotalTime;
            if(this.cachedReversed)
            {
               _loc4_ = this.cacheIsDirty?this.totalDuration:this.cachedTotalDuration;
               this.cachedStartTime = _loc3_ - (_loc4_ - param1) / this.cachedTimeScale;
            }
            else
            {
               this.cachedStartTime = _loc3_ - param1 / this.cachedTimeScale;
            }
            if(!this.timeline.cacheIsDirty)
            {
               this.setDirtyCache(false);
            }
            if(this.cachedTotalTime != param1)
            {
               this.renderTime(param1,param2,false);
            }
         }
      }
      
      public function get delay() : Number
      {
         return this._delay;
      }
      
      public function set delay(param1:Number) : void
      {
         this.startTime = this.startTime + (param1 - this._delay);
         this._delay = param1;
      }
      
      public function get duration() : Number
      {
         return this.cachedDuration;
      }
      
      public function set duration(param1:Number) : void
      {
         this.cachedDuration = this.cachedTotalDuration = param1;
         this.setDirtyCache(false);
      }
      
      public function get totalDuration() : Number
      {
         return this.cachedTotalDuration;
      }
      
      public function set totalDuration(param1:Number) : void
      {
         this.duration = param1;
      }
      
      public function get currentTime() : Number
      {
         return this.cachedTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         this.setTotalTime(param1,false);
      }
      
      public function get totalTime() : Number
      {
         return this.cachedTotalTime;
      }
      
      public function set totalTime(param1:Number) : void
      {
         this.setTotalTime(param1,false);
      }
      
      public function get startTime() : Number
      {
         return this.cachedStartTime;
      }
      
      public function set startTime(param1:Number) : void
      {
         var _loc2_:Boolean = Boolean(this.timeline != null && (param1 != this.cachedStartTime || this.gc));
         this.cachedStartTime = param1;
         if(_loc2_)
         {
            this.timeline.addChild(this);
         }
      }
      
      public function get reversed() : Boolean
      {
         return this.cachedReversed;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.cachedReversed)
         {
            this.cachedReversed = param1;
            this.setTotalTime(this.cachedTotalTime,true);
         }
      }
      
      public function get paused() : Boolean
      {
         return this.cachedPaused;
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.cachedPaused && this.timeline)
         {
            if(param1)
            {
               this.cachedPauseTime = this.timeline.rawTime;
            }
            else
            {
               this.cachedStartTime = this.cachedStartTime + (this.timeline.rawTime - this.cachedPauseTime);
               this.cachedPauseTime = NaN;
               this.setDirtyCache(false);
            }
            this.cachedPaused = param1;
            this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
         }
         if(!param1 && this.gc)
         {
            this.setTotalTime(this.cachedTotalTime,false);
            this.setEnabled(true,false);
         }
      }
      
      public function autoSetNull() : void
      {
         if(super.hasOwnProperty("autoSetNull"))
         {
            super["autoSetNull"]();
         }
         this.vars = null;
         this.timeline = null;
         this.nextNode = null;
         this.prevNode = null;
      }
   }
}
