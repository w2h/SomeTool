package com.tencent.morefun.naruto.plugin.ui.util
{
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.getTimer;
   import com.tencent.morefun.framework.log.logger;
   
   public class TimerProvider
   {
      
      public static var TYPE_TIMER:int = 0;
      
      public static var TYPE_ENTER_FRAME:int = 1;
      
      public static var lastGetTime:int;
      
      public static var curStageFrameRate:int;
      
      private static var timeInfoMap:Dictionary = new Dictionary();
      
      private static var funcTimeMap:Dictionary = new Dictionary();
      
      private static var isActive:Boolean = true;
      
      private static var deactiveTimer:Timer = new Timer(1);
      
      private static var stage:Stage;
      
      private static var maxFillFrame:int;
      
      private static var totalExecuteTimeList:Vector.<TimeInfo>;
      
      private static var timeInfoVector:Vector.<TimeInfo>;
      
      private static var virtualTime:int;
      
      private static var curExecuteIndex:int;
      
      private static var curExecuteFuncList:Vector.<TimeObj>;
       
      public function TimerProvider()
      {
         super();
      }
      
      public static function initliazed(param1:Stage, param2:int = 0) : void
      {
         totalExecuteTimeList = new Vector.<TimeInfo>();
         TimerProvider.maxFillFrame = param2;
         TimerProvider.stage = param1;
         param1.addEventListener(Event.ENTER_FRAME,onTimerEvent);
         timeInfoVector = new Vector.<TimeInfo>();
      }
      
      public static function active() : void
      {
         isActive = true;
         deactiveTimer.stop();
         deactiveTimer.removeEventListener(TimerEvent.TIMER,onDeactiveTimerEvent);
      }
      
      public static function deactive() : void
      {
         isActive = false;
         deactiveTimer.start();
         deactiveTimer.addEventListener(TimerEvent.TIMER,onDeactiveTimerEvent);
      }
      
      public static function addTimeTask(param1:int, param2:Function, param3:Object = null, param4:int = 0, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0) : void
      {
         var _loc9_:Vector.<TimeObj> = null;
         var _loc10_:Timer = null;
         var _loc11_:TimeInfo = null;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         _loc13_ = getTimer();
         _loc12_ = virtualTime == -1?_loc13_:virtualTime;
         TimerProvider.lastGetTime = _loc12_;
         TimerProvider.curStageFrameRate = stage.frameRate;
         var param1:int = Math.max(1,param1);
         _loc9_ = funcTimeMap[param1];
         if(_loc9_ == null)
         {
            _loc10_ = new Timer(param1);
            _loc10_.addEventListener(TimerEvent.TIMER,onTimerEvent);
            _loc10_.start();
            _loc9_ = new Vector.<TimeObj>();
            funcTimeMap[param1] = _loc9_;
            timeInfoMap[param1] = [];
            _loc11_ = new TimeInfo();
            _loc11_.lastTime = _loc12_;
            _loc11_.timer = _loc10_;
            _loc11_.timeStep = param1;
            _loc11_.type = TYPE_TIMER;
            timeInfoMap[param1][TYPE_TIMER] = _loc11_;
            _loc11_ = new TimeInfo();
            _loc11_.lastTime = _loc12_;
            _loc11_.timer = _loc10_;
            _loc11_.timeStep = param1;
            _loc11_.type = TYPE_ENTER_FRAME;
            timeInfoMap[param1][TYPE_ENTER_FRAME] = _loc11_;
         }
         if(getTimeObj(param1,param2,param3,param4,param5,param6) == null)
         {
            _loc9_.push(new TimeObj(param1,param2,_loc12_,param3,param4,param5,param6,param7,param8));
            _loc9_.sort(sortOnPriority);
         }
         if(_loc13_ != _loc12_)
         {
            fixExecuteTimeList(param1);
         }
      }
      
      private static function sortOnPriority(param1:TimeObj, param2:TimeObj) : int
      {
         if(param1.priority > param2.priority)
         {
            return -1;
         }
         if(param1.priority < param2.priority)
         {
            return 1;
         }
         return 0;
      }
      
      public static function removeTimeTask(param1:int, param2:Function, param3:Object = null, param4:int = 0, param5:int = 0, param6:int = 0) : void
      {
         var _loc7_:Vector.<TimeObj> = null;
         var _loc8_:Timer = null;
         var _loc9_:TimeObj = null;
         var _loc10_:* = 0;
         var param1:int = Math.max(1,param1);
         _loc9_ = getTimeObj(param1,param2,param3,param4,param5,param6);
         if(_loc9_ == null)
         {
            return;
         }
         _loc7_ = funcTimeMap[param1];
         _loc10_ = _loc7_.indexOf(_loc9_);
         if(_loc10_ != -1)
         {
            _loc7_.splice(_loc10_,1);
         }
         if(curExecuteFuncList == _loc7_ && curExecuteIndex <= _loc10_)
         {
            curExecuteIndex = curExecuteIndex - 1;
         }
         if(_loc7_.length == 0)
         {
            _loc8_ = timeInfoMap[param1][TYPE_TIMER].timer;
            _loc8_.removeEventListener(TimerEvent.TIMER,onTimerEvent);
            _loc8_.stop();
            delete funcTimeMap[param1];
            delete timeInfoMap[param1];
         }
      }
      
      public static function addActiveEnterFrameTask(param1:Function, param2:Object = null, param3:int = 0, param4:int = 0) : void
      {
         addTimeTask(1000 / stage.frameRate,param1,param2,param4,TYPE_ENTER_FRAME,0,0,1);
      }
      
      public static function addEnterFrameTask(param1:Function, param2:Object = null, param3:int = 0) : void
      {
         addTimeTask(1000 / stage.frameRate,param1,param2,param3,TYPE_ENTER_FRAME);
      }
      
      public static function removeEnterFrameTask(param1:Function, param2:Object = null, param3:int = 0) : void
      {
         removeTimeTask(1000 / stage.frameRate,param1,param2,param3,TYPE_ENTER_FRAME);
      }
      
      public static function delayCall(param1:int, param2:Function, param3:Object = null) : void
      {
         addTimeTask(param1,param2,param3,0,TYPE_TIMER,1);
      }
      
      public static function updateLastTime(param1:Number) : void
      {
         var _loc2_:Vector.<TimeObj> = null;
         var _loc3_:String = null;
         var _loc4_:TimeObj = null;
         for each(_loc3_ in funcTimeMap)
         {
            _loc2_ = funcTimeMap[_loc3_];
            for each(_loc4_ in _loc2_)
            {
               _loc4_.lastTime = param1;
            }
         }
         onDeactiveTimerEvent(null);
      }
      
      public static function onDeactiveTimerEvent(param1:Event) : void
      {
         var _loc2_:* = 0;
         var _loc3_:Vector.<TimeInfo> = null;
         var _loc4_:TimeInfo = null;
         var _loc5_:* = 0;
         var _loc6_:TimeInfo = null;
         _loc2_ = getTimer();
         TimerProvider.lastGetTime = _loc2_;
         TimerProvider.curStageFrameRate = stage.frameRate;
         _loc5_ = 1;
         _loc3_ = getExecuteList(_loc2_,TYPE_TIMER,_loc5_,_loc5_ == maxFillFrame);
         while(_loc3_.length != 0)
         {
            _loc5_ = _loc5_ + 1;
            totalExecuteTimeList = totalExecuteTimeList.concat(_loc3_);
            _loc3_.length = 0;
            _loc3_ = null;
            _loc3_ = getExecuteList(_loc2_,TYPE_TIMER,_loc5_,_loc5_ == maxFillFrame);
            _loc3_ = _loc3_.concat(getExecuteList(_loc2_,TYPE_ENTER_FRAME,_loc5_,_loc5_ == maxFillFrame));
         }
         totalExecuteTimeList.sort(sortOnExecuteTime);
         var _loc7_:int = 0;
         while(_loc7_ < totalExecuteTimeList.length)
         {
            _loc6_ = totalExecuteTimeList[_loc7_];
            if(timeInfoMap[_loc6_.timeStep] && timeInfoMap[_loc6_.timeStep][_loc6_.type])
            {
               _loc4_ = timeInfoMap[_loc6_.timeStep][_loc6_.type];
               executeTimeTask(_loc6_.timeStep,_loc6_.executeTime,_loc6_.fillIndex,_loc6_.type);
            }
            _loc7_++;
         }
         virtualTime = -1;
         releaseTimeInfos(totalExecuteTimeList);
         totalExecuteTimeList.splice(0,totalExecuteTimeList.length);
      }
      
      private static function sortOnExecuteTime(param1:TimeInfo, param2:TimeInfo) : int
      {
         if(param1.executeTime < param2.executeTime)
         {
            return -1;
         }
         if(param1.executeTime > param2.executeTime)
         {
            return 1;
         }
         return 0;
      }
      
      private static function fixExecuteTimeList(param1:int) : void
      {
         var _loc2_:* = 0;
         var _loc3_:Vector.<TimeInfo> = null;
         var _loc4_:TimeInfo = null;
         var _loc5_:* = 0;
         _loc2_ = getTimer();
         TimerProvider.lastGetTime = _loc2_;
         TimerProvider.curStageFrameRate = stage.frameRate;
         _loc5_ = 1;
         _loc3_ = getFixExecuteList(_loc2_,param1,TYPE_TIMER,_loc5_ == maxFillFrame);
         _loc3_ = _loc3_.concat(getFixExecuteList(_loc2_,param1,TYPE_ENTER_FRAME,_loc5_ == maxFillFrame));
         while(_loc3_.length != 0)
         {
            _loc5_ = _loc5_ + 1;
            totalExecuteTimeList = totalExecuteTimeList.concat(_loc3_);
            _loc3_ = getFixExecuteList(_loc2_,param1,TYPE_TIMER,_loc5_ == maxFillFrame);
            _loc3_ = _loc3_.concat(getFixExecuteList(_loc2_,param1,TYPE_ENTER_FRAME,_loc5_ == maxFillFrame));
         }
         totalExecuteTimeList.sort(sortOnExecuteTime);
      }
      
      private static function getFixExecuteList(param1:int, param2:int, param3:int, param4:Boolean) : Vector.<TimeInfo>
      {
         var _loc5_:Vector.<TimeInfo> = null;
         var _loc6_:TimeInfo = null;
         var _loc7_:TimeInfo = null;
         _loc5_ = new Vector.<TimeInfo>();
         _loc7_ = timeInfoMap[param2][param3];
         if(param1 - _loc7_.lastTime > _loc7_.timeStep)
         {
            _loc6_ = getTimeInfo();
            if(!_loc6_)
            {
               _loc6_ = new TimeInfo();
            }
            _loc6_.copy(_loc7_);
            _loc7_.lastTime = _loc7_.lastTime + _loc7_.timeStep;
            _loc6_.executeTime = _loc7_.lastTime;
            _loc5_.push(_loc6_);
            while(param4 && param1 - _loc7_.lastTime > _loc7_.timeStep)
            {
               _loc7_.lastTime = _loc7_.lastTime + _loc7_.timeStep;
               _loc6_.executeTime = _loc7_.lastTime;
            }
         }
         return _loc5_;
      }
      
      private static function getExecuteList(param1:int, param2:int, param3:int, param4:Boolean) : Vector.<TimeInfo>
      {
         var _loc5_:Vector.<TimeInfo> = null;
         var _loc6_:TimeInfo = null;
         var _loc7_:TimeInfo = null;
         var _loc9_:Array = null;
         _loc5_ = new Vector.<TimeInfo>();
         var _loc8_:int = 0;
         for each(_loc9_ in timeInfoMap)
         {
            _loc7_ = _loc9_[param2];
            if(param1 - _loc7_.lastTime > _loc7_.timeStep)
            {
               _loc6_ = getTimeInfo();
               if(!_loc6_)
               {
                  _loc6_ = new TimeInfo();
               }
               _loc6_.copy(_loc7_);
               _loc6_.fillIndex = param3;
               _loc7_.lastTime = _loc7_.lastTime + _loc7_.timeStep;
               _loc6_.executeTime = _loc7_.lastTime;
               _loc5_[_loc8_] = _loc6_;
               _loc8_++;
               while(param4 && param1 - _loc7_.lastTime > _loc7_.timeStep)
               {
                  _loc7_.lastTime = _loc7_.lastTime + _loc7_.timeStep;
                  _loc6_.executeTime = _loc7_.lastTime;
               }
               continue;
            }
         }
         return _loc5_;
      }
      
      public static function set stageFrameRate(param1:int) : void
      {
         var _loc2_:TimeInfo = null;
         var _loc3_:* = 0;
         var _loc4_:Vector.<TimeObj> = null;
         var _loc5_:Vector.<TimeObj> = null;
         var _loc6_:Object = null;
         _loc3_ = stage.frameRate;
         stage.frameRate = param1;
         for each(_loc5_ in funcTimeMap)
         {
            _loc4_ = _loc5_.concat();
            for each(_loc6_ in _loc4_)
            {
               if(_loc6_.type == TYPE_ENTER_FRAME)
               {
                  removeTimeTask(1000 / _loc3_,_loc6_.func,_loc6_.param,_loc6_.priority,TYPE_ENTER_FRAME);
                  addTimeTask(1000 / stage.frameRate,_loc6_.func,_loc6_.param,_loc6_.priority,TYPE_ENTER_FRAME);
               }
            }
         }
      }
      
      public static function get stageFrameRate() : int
      {
         return stage.frameRate;
      }
      
      private static function onTimerEvent(param1:Event) : void
      {
         var _loc2_:* = 0;
         var _loc3_:Vector.<TimeInfo> = null;
         var _loc4_:TimeInfo = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:TimeInfo = null;
         if(isActive == false)
         {
            return;
         }
         if(param1 is TimerEvent)
         {
            _loc5_ = TYPE_TIMER;
         }
         else
         {
            _loc5_ = TYPE_ENTER_FRAME;
         }
         _loc2_ = getTimer();
         TimerProvider.lastGetTime = _loc2_;
         TimerProvider.curStageFrameRate = stage.frameRate;
         _loc6_ = 1;
         _loc3_ = getExecuteList(_loc2_,_loc5_,_loc6_,_loc6_ == maxFillFrame);
         while(_loc3_.length != 0)
         {
            _loc6_ = _loc6_ + 1;
            totalExecuteTimeList = totalExecuteTimeList.concat(_loc3_);
            _loc3_ = getExecuteList(_loc2_,_loc5_,_loc6_,_loc6_ == maxFillFrame);
         }
         totalExecuteTimeList.sort(sortOnExecuteTime);
         var _loc8_:int = 0;
         while(_loc8_ < totalExecuteTimeList.length)
         {
            _loc7_ = totalExecuteTimeList[_loc8_];
            if(timeInfoMap[_loc7_.timeStep] && timeInfoMap[_loc7_.timeStep][_loc7_.type])
            {
               _loc4_ = timeInfoMap[_loc7_.timeStep][_loc7_.type];
               executeTimeTask(_loc7_.timeStep,_loc7_.executeTime,_loc7_.fillIndex,_loc5_);
            }
            _loc8_++;
         }
         var _loc9_:int = getTimer();
         if(_loc9_ - _loc2_ > 1000)
         {
            logger.output("TimerProvider Warning");
         }
         virtualTime = -1;
         releaseTimeInfos(totalExecuteTimeList);
         totalExecuteTimeList.splice(0,totalExecuteTimeList.length);
      }
      
      private static function executeTimeTask(param1:int, param2:int, param3:int, param4:int = 0) : void
      {
         var _loc5_:TimeObj = null;
         var _loc6_:Function = null;
         var _loc7_:Object = null;
         curExecuteFuncList = funcTimeMap[param1];
         curExecuteIndex = 0;
         while(curExecuteIndex < curExecuteFuncList.length)
         {
            if(curExecuteIndex >= 0)
            {
               _loc5_ = curExecuteFuncList[curExecuteIndex];
               if(_loc5_.type == param4)
               {
                  if(param2 - _loc5_.lastTime >= param1)
                  {
                     if(!(isActive && _loc5_.maxActiveFixTimes != 0 && param3 > _loc5_.maxActiveFixTimes))
                     {
                        if(_loc5_.skipCount != 0)
                        {
                           _loc5_.skipCount--;
                        }
                        else
                        {
                           virtualTime = _loc5_.lastTime;
                           _loc6_ = _loc5_.func;
                           _loc7_ = _loc5_.param;
                           if(_loc7_ == null)
                           {
                              _loc6_();
                           }
                           else
                           {
                              _loc6_(_loc7_);
                           }
                           _loc5_.lastTime = _loc5_.lastTime + param1;
                           if(_loc5_.repeatCount == 1)
                           {
                              removeTimeTask(_loc5_.timeStep,_loc5_.func,_loc5_.param,_loc5_.priority,_loc5_.type,_loc5_.repeatCount);
                           }
                           else if(_loc5_.repeatCount != 0)
                           {
                              _loc5_.repeatCount = _loc5_.repeatCount - 1;
                           }
                        }
                     }
                  }
               }
            }
            curExecuteIndex++;
         }
      }
      
      private static function getTimeObj(param1:int, param2:Function, param3:Object = null, param4:int = 0, param5:int = 0, param6:int = 0) : TimeObj
      {
         var _loc7_:Vector.<TimeObj> = null;
         var _loc8_:TimeObj = null;
         _loc7_ = funcTimeMap[param1];
         if(_loc7_ == null)
         {
            return null;
         }
         for each(_loc8_ in _loc7_)
         {
            if(_loc8_.func == param2 && _loc8_.param == param3 && _loc8_.type == param5 && _loc8_.priority == param4 && _loc8_.repeatCount == param6)
            {
               return _loc8_;
            }
         }
         return null;
      }
      
      private static function getTimeInfo() : TimeInfo
      {
         if(timeInfoVector.length != 0)
         {
            return timeInfoVector.pop();
         }
         return null;
      }
      
      private static function releaseTimeInfos(param1:Vector.<TimeInfo>) : void
      {
         timeInfoVector = timeInfoVector.concat(param1);
      }
   }
}

