package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.NinjaInfo;
   
   public class RequestNinjaByIdCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var pull:Boolean;
      
      public var ninja:NinjaInfo;
      
      public function RequestNinjaByIdCommand(param1:uint, param2:Boolean = false)
      {
         super();
         this.id = param1;
         this.pull = param2;
      }
   }
}
