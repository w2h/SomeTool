package team.cmd
{
   public class ShowTeamSyncCommand extends BaseTeamCommand
   {
       
      public var uins:Array;
      
      public var roleIds:Array;
      
      public var svrIds:Array;
      
      public var isReadys:Array;
      
      public function ShowTeamSyncCommand(param1:Array, param2:Array, param3:Array, param4:Array)
      {
         super();
         this.uins = param1;
         this.roleIds = param2;
         this.svrIds = param3;
         this.isReadys = param4;
      }
   }
}
