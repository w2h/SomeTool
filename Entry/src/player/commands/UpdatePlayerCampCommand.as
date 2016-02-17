package player.commands
{
   public class UpdatePlayerCampCommand extends BasePlayerCommand
   {
       
      public var camp:int;
      
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function UpdatePlayerCampCommand(param1:int, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.camp = param1;
         this.uin = param2;
         this.roleId = param3;
         this.svrId = param4;
      }
   }
}
