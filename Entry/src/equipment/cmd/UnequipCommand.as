package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   
   public class UnequipCommand extends RSModelCommand
   {
       
      public var ninjaSequenceId:uint;
      
      public var equipmentSequenceId:String;
      
      public function UnequipCommand(param1:uint, param2:String)
      {
         super();
         this.ninjaSequenceId = param1;
         this.equipmentSequenceId = param2;
      }
   }
}
