package team.cmd
{
   public class RequestInviteMemberCommand extends TeamBaseCommand
   {
       
      public var uins:Array;
      
      public var roles:Array;
      
      public var svrId:Array;
      
      public function RequestInviteMemberCommand(param1:uint, param2:uint, param3:uint)
      {
         super();
         this.uins = [param1];
         this.roles = [param2];
         this.svrId = [param3];
      }
   }
}
