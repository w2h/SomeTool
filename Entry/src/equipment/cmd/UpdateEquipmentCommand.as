package equipment.cmd
{
   import bag.data.EquipmentItemData;
   
   public class UpdateEquipmentCommand extends BaseEquipmentCommand
   {
       
      public var data:EquipmentItemData;
      
      public function UpdateEquipmentCommand(param1:EquipmentItemData)
      {
         super();
         this.data = param1;
      }
   }
}
