package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   import bag.data.EquipmentItemData;
   import bag.data.GemItemData;
   
   public class UpgradeGemCommand extends RSModelCommand
   {
       
      public var equipmentData:EquipmentItemData;
      
      public var upgradingGemIndex:int;
      
      public var materialGems:Vector.<GemItemData>;
      
      public var operateObjType:int;
      
      public function UpgradeGemCommand(param1:EquipmentItemData, param2:int, param3:Vector.<GemItemData>, param4:int)
      {
         super();
         this.equipmentData = param1;
         this.upgradingGemIndex = param2;
         this.materialGems = param3;
         this.operateObjType = param4;
      }
   }
}
