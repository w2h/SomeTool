package bag.command
{
   import RSModel.command.RSModelCommand;
   import bag.data.ItemData;
   
   public class DestroyItemCommand extends RSModelCommand
   {
       
      public var data:ItemData;
      
      public function DestroyItemCommand(param1:ItemData)
      {
         super();
         this.data = param1;
      }
   }
}
