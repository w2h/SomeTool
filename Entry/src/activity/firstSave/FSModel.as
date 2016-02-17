package activity.firstSave
{
   import flash.events.EventDispatcher;
   import bag.data.ItemData;
   import flash.events.Event;
   
   public class FSModel extends EventDispatcher
   {
      
      public static const UPDATE_ALL:String = "updateAll";
      
      private static var _instance:activity.firstSave.FSModel;
       
      public var awardStatus:int;
      
      public var awardList:Vector.<ItemData>;
      
      public function FSModel()
      {
         super();
         _instance = this;
      }
      
      public static function getInstance() : activity.firstSave.FSModel
      {
         if(!_instance)
         {
            _instance = new activity.firstSave.FSModel();
         }
         return _instance;
      }
      
      public function updateAll() : void
      {
         dispatchEvent(new Event(UPDATE_ALL));
      }
   }
}
