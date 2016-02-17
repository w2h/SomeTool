package equipment.utils
{
   import bag.utils.BagUtils;
   import bag.data.EquipmentItemData;
   
   public class FumoUtil
   {
      
      public static const INLAY_NUM:int = 3;
      
      public static const VALUE_NAMES:Array = ["","生命","攻击","防御","忍术","抗性","先攻","暴击","暴伤","控制","连击"];
      
      public static const PROPERTY_NAMES:Array = ["","hp","bodyAttack","bodyDefense","ninjaAttack","ninjaDefense","speed","critValue","critDamageValue","controlValue","comboValue"];
      
      public static const GEMS_LEVEL:Array = [3,6,9];
       
      public function FumoUtil()
      {
         super();
      }
      
      public static function getValueName(param1:int, param2:Boolean) : String
      {
         var _loc3_:int = BagUtils.calcEquipmentType(param1);
         if(param2)
         {
            _loc3_ = _loc3_ + 5;
         }
         return VALUE_NAMES[_loc3_];
      }
      
      public static function getPropertyName(param1:int, param2:Boolean) : String
      {
         var _loc3_:int = BagUtils.calcEquipmentType(param1);
         if(param2)
         {
            _loc3_ = _loc3_ + 5;
         }
         return PROPERTY_NAMES[_loc3_];
      }
      
      public static function isGemOpen(param1:EquipmentItemData, param2:int) : Boolean
      {
         if(param1 == null || param1.fumoInfo == null)
         {
            return false;
         }
         var _loc3_:int = GEMS_LEVEL[param2];
         if(param1.fumoInfo.fumoLevel >= _loc3_)
         {
            return true;
         }
         return false;
      }
      
      public static function getBaseValue(param1:EquipmentItemData, param2:Boolean) : int
      {
         var _loc4_:* = 0;
         if(param1 == null || param1.fumoInfo == null)
         {
            return 0;
         }
         var _loc3_:String = FumoUtil.getPropertyName(param1.id,param2);
         if(!param2)
         {
            _loc4_ = Math.floor(param1.fumoInfo.levelAttr[_loc3_] * param1.fumoInfo.levelAttr.nowLevelBaseRate / 100);
         }
         else
         {
            _loc4_ = Math.floor(param1.fumoInfo.levelAttr[_loc3_] * param1.fumoInfo.levelAttr.nowLevelForgeRate / 100);
         }
         return _loc4_;
      }
      
      public static function getBaseValueNextLv(param1:EquipmentItemData, param2:Boolean) : int
      {
         var _loc4_:* = 0;
         if(param1 == null || param1.fumoInfo == null)
         {
            return 0;
         }
         var _loc3_:String = FumoUtil.getPropertyName(param1.id,param2);
         if(!param2)
         {
            _loc4_ = Math.floor(param1.fumoInfo.levelAttr[_loc3_] * param1.fumoInfo.levelAttr.nextLevelBaseRate / 100);
         }
         else
         {
            _loc4_ = Math.floor(param1.fumoInfo.levelAttr[_loc3_] * param1.fumoInfo.levelAttr.nextLevelForgeRate / 100);
         }
         return _loc4_;
      }
      
      public static function getGemType() : int
      {
         return 11;
      }
   }
}
