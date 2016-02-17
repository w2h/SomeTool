package player.commands
{
   public class UpdateWinStreakTimeCommand extends BasePlayerCommand
   {
       
      public var winStreakTime:int;
      
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public function UpdateWinStreakTimeCommand(param1:int, param2:uint, param3:uint, param4:uint)
      {
         super();
         this.winStreakTime = param1;
         this.uin = param2;
         this.roleId = param3;
         this.svrId = param4;
      }
   }
}
