package vip.model.data
{
   import bag.data.ItemData;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   
   public class VIPPrivilegeInfo
   {
       
      public var name:String;
      
      public var level:uint;
      
      public var price:uint;
      
      public var priceOfDiscount:uint;
      
      public var expireTime:uint;
      
      public var remainTime:uint;
      
      public var numOfDurativeDays:uint;
      
      public var offerTaskOCTC:Boolean;
      
      public var autoHuntLife:Boolean;
      
      public var autoSignAfterLogin:Boolean;
      
      public var strengthUpperBuff:uint;
      
      public var numAdditionOfBuyStrengthTimes:uint;
      
      public var dungeonExpBuffPercent:uint;
      
      public var numAdditionOfResetEliteTimes:uint;
      
      public var numAdditionOfBringinMoneyTimes:uint;
      
      public var expeditionCopperBuffPercent:uint;
      
      public var numAdditionOfRankBattleFreeTimes:uint;
      
      public var numAdditionFragmentRefineTimes:uint;
      
      public var numOfSignablePastDays:uint;
      
      public var numOfDailyCoupon:uint;
      
      public var firstActivateRewards:Vector.<ItemData>;
      
      public var fetchActivateRewardsQualified:Boolean;
      
      public var extraWeekenRewards:Boolean;
      
      public var propertyBuff:ProtoNaurtoAllPropertyInfo;
      
      public var sceneTeleportTimes:int;
      
      public function VIPPrivilegeInfo()
      {
         super();
      }
   }
}
