package bag.conf
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import cfgData.CFGDataLibs;
   import bag.data.UpgradeEquipmentValueData;
   import bag.data.EquipmentItemData;
   import bag.data.GemItemData;
   import bag.utils.BagUtils;
   import cfgData.dataStruct.UpgradeEquipmentValueCFG;
   import cfgData.CFGDataEnum;
   
   public class UpgradeEquipmentValueConf
   {
      
      private static const CONF_LINK:String = "bag.conf.upgradeEquipmentValue";
      
      private static const CONF_KEY:String = CFGDataEnum.ENUM_UpgradeEquipmentValueCFG;
      
      private static const GEM_NUM:int = 5;
      
      private static var _confData:ByteArray;
      
      private static var _items:Dictionary;
       
      public function UpgradeEquipmentValueConf()
      {
         super();
         throw new Error(UpgradeEquipmentValueConf + " can not be instantiated.");
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
      
      public static function calcValue(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:UpgradeEquipmentValueData = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(_items == null || param2 == 0)
         {
            return 0;
         }
         for each(_loc4_ in _items)
         {
            if(_loc4_.type == param1)
            {
               _loc5_ = (param2 - 1) * 5 + 1;
               _loc6_ = _loc5_ + (param3 - 1);
               return _loc4_["val" + _loc6_];
            }
         }
         return 0;
      }
      
      public static function calcTotalValue(param1:int, param2:int, param3:int, param4:int, param5:int) : int
      {
         var _loc6_:int = calcValue(param1,param2,param3);
         return param4 + _loc6_ * (param5 - 1);
      }
      
      public static function calcEquipmentValues(param1:EquipmentItemData) : Array
      {
         var _loc8_:GemItemData = null;
         var _loc9_:* = 0;
         if(param1 == null)
         {
            return [];
         }
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = BagUtils.calcEquipmentType(param1.id);
         _loc2_ = _loc2_ + UpgradeEquipmentValueConf.calcTotalValue(_loc7_,param1.quality,1,param1.val1,param1.level);
         _loc3_ = _loc3_ + UpgradeEquipmentValueConf.calcTotalValue(_loc7_,param1.quality,2,param1.val2,param1.level);
         _loc4_ = _loc4_ + UpgradeEquipmentValueConf.calcTotalValue(_loc7_,param1.quality,3,param1.val3,param1.level);
         _loc5_ = _loc5_ + UpgradeEquipmentValueConf.calcTotalValue(_loc7_,param1.quality,4,param1.val4,param1.level);
         _loc6_ = _loc6_ + UpgradeEquipmentValueConf.calcTotalValue(_loc7_,param1.quality,5,param1.val5,param1.level);
         if(param1.gems != null)
         {
            _loc9_ = 0;
            while(_loc9_ < GEM_NUM)
            {
               _loc8_ = param1.gems[_loc9_];
               if(_loc8_ != null)
               {
                  _loc2_ = _loc2_ + _loc8_.val1;
                  _loc3_ = _loc3_ + _loc8_.val2;
                  _loc4_ = _loc4_ + _loc8_.val3;
                  _loc5_ = _loc5_ + _loc8_.val4;
                  _loc6_ = _loc6_ + _loc8_.val5;
               }
               _loc9_++;
            }
         }
         return [_loc2_,_loc3_,_loc4_,_loc5_,_loc6_];
      }
      
      private static function parseItem(param1:UpgradeEquipmentValueCFG) : UpgradeEquipmentValueData
      {
         var _loc2_:UpgradeEquipmentValueData = new UpgradeEquipmentValueData();
         _loc2_.id = param1.id;
         _loc2_.type = param1.type;
         _loc2_.val1 = param1.val1;
         _loc2_.val2 = param1.val2;
         _loc2_.val3 = param1.val3;
         _loc2_.val4 = param1.val4;
         _loc2_.val5 = param1.val5;
         _loc2_.val6 = param1.val6;
         _loc2_.val7 = param1.val7;
         _loc2_.val8 = param1.val8;
         _loc2_.val9 = param1.val9;
         _loc2_.val10 = param1.val10;
         _loc2_.val11 = param1.val11;
         _loc2_.val12 = param1.val12;
         _loc2_.val13 = param1.val13;
         _loc2_.val14 = param1.val14;
         _loc2_.val15 = param1.val15;
         _loc2_.val16 = param1.val16;
         _loc2_.val17 = param1.val17;
         _loc2_.val18 = param1.val18;
         _loc2_.val19 = param1.val19;
         _loc2_.val20 = param1.val20;
         _loc2_.val21 = param1.val21;
         _loc2_.val22 = param1.val22;
         _loc2_.val23 = param1.val23;
         _loc2_.val24 = param1.val24;
         _loc2_.val25 = param1.val25;
         _loc2_.val26 = param1.val26;
         _loc2_.val27 = param1.val27;
         _loc2_.val28 = param1.val28;
         _loc2_.val29 = param1.val29;
         _loc2_.val30 = param1.val30;
         _loc2_.val31 = param1.val31;
         _loc2_.val32 = param1.val32;
         _loc2_.val33 = param1.val33;
         _loc2_.val34 = param1.val34;
         _loc2_.val35 = param1.val35;
         _loc2_.val36 = param1.val36;
         _loc2_.val37 = param1.val37;
         _loc2_.val38 = param1.val38;
         _loc2_.val39 = param1.val39;
         _loc2_.val40 = param1.val40;
         _loc2_.val41 = param1.val41;
         _loc2_.val42 = param1.val42;
         _loc2_.val43 = param1.val43;
         _loc2_.val44 = param1.val44;
         _loc2_.val45 = param1.val45;
         return _loc2_;
      }
      
      private static function parse(param1:Dictionary) : void
      {
         var _loc2_:UpgradeEquipmentValueData = null;
         var _loc3_:UpgradeEquipmentValueCFG = null;
         _items = new Dictionary();
         for each(_loc3_ in param1)
         {
            _loc2_ = parseItem(_loc3_);
            _items[_loc2_.id] = _loc2_;
         }
      }
   }
}
