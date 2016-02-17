package player.commands
{
   public class SelfMoveToPlayerCommand extends BasePlayerCommand
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function SelfMoveToPlayerCommand(param1:uint, param2:uint, param3:uint)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
      }
   }
}
