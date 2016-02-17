package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   import bag.data.GemItemData;
   
   public class EquipGemCommand extends RSModelCommand
   {
       
      public var equipmentSequenceId:String;
      
      public var data:GemItemData;
      
      public var equippingIndex:int;
      
      public var objType:int;
      
      public function EquipGemCommand(param1:String, param2:GemItemData, param3:int = -1)
      {
         super();
         this.equipmentSequenceId = param1;
         this.data = param2;
         this.equippingIndex = param3;
      }
   }
}
