package player.commands
{
   public class SelectPlayerCommand extends BasePlayerCommand
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function SelectPlayerCommand(param1:uint, param2:uint, param3:uint)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
      }
   }
}
