package reward.cmd
{
   import RSModel.command.RSModelCommand;
   import reward.cfg.RewardConfig;
   
   public class GetRewardConfigCommand extends RSModelCommand
   {
       
      public var config:RewardConfig;
      
      public function GetRewardConfigCommand()
      {
         super();
      }
   }
}
