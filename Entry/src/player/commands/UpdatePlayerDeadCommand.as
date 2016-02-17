package player.commands
{
   public class UpdatePlayerDeadCommand extends BasePlayerCommand
   {
       
      public var isDead:Boolean;
      
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function UpdatePlayerDeadCommand(param1:Boolean, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.isDead = param1;
         this.uin = param2;
         this.roleId = param3;
         this.svrId = param4;
      }
   }
}
