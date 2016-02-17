package cardPackage.data
{
   public class ShopItemData
   {
       
      public var goodsIdx:int;
      
      public var goodsName:String;
      
      public var goodsNormalPrice:uint;
      
      public var goodsVipPrice:uint;
      
      public var goodsCashPrice:uint;
      
      public var url:String;
      
      public var m_currentNum:uint = 0;
      
      public var goodsType:uint;
      
      public var isUseCash:uint = 1;
      
      public var goodsItemId:uint;
      
      public var selected:Boolean = false;
      
      public var begin_time:uint = 7;
      
      public var end_time:uint = 8;
      
      public var day_buy_num:uint = 9;
      
      public var limit_level:uint = 10;
      
      public var day_recharge_amount:uint = 11;
      
      public var max_buy_num:uint = 12;
      
      public var remain_time:uint = 13;
      
      public function ShopItemData()
      {
         super();
      }
   }
}
