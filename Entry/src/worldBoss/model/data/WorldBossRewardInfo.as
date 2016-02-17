package worldBoss.model.data
{
   public class WorldBossRewardInfo
   {
       
      public var id:uint;
      
      public var name:String;
      
      public var killed:Boolean;
      
      public var hp:uint;
      
      public var exp:uint;
      
      public var expRate:uint;
      
      public var copper:uint;
      
      public var copperRate:uint;
      
      public var coupon:uint;
      
      public var gems:Vector.<worldBoss.model.data.RewardItemInfo>;
      
      public var rank:worldBoss.model.data.PlayerRankInfo;
      
      public var killer:worldBoss.model.data.PlayerRankInfo;
      
      public var fainter:worldBoss.model.data.PlayerRankInfo;
      
      public var ranklist:Vector.<worldBoss.model.data.PlayerRankInfo>;
      
      public function WorldBossRewardInfo()
      {
         super();
      }
   }
}
