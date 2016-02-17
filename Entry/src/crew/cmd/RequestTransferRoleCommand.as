package crew.cmd
{
   public class RequestTransferRoleCommand extends BaseCrewCommand
   {
       
      public var index:int;
      
      public var money:int;
      
      public function RequestTransferRoleCommand(param1:int, param2:int)
      {
         super();
         this.index = param1;
         this.money = param2;
      }
   }
}
