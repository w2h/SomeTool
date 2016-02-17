package equipment.cmd
{
   public class SelectEquipmentNinjaCommand extends BaseEquipmentCommand
   {
       
      public var index:int;
      
      public function SelectEquipmentNinjaCommand(param1:int)
      {
         super();
         this.index = param1;
      }
   }
}
