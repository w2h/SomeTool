package rankingStore.conf
{
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import rankingStore.data.StoreConfData;
   import rankingStore.data.StoreCommandData;
   
   public class StoreConf
   {
      
      private static const CONF_LINK:String = "plugin.rankingStore.storeConf";
      
      private static var _confData:XML;
      
      private static var _items:Dictionary;
       
      public function StoreConf()
      {
         super();
         throw new Error(StoreConf + " can not be instantiated.");
      }
      
      public static function initialize(param1:Plugin) : void
      {
         _confData = param1.getResource(param1.getPluginName())[CONF_LINK] as XML;
         _items = new Dictionary();
         parse(_confData);
      }
      
      public static function dispose() : void
      {
         _confData = null;
         _items = null;
      }
      
      public static function getConfDataByType(param1:int) : StoreConfData
      {
         return _items[param1];
      }
      
      public static function getTypeByOpenCommandName(param1:String) : int
      {
         var _loc2_:StoreConfData = null;
         for each(_loc2_ in _items)
         {
            if(_loc2_.openCommand == param1)
            {
               return _loc2_.type;
            }
         }
         return -1;
      }
      
      public static function getIntergratedStoreTypes() : Array
      {
         var _loc3_:StoreConfData = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(_items == null)
         {
            return null;
         }
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         for each(_loc3_ in _items)
         {
            if(_loc3_.intergrated)
            {
               _loc1_.push(_loc3_);
            }
         }
         _loc1_.sortOn("hudType",Array.NUMERIC);
         _loc4_ = _loc1_.length;
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            _loc2_.push(_loc1_[_loc5_].type);
            _loc5_++;
         }
         return _loc2_;
      }
      
      private static function parse(param1:XML) : void
      {
         var _loc4_:XML = null;
         var _loc5_:StoreConfData = null;
         if(param1 == null)
         {
            return;
         }
         var _loc2_:XMLList = param1.Store;
         var _loc3_:int = _loc2_.length();
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc4_ = _loc2_[_loc6_];
            _loc5_ = new StoreConfData();
            _loc5_.type = int(_loc4_.@type);
            _loc5_.name = _loc4_.@name;
            _loc5_.panelName = _loc4_.@panelName;
            _loc5_.panelClass = _loc4_.@panelClass;
            _loc5_.coinName = _loc4_.@coinName;
            _loc5_.coinTooltip = _loc4_.@coinTooltip;
            _loc5_.adText = _loc4_.@adText;
            _loc5_.manualRefresh = String(_loc4_.@manualRefresh) != "false";
            _loc5_.openCommand = _loc4_.@openCommand;
            _loc5_.openedCommands = parseOpenedCommands(_loc4_.OpenedCommands[0]);
            _loc5_.intergrated = _loc4_.@intergrated == "true";
            _loc5_.hudType = int(_loc4_.@hudType);
            if(_loc5_.coinTooltip != null)
            {
               _loc5_.coinTooltip = _loc5_.coinTooltip.replace("\\n","\n");
            }
            _items[_loc5_.type] = _loc5_;
            _loc6_++;
         }
      }
      
      private static function parseOpenedCommands(param1:XML) : Array
      {
         var _loc4_:XML = null;
         var _loc5_:StoreCommandData = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:XMLList = param1.Command;
         var _loc3_:int = _loc2_.length();
         var _loc6_:Array = [];
         var _loc7_:int = 0;
         while(_loc7_ < _loc3_)
         {
            _loc4_ = _loc2_[_loc7_];
            _loc5_ = new StoreCommandData();
            _loc5_.name = _loc4_.@name;
            _loc5_.args = _loc4_.@args != null?_loc4_.@args.split(","):null;
            _loc6_[_loc7_] = _loc5_;
            _loc7_++;
         }
         return _loc6_;
      }
   }
}
