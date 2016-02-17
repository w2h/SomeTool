package vip.command
{
   import RSModel.command.RSModelCommand;
   import vip.IVIPPrivilege;
   
   public class RequestVIPDetailCommand extends RSModelCommand
   {
       
      public var privilege:IVIPPrivilege;
      
      public function RequestVIPDetailCommand()
      {
         super();
      }
   }
}
