package team.cmd
{
   import team.data.TeamData;
   
   public class RequestGetTeamDataListCommand extends TeamBaseCommand
   {
       
      public var destinationId:int;
      
      public var minLevel:int;
      
      public var teamDataList:Vector.<TeamData>;
      
      public function RequestGetTeamDataListCommand(param1:int, param2:int)
      {
         super();
         this.destinationId = param1;
         this.minLevel = param2;
      }
   }
}
