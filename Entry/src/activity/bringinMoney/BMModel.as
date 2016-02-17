package activity.bringinMoney
{
   import flash.events.EventDispatcher;
   import flash.events.Event;
   
   public class BMModel extends EventDispatcher
   {
      
      public static const SHOW_BOX_EFFECT:String = "showBoxEffect";
      
      public static const SHOW_PROGRESS_EFFECT:String = "showProgressEffect";
      
      public static const UPDATE_ALL:String = "updateAll";
      
      private static var _instance:activity.bringinMoney.BMModel;
       
      public var bringinTimes:int;
      
      public var goldingotNum:int;
      
      public var moneyNum:int;
      
      public var packageBoxes:Array;
      
      public var clickBoxID:int = -1;
      
      public var leftBringinTimes:int;
      
      public function BMModel()
      {
         super();
         _instance = this;
      }
      
      public static function getInstance() : activity.bringinMoney.BMModel
      {
         if(!_instance)
         {
            _instance = new activity.bringinMoney.BMModel();
         }
         return _instance;
      }
      
      public function updateAll() : void
      {
         dispatchEvent(new Event(UPDATE_ALL));
      }
   }
}
