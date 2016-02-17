package bag.conf
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import cfgData.CFGDataLibs;
   import bag.data.UpgradeEquipmentCostData;
   import cfgData.dataStruct.UpgradeEquipmentCostCFG;
   import cfgData.CFGDataEnum;
   
   public class UpgradeEquipmentCostConf
   {
      
      private static const CONF_LINK:String = "bag.conf.upgradeEquipmentCost";
      
      private static const CONF_KEY:String = CFGDataEnum.ENUM_UpgradeEquipmentCostCFG;
      
      private static var _confData:ByteArray;
      
      private static var _items:Dictionary;
       
      public function UpgradeEquipmentCostConf()
      {
         super();
         throw new Error(UpgradeEquipmentCostConf + " can not be instantiated.");
      }
      
      public static function initialize(param1:Plugin) : void
      {
         _confData = param1.getResource(param1.getPluginName())[CONF_LINK] as ByteArray;
         parse(CFGDataLibs.parseData(_confData,CONF_KEY));
      }
      
      public static function destroy() : void
      {
         _confData = null;
         _items = null;
      }
      
      public static function calcMoneyCost(param1:int, param2:int) : int
      {
         var _loc3_:UpgradeEquipmentCostData = null;
         if(_items == null)
         {
            return 0;
         }
         for each(_loc3_ in _items)
         {
            if(_loc3_.level == param1)
            {
               return _loc3_["money" + param2];
            }
         }
         return 0;
      }
      
      public static function calcScrollCost(param1:int, param2:int) : int
      {
         var _loc3_:UpgradeEquipmentCostData = null;
         if(_items == null)
         {
            return 0;
         }
         for each(_loc3_ in _items)
         {
            if(_loc3_.level == param1)
            {
               return _loc3_["scroll" + param2];
            }
         }
         return 0;
      }
      
      private static function parseItem(param1:UpgradeEquipmentCostCFG) : UpgradeEquipmentCostData
      {
         var _loc2_:UpgradeEquipmentCostData = new UpgradeEquipmentCostData();
         _loc2_.id = param1.id;
         _loc2_.level = param1.level;
         _loc2_.money1 = param1.money1;
         _loc2_.money2 = param1.money2;
         _loc2_.money3 = param1.money3;
         _loc2_.money4 = param1.money4;
         _loc2_.money5 = param1.money5;
         _loc2_.money6 = param1.money6;
         _loc2_.money7 = param1.money7;
         _loc2_.money8 = param1.money8;
         _loc2_.money9 = param1.money9;
         _loc2_.scroll1 = param1.scroll1;
         _loc2_.scroll2 = param1.scroll2;
         _loc2_.scroll3 = param1.scroll3;
         _loc2_.scroll4 = param1.scroll4;
         _loc2_.scroll5 = param1.scroll5;
         _loc2_.scroll6 = param1.scroll6;
         _loc2_.scroll7 = param1.scroll7;
         _loc2_.scroll8 = param1.scroll8;
         _loc2_.scroll9 = param1.scroll9;
         return _loc2_;
      }
      
      private static function parse(param1:Dictionary) : void
      {
         var _loc2_:UpgradeEquipmentCostData = null;
         var _loc3_:UpgradeEquipmentCostCFG = null;
         _items = new Dictionary();
         for each(_loc3_ in param1)
         {
            _loc2_ = parseItem(_loc3_);
            _items[_loc2_.id] = _loc2_;
         }
      }
   }
}
