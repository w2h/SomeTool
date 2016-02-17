package user.data
{
   import flash.events.EventDispatcher;
   import flash.events.Event;
   
   [Event(name="change",type="flash.events.Event")]
   public class SecondPasswordInfo extends EventDispatcher
   {
       
      public var validated:Boolean;
      
      private var _status:int;
      
      private var _canTryNum:int;
      
      private var _remaindForgetDay:int;
      
      public function SecondPasswordInfo()
      {
         super();
      }
      
      public function get canTryNum() : int
      {
         return this._canTryNum;
      }
      
      public function set canTryNum(param1:int) : void
      {
         if(this._canTryNum == param1)
         {
            return;
         }
         this._canTryNum = param1;
         if(hasEventListener(Event.CHANGE))
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function set status(param1:int) : void
      {
         if(this._status == param1)
         {
            return;
         }
         this._status = param1;
         if(hasEventListener(Event.CHANGE))
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      public function get remaindForgetDay() : int
      {
         return this._remaindForgetDay;
      }
      
      public function set remaindForgetDay(param1:int) : void
      {
         if(this._remaindForgetDay == param1)
         {
            return;
         }
         this._remaindForgetDay = param1;
         if(hasEventListener(Event.CHANGE))
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
   }
}
