package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.NinjaInfo;
   
   public class RequestNinjaStorageCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var ninjas:Vector.<NinjaInfo>;
      
      public function RequestNinjaStorageCommand(param1:uint)
      {
         super();
         this.id = param1;
      }
   }
}
