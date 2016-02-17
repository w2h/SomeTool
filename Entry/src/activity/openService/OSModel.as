package activity.openService
{
   import flash.events.EventDispatcher;
   import serverProto.activity.ProtoOpenServiceQueryRsp;
   import flash.events.Event;
   
   public class OSModel extends EventDispatcher
   {
      
      public static const TAB_XIAOFEI:int = 0;
      
      public static const TAB_CHONG_JI:int = 1;
      
      public static const TAB_CHARGE_RANK:int = 2;
      
      public static const TAB_COMBAT_RANK:int = 3;
      
      public static const UPDATE_ALL:String = "updateAll";
      
      public static const TAB_CHANGE:String = "tabChange";
      
      private static var _instance:activity.openService.OSModel;
       
      private var _tabIndex:int = 0;
      
      public var serverData:ProtoOpenServiceQueryRsp;
      
      public function OSModel()
      {
         super();
         _instance = this;
      }
      
      public static function getInstance() : activity.openService.OSModel
      {
         if(!_instance)
         {
            _instance = new activity.openService.OSModel();
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
