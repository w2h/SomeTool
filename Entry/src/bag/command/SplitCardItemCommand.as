package bag.command
{
   import RSModel.command.RSModelCommand;
   import bag.data.ItemData;
   
   public class SplitCardItemCommand extends RSModelCommand
   {
       
      public var data:ItemData;
      
      public var num:int;
      
      public function SplitCardItemCommand(param1:ItemData, param2:int)
      {
         super();
         this.data = param1;
         this.num = param2;
      }
   }
}
