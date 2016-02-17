package player.commands
{
   import player.datas.PlayerData;
   
   public class GetAllLeaderPlayerDataCommand extends BasePlayerCommand
   {
       
      public var playerDataList:Vector.<PlayerData>;
      
      public function GetAllLeaderPlayerDataCommand()
      {
         super();
      }
   }
}
