package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   
   public class EvolveEquipmentCommand extends RSModelCommand
   {
       
      public var equipmentSequenceId:String;
      
      public function EvolveEquipmentCommand(param1:String)
      {
         super();
         this.equipmentSequenceId = param1;
      }
   }
}
