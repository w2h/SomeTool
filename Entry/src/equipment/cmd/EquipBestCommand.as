package equipment.cmd
{
   import RSModel.command.RSModelCommand;
   
   public class EquipBestCommand extends RSModelCommand
   {
       
      public var ninjaSequenceId:uint;
      
      public function EquipBestCommand(param1:uint)
      {
         super();
         this.ninjaSequenceId = param1;
      }
   }
}
