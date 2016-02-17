package activity.unionService
{
   import flash.events.EventDispatcher;
   import serverProto.activity.ProtoMergeServerQueryRsp;
   import flash.events.Event;
   
   public class USModel extends EventDispatcher
   {
      
      public static const TAB_XIAOFEI:int = 0;
      
      public static const TAB_BATTLE_RANK:int = 1;
      
      public static const TAB_LOGIN_GIFT:int = 2;
      
      public static const TAB_CONSUMPTION:int = 3;
      
      public static const UPDATE_ALL:String = "updateAll";
      
      public static const TAB_CHANGE:String = "tabChange";
      
      private static var _instance:activity.unionService.USModel;
       
      private var _tabIndex:int = 0;
      
      public var serverData:ProtoMergeServerQueryRsp;
      
      public function USModel()
      {
         super();
         _instance = this;
      }
      
      public static function getInstance() : activity.unionService.USModel
      {
         if(!_instance)
         {
            _instance = new activity.unionService.USModel();
         }
         return _instance;
      }
      
      public function updateAll() : void
      {
         dispatchEvent(new Event(UPDATE_ALL));
      }
      
      public function get tabIndex() : int
      {
         return this._tabIndex;
      }
      
      public function set tabIndex(param1:int) : void
      {
         if(this._tabIndex == param1)
         {
            return;
         }
         this._tabIndex = param1;
         dispatchEvent(new Event(TAB_CHANGE));
      }
   }
}
