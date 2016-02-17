package dungeon.command
{
   import RSModel.command.RSModelCommand;
   
   public class OpenWipeoutIfingCommand extends RSModelCommand
   {
       
      public var type:uint;
      
      public var data:Object;
      
      public function OpenWipeoutIfingCommand(param1:uint, param2:Object = null)
      {
         super();
         this.type = param1;
         this.data = param2;
      }
   }
}
