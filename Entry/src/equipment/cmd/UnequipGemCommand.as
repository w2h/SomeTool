package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   
   public class UnequipGemCommand extends RSModelCommand
   {
       
      public var equipmentSequenceId:String;
      
      public var equippingIndex:int;
      
      public var objType:int;
      
      public function UnequipGemCommand(param1:String, param2:int)
      {
         super();
         this.equipmentSequenceId = param1;
         this.equippingIndex = param2;
      }
   }
}
