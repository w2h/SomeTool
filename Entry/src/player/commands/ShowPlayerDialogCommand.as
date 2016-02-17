package player.commands
{
   public class ShowPlayerDialogCommand extends BasePlayerCommand
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public var dialogText:String;
      
      public function ShowPlayerDialogCommand(param1:uint, param2:uint, param3:uint, param4:String)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
         this.dialogText = param4;
      }
   }
}
