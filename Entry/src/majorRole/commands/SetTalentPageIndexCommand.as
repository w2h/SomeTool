package majorRole.commands
{
   public class SetTalentPageIndexCommand extends BaseMajorRoleCommand
   {
       
      public var pageIndex:int;
      
      public function SetTalentPageIndexCommand(param1:int)
      {
         super();
         this.pageIndex = param1;
      }
   }
}
