package team.cmd
{
   import team.data.TeamData;
   
   public class RequestGetTeamDataCommand extends TeamBaseCommand
   {
       
      public var teamId:String;
      
      public var teamData:TeamData;
      
      public function RequestGetTeamDataCommand(param1:String)
      {
         super();
         this.teamId = param1;
      }
   }
}
