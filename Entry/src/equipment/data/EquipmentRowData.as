package equipment.data
{
   import bag.data.EquipmentItemData;
   
   public class EquipmentRowData
   {
       
      public var ninjaId:uint;
      
      public var ninjaSequenceId:uint;
      
      public var ninjaLevel:int;
      
      public var ninjaName:String;
      
      public var equipmentItems:Vector.<EquipmentItemData>;
      
      public function EquipmentRowData()
      {
         super();
      }
   }
}
