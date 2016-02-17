package player.commands
{
   public class ShowPlayerLevelUpCommand extends BasePlayerCommand
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public var level:int;
      
      public function ShowPlayerLevelUpCommand(param1:uint, param2:uint, param3:uint, param4:int)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
         this.level = param4;
      }
   }
}
