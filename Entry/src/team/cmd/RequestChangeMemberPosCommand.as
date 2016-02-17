package team.cmd
{
   public class RequestChangeMemberPosCommand extends BaseTeamCommand
   {
       
      public var pos1:int;
      
      public var pos2:int;
      
      public function RequestChangeMemberPosCommand(param1:int, param2:int)
      {
         super();
         this.pos1 = param1;
         this.pos2 = param2;
      }
   }
}
