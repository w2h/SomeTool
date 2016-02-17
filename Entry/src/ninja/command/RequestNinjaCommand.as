package ninja.command
{
   import RSModel.command.RSModelCommand;
   import ninja.model.data.NinjaInfo;
   
   public class RequestNinjaCommand extends RSModelCommand
   {
       
      public var sequence:uint;
      
      public var pull:Boolean;
      
      public var ninja:NinjaInfo;
      
      public function RequestNinjaCommand(param1:uint, param2:Boolean = false)
      {
         super();
         this.sequence = param1;
         this.pull = param2;
      }
   }
}
