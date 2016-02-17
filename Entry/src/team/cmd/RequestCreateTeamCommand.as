package team.cmd
{
   public class RequestCreateTeamCommand extends TeamBaseCommand
   {
       
      public var name:String;
      
      public var goalType:int;
      
      public var goalId:int;
      
      public function RequestCreateTeamCommand(param1:String, param2:int, param3:int)
      {
         super();
         this.name = param1;
         this.goalType = param2;
         this.goalId = param3;
      }
   }
}
