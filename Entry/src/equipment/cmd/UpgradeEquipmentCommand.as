package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   
   public class UpgradeEquipmentCommand extends RSModelCommand
   {
       
      public var equipmentSequenceId:String;
      
      public function UpgradeEquipmentCommand(param1:String)
      {
         super();
         this.equipmentSequenceId = param1;
      }
   }
}
