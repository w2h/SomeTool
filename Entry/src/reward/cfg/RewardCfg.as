package reward.cfg
{
   public class RewardCfg
   {
       
      public var id:int;
      
      public var items:Vector.<reward.cfg.RewardItemCfg>;
      
      public var randomItems:Vector.<reward.cfg.RewardItemCfg>;
      
      public var randomType:int;
      
      public var randomNum:int;
      
      public function RewardCfg()
      {
         super();
         this.items = new Vector.<RewardItemCfg>();
         this.randomItems = new Vector.<RewardItemCfg>();
      }
   }
}
