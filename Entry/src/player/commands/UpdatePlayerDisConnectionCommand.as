package player.commands
{
   public class UpdatePlayerDisConnectionCommand extends BasePlayerCommand
   {
       
      public var isDisConnection:Boolean;
      
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function UpdatePlayerDisConnectionCommand(param1:Boolean, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.isDisConnection = param1;
         this.uin = param2;
         this.roleId = param3;
         this.svrId = param4;
      }
   }
}
