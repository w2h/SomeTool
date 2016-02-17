package team.cmd
{
   public class RequestMatchTeamDungeonCommand extends BaseTeamCommand
   {
       
      public var beginMatch:Boolean = true;
      
      public var dungeonId:int;
      
      public function RequestMatchTeamDungeonCommand(param1:int = 0, param2:Boolean = true)
      {
         super();
         this.beginMatch = param2;
         this.dungeonId = param1;
      }
   }
}
