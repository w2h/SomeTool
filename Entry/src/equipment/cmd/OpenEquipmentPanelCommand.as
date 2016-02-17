package equipment.cmd
{
   import equipment.data.EquipmentSelectionData;
   
   public class OpenEquipmentPanelCommand extends BaseEquipmentCommand
   {
       
      public var viewId:int;
      
      public var data:EquipmentSelectionData;
      
      public function OpenEquipmentPanelCommand(param1:int = 1, param2:EquipmentSelectionData = null)
      {
         super();
         this.viewId = param1;
         this.data = param2;
      }
   }
}
