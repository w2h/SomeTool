package com.tencent.morefun.naruto.effect.spark
{
   import flash.display.Sprite;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import com.tencent.morefun.naruto.math.bezier;
   import flash.events.Event;
   import flash.display.DisplayObject;
   
   [Event(name="complete",type="flash.events.Event")]
   public class SparkSystem extends Sprite
   {
       
      private var _lite:TweenLite;
      
      private var _cls:Class;
      
      private var _recycles:Vector.<MovieClip>;
      
      private var _lives:Vector.<MovieClip>;
      
      private var _path:Vector.<Point>;
      
      private var _snap:Point;
      
      private var _step:uint;
      
      private var _density:uint;
      
      private var _delta:Number;
      
      private var _running:Boolean;
      
      private var _debug:Boolean;
      
      private var _loop:uint;
      
      private var _loopCount:uint;
      
      private var _blendMode:String;
      
      public function SparkSystem(param1:Class, param2:uint = 10)
      {
         super();
         mouseChildren = mouseEnabled = false;
         this._cls = param1;
         this.density = param2;
         if(!this._cls)
         {
            throw new ArgumentError("Fatal Error!");
         }
         this._recycles = new Vector.<MovieClip>();
         this._lives = new Vector.<MovieClip>();
      }
      
      public function animate(param1:Vector.<Point>) : void
      {
         this._path = param1;
         this._loopCount = 0;
         this.startSparkle();
      }
      
      private function startSparkle() : void
      {
         var particle:MovieClip = null;
         var obj:Object = null;
         this._snap = this._path[0].clone();
         this._step = 0;
         this._running = true;
         if(this._debug)
         {
            graphics.clear();
            graphics.lineStyle(1,16711680);
            graphics.moveTo(this._snap.x,this._snap.y);
         }
         while(this._recycles.length < this._density)
         {
            particle = new this._cls();
            particle.mouseChildren = particle.mouseEnabled = false;
            particle.gotoAndStop(1);
            this._recycles.push(particle);
         }
         obj = {"t":0};
         if(this._loopCount == 0)
         {
            this._lite = TweenLite.delayedCall(1,function():void
            {
               _lite = TweenLite.to(obj,1,{
                  "t":1,
                  "onUpdate":update,
                  "onUpdateParams":[obj]
               });
            });
         }
         else
         {
            this._lite = TweenLite.to(obj,1,{
               "t":1,
               "onUpdate":this.update,
               "onUpdateParams":[obj]
            });
         }
      }
      
      private function createParticle() : MovieClip
      {
         var _loc1_:MovieClip = this._recycles.length?this._recycles.shift():new this._cls();
         _loc1_.mouseEnabled = _loc1_.mouseChildren = false;
         _loc1_.gotoAndStop(1);
         return _loc1_;
      }
      
      private function update(param1:Object) : void
      {
         var particle:MovieClip = null;
         var obj:Object = param1;
         var ctrls:Array = [];
         while(ctrls.length < this._path.length)
         {
            ctrls.push(this._path[ctrls.length]);
         }
         var point:Point = bezier(ctrls,obj.t);
         var radian:Number = Math.atan2(point.y - this._snap.y,point.x - this._snap.x);
         this._snap = point;
         graphics.lineTo(point.x,point.y);
         if(obj.t < (this._step + 1) * this._delta)
         {
            return;
         }
         this._lives.push(particle = this.createParticle());
         if(this._blendMode)
         {
            particle.blendMode = this._blendMode;
         }
         particle.x = point.x;
         particle.y = point.y;
         particle.rotation = radian * 180 / Math.PI;
         particle.addFrameScript(particle.totalFrames - 1,function():void
         {
            recycleParticle(particle);
         });
         addChild(particle);
         particle.gotoAndPlay(1);
         this._step++;
      }
      
      private function recycleParticle(param1:MovieClip) : void
      {
         param1.stop();
         param1.addFrameScript(param1.totalFrames - 1,null);
         param1.parent && param1.parent.removeChild(param1);
         var _loc2_:int = this._lives.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this._recycles.push(this._lives.splice(_loc2_,1).pop());
         }
         if(this._running && !this._lives.length)
         {
            this._running = false;
            if(++this._loopCount < this._loop)
            {
               this.startSparkle();
            }
            else
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      public function stop() : void
      {
         this._lite && this._lite.kill();
         this._lite = null;
         this._running = false;
         while(this._lives.length)
         {
            this.recycleParticle(this._lives.pop());
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:MovieClip = null;
         this._lite && this._lite.kill();
         this._lite = null;
         var _loc2_:Vector.<MovieClip> = this._lives.concat(this._recycles);
         while(_loc2_.length)
         {
            _loc1_ = _loc2_.pop();
            _loc1_.parent && _loc1_.parent.removeChild(_loc1_);
            _loc1_.stop();
         }
         this._running = false;
         this._lives.length = this._recycles.length = 0;
         this._cls = null;
      }
      
      public function get density() : uint
      {
         return this._density;
      }
      
      public function set density(param1:uint) : void
      {
         this._density = Math.max(1,param1);
         this._delta = 1 / this._density;
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function get debug() : Boolean
      {
         return this._debug;
      }
      
      public function set debug(param1:Boolean) : void
      {
         this._debug = param1;
      }
      
      public function get loop() : uint
      {
         return this._loop;
      }
      
      public function set loop(param1:uint) : void
      {
         this._loop = param1;
      }
      
      override public function get blendMode() : String
      {
         return this._blendMode;
      }
      
      override public function set blendMode(param1:String) : void
      {
         var _loc2_:DisplayObject = null;
         this._blendMode = param1;
         for each(_loc2_ in this._lives)
         {
            _loc2_.blendMode = this._blendMode;
         }
      }
   }
}
