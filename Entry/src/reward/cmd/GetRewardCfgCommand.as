package reward.cmd
{
   import RSModel.command.RSModelCommand;
   import reward.cfg.RewardCfg;
   
   public class GetRewardCfgCommand extends RSModelCommand
   {
      
      public static const TYPE_SEL_GIFT:int = 3;
       
      public var id:int;
      
      public var cfg:RewardCfg;
      
      public function GetRewardCfgCommand(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}
