package crew.cmd
{
   import crew.data.TransferRoleInfoData;
   
   public class RequestTransferRoleDataCommand extends BaseCrewCommand
   {
       
      public var data:TransferRoleInfoData;
      
      public function RequestTransferRoleDataCommand()
      {
         super();
      }
   }
}