import flash.utils.Timer;

class TimeInfo
{
    
   public var timer:Timer;
   
   public var lastTime:int;
   
   public var timeStep:int;
   
   public var executeTime:int;
   
   public var type:int;
   
   public var fillIndex:int;
   
   function TimeInfo()
   {
      super();
   }
   
   public function clone() : TimeInfo
   {
      var _loc1_:TimeInfo = null;
      _loc1_ = new TimeInfo();
      _loc1_.type = this.type;
      _loc1_.timer = this.timer;
      _loc1_.lastTime = this.lastTime;
      _loc1_.timeStep = this.timeStep;
      _loc1_.executeTime = this.executeTime;
      return _loc1_;
   }
   
   public function copy(param1:TimeInfo) : void
   {
      this.type = param1.type;
      this.timer = param1.timer;
      this.lastTime = param1.lastTime;
      this.timeStep = param1.timeStep;
      this.executeTime = param1.executeTime;
   }
}

class TimeObj
{
    
   public var timeStep:int;
   
   public var lastTime:int;
   
   public var func:Function;
   
   public var param:Object;
   
   public var priority:int;
   
   public var type:int;
   
   public var repeatCount:int;
   
   public var maxActiveFixTimes:int;
   
   public var skipCount:int;
   
   function TimeObj(param1:int, param2:Function, param3:int, param4:Object, param5:int, param6:int, param7:int, param8:int, param9:int)
   {
      super();
      this.func = param2;
      this.timeStep = param1;
      this.lastTime = param3;
      this.param = param4;
      this.priority = param5;
      this.type = param6;
      this.repeatCount = param7;
      this.skipCount = param8;
      this.maxActiveFixTimes = param9;
   }
}
