package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.NinjaInfo;
   
   public class RequestNinjaPackageCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var ninjas:Vector.<NinjaInfo>;
      
      public function RequestNinjaPackageCommand(param1:uint = 1)
      {
         super();
         this.id = param1;
      }
   }
}
