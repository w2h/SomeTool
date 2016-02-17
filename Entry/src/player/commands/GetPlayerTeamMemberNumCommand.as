package player.commands
{
   public class GetPlayerTeamMemberNumCommand extends BasePlayerCommand
   {
       
      public var teamId:String;
      
      public var uin:uint;
      
      public var roleId:uint;
      
      public var serverId:uint;
      
      public var num:int;
      
      public function GetPlayerTeamMemberNumCommand(param1:uint, param2:uint, param3:uint, param4:String = null)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.serverId = param3;
         this.teamId = param4;
      }
   }
}
