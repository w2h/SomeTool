package team.cmd
{
   public class RequestJoinTeamCommand extends TeamBaseCommand
   {
       
      public var joinTeamId:String;
      
      public var joinType:int;
      
      public function RequestJoinTeamCommand(param1:String, param2:int = 0)
      {
         super();
         this.joinTeamId = param1;
         this.joinType = param2;
      }
   }
}
