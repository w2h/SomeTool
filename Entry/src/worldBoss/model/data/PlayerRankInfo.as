package worldBoss.model.data
{
   public class PlayerRankInfo
   {
       
      public var name:String;
      
      public var damage:uint;
      
      public var order:uint;
      
      public var coupon:uint;
      
      public var gems:Vector.<worldBoss.model.data.RewardItemInfo>;
      
      public function PlayerRankInfo()
      {
         super();
      }
   }
}
