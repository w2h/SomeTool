package player.commands
{
   import player.datas.PlayerData;
   
   public class GetLeaderPlayerDataCommand extends BasePlayerCommand
   {
       
      public var playerData:PlayerData;
      
      public function GetLeaderPlayerDataCommand()
      {
         super();
      }
   }
}
