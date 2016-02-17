package majorRole.commands
{
   public class OpenMajorRolePanelCommand extends BaseMajorRoleCommand
   {
       
      public var markIds:Array;
      
      public var type:int;
      
      public function OpenMajorRolePanelCommand(param1:int, param2:Array = null)
      {
         super();
         this.markIds = param2;
         this.type = param1;
      }
   }
}
