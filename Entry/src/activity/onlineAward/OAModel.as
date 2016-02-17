package activity.onlineAward
{
   import flash.events.EventDispatcher;
   import flash.utils.Timer;
   import bag.data.ItemData;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.events.TimerEvent;
   
   public class OAModel extends EventDispatcher
   {
      
      public static const UPDATE_ALL:String = "updateAll";
      
      public static const UPDATE_TIME:String = "updateTime";
      
      private static var _instance:activity.onlineAward.OAModel;
       
      private var _leftAwardTime:int = -1;
      
      private var _timer:Timer;
      
      private var _offset:int;
      
      private var _curTime:int;
      
      public var awardList:Vector.<ItemData>;
      
      public function OAModel()
      {
         super();
         if(_instance)
         {
            throw Error("OAModel is a singleton class!");
         }
         _instance = this;
         this._timer = new Timer(1000);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimer);
      }
      
      public static function getInstance() : activity.onlineAward.OAModel
      {
         if(!_instance)
         {
            _instance = new activity.onlineAward.OAModel();
         }
         return _instance;
      }
      
      public function updateAll() : void
      {
         dispatchEvent(new Event(UPDATE_ALL));
         dispatchEvent(new Event(UPDATE_TIME));
      }
      
      public function get leftAwardTime() : int
      {
         if(this._leftAwardTime <= 0)
         {
            return this._leftAwardTime;
         }
         return Math.max(0,this._leftAwardTime - int((this._curTime - this._offset) / 1000));
      }
      
      public function set leftAwardTime(param1:int) : void
      {
         if(this._leftAwardTime == param1)
         {
            return;
         }
         this._leftAwardTime = param1;
         if(this._leftAwardTime > 0)
         {
            this._timer.reset();
            this._timer.start();
            this._curTime = this._offset = getTimer();
         }
         dispatchEvent(new Event(UPDATE_TIME));
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         this._curTime = getTimer();
         if(this.leftAwardTime <= 0)
         {
            this._timer.stop();
         }
         dispatchEvent(new Event(UPDATE_TIME));
      }
   }
}
