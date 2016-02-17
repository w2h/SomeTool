package majorRole.model
{
   import flash.events.EventDispatcher;
   import majorRole.datas.TalentPageData;
   import flash.utils.getTimer;
   import flash.events.Event;
   
   [Event(name="change",type="flash.events.Event")]
   public class TalentSkillModel extends EventDispatcher
   {
      
      public static const TALENT_TIME_OUT:uint = 3000000;
       
      public var type:int;
      
      public var special:int;
      
      public var normal:int;
      
      public var skills:Array;
      
      public var beast:int;
      
      public var name:String;
      
      public var page:int;
      
      public var talentPageData:TalentPageData;
      
      private var _respond:Boolean = false;
      
      private var _lastRespondTime:uint = 0;
      
      public function TalentSkillModel(param1:int)
      {
         super();
         this.type = param1;
      }
      
      public function checkData() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._respond && this._lastRespondTime != 0 && getTimer() - this._lastRespondTime < TALENT_TIME_OUT)
         {
            _loc1_ = true;
         }
         else
         {
            _loc1_ = false;
         }
         return _loc1_;
      }
      
      public function isResponsed() : Boolean
      {
         return this._respond;
      }
      
      public function markNdSync() : void
      {
         this._respond = false;
      }
      
      public function responsed() : void
      {
         this._respond = true;
         this._lastRespondTime = getTimer();
      }
      
      public function dispatchChange() : void
      {
         dispatchEvent(new Event(Event.CHANGE));
      }
   }
}
