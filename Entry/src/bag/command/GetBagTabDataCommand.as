package bag.command
{
   import RSModel.command.RSModelCommand;
   
   public class GetBagTabDataCommand extends RSModelCommand
   {
       
      public var tab:int;
      
      public var forceUpdate:Boolean;
      
      public var data:Object;
      
      public function GetBagTabDataCommand(param1:int = 0, param2:Boolean = false)
      {
         super();
         this.tab = param1;
         this.forceUpdate = param2;
      }
   }
}
