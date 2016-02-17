package team.cmd
{
   public class RequestBanMemberCommand extends TeamBaseCommand
   {
       
      public var uin:uint;
      
      public var role:uint;
      
      public var svrId:uint;
      
      public function RequestBanMemberCommand(param1:uint, param2:uint, param3:int)
      {
         super();
         this.uin = param1;
         this.role = param2;
         this.svrId = param3;
      }
   }
}
