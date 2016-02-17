package player.commands
{
   public class GetPlayerNinjaCommand extends BasePlayerCommand
   {
       
      public var uin:uint;
      
      public var roleId:int;
      
      public var svrId:int;
      
      public var isShowNinja:Boolean;
      
      public var ninjaId:uint;
      
      public function GetPlayerNinjaCommand(param1:uint, param2:int, param3:int, param4:Boolean = false)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
         this.isShowNinja = param4;
      }
   }
}
