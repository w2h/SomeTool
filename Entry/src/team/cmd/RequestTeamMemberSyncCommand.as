package team.cmd
{
   public class RequestTeamMemberSyncCommand extends BaseTeamCommand
   {
       
      public var type:int;
      
      public function RequestTeamMemberSyncCommand(param1:int)
      {
         super();
         this.type = param1;
      }
   }
}
