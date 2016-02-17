package ninja.command
{
   import RSModel.command.RSModelCommand;
   
   public class CheckNinjaOwnedCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var seriesIncluded:Boolean;
      
      public var owned:Boolean;
      
      public function CheckNinjaOwnedCommand(param1:uint, param2:Boolean = false)
      {
         super();
         this.id = param1;
         this.seriesIncluded = param2;
      }
   }
}
