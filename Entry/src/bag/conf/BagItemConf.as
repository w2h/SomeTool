package bag.conf
{
   import bag.data.ItemData;
   import bag.data.CardItemData;
   import bag.utils.BagUtils;
   
   public class BagItemConf
   {
      
      private static var _itemConf:bag.conf.IConfProxy;
      
      private static var _fashionItemConf:bag.conf.IConfProxy;
      
      private static var _equipmentConf:bag.conf.IEquipmentConfProxy;
      
      private static var _gemConf:bag.conf.IGemConfProxy;
      
      private static var _cardConf:bag.conf.ICardConfProxy;
      
      private static var _ninjaPropsConf:bag.conf.IConfProxy;
      
      private static var _beastFragmentConf:bag.conf.IConfProxy;
      
      private static var _beastRuneConf:bag.conf.IConfProxy;
      
      private static var _treasureMapConf:bag.conf.IConfProxy;
       
      public function BagItemConf()
      {
         super();
         throw new Error(BagItemConf + " can not be instantiated.");
      }
      
      public static function initialize(param1:bag.conf.IConfProxy, param2:bag.conf.IEquipmentConfProxy, param3:bag.conf.IGemConfProxy, param4:bag.conf.ICardConfProxy, param5:bag.conf.IConfProxy, param6:bag.conf.IConfProxy, param7:bag.conf.IConfProxy, param8:bag.conf.IConfProxy, param9:bag.conf.IConfProxy) : void
      {
         _itemConf = param1;
         _equipmentConf = param2;
         _gemConf = param3;
         _cardConf = param4;
         _ninjaPropsConf = param5;
         _beastFragmentConf = param6;
         _beastRuneConf = param7;
         _treasureMapConf = param8;
         _fashionItemConf = param9;
      }
      
      public static function destroy() : void
      {
         _itemConf = null;
         _fashionItemConf = null;
         _equipmentConf = null;
         _gemConf = null;
         _cardConf = null;
         _ninjaPropsConf = null;
         _beastFragmentConf = null;
         _beastRuneConf = null;
         _treasureMapConf = null;
      }
      
      public static function findDataById(param1:uint, param2:Boolean = false) : ItemData
      {
         var _loc3_:bag.conf.IConfProxy = findConfById(param1);
         var _loc4_:ItemData = _loc3_ != null?_loc3_.findDataById(param1,param2):null;
         return _loc4_;
      }
      
      public static function fillData(param1:ItemData) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:bag.conf.IConfProxy = findConfById(param1.id);
         if(_loc2_ != null)
         {
            _loc2_.fillData(param1);
         }
      }
      
      public static function findCardDataByNinjaId(param1:uint, param2:Boolean = false) : CardItemData
      {
         return _cardConf.findDataByNinjaId(param1,param2);
      }
      
      public static function getEquipmentMaxQuality() : int
      {
         return _equipmentConf.getMaxQuality();
      }
      
      public static function getGemMaxQuality() : int
      {
         return _gemConf.getMaxQuality();
      }
      
      private static function findConfById(param1:uint) : bag.conf.IConfProxy
      {
         var _loc2_:bag.conf.IConfProxy = null;
         if(BagUtils.isEquipmentItem(param1))
         {
            _loc2_ = _equipmentConf;
         }
         else if(BagUtils.isJewel(param1))
         {
            _loc2_ = _gemConf;
         }
         else if(BagUtils.isCardItem(param1))
         {
            _loc2_ = _cardConf;
         }
         else if(BagUtils.isNinjaPropsItem(param1))
         {
            _loc2_ = _ninjaPropsConf;
         }
         else if(BagUtils.isBeastFragment(param1))
         {
            _loc2_ = _beastFragmentConf;
         }
         else if(BagUtils.isBeastRune(param1))
         {
            _loc2_ = _beastRuneConf;
         }
         else if(BagUtils.isTreasureMapItem(param1))
         {
            _loc2_ = _treasureMapConf;
         }
         else if(BagUtils.isFashionItem(param1))
         {
            _loc2_ = _fashionItemConf;
         }
         else
         {
            _loc2_ = _itemConf;
         }
         return _loc2_;
      }
   }
}
