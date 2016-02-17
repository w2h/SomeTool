package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   
   public class AutoUpgradeEquipmentCommand extends RSModelCommand
   {
       
      public var equipmentSequenceId:String;
      
      public function AutoUpgradeEquipmentCommand(param1:String)
      {
         super();
         this.equipmentSequenceId = param1;
      }
   }
}
