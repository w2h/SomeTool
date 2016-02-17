package dungeon.command
{
   import RSModel.command.RSModelCommand;
   
   public class RequestUniversalWipeoutCommand extends RSModelCommand
   {
       
      public var type:uint;
      
      public var extra:Object;
      
      public function RequestUniversalWipeoutCommand(param1:uint, param2:Object = null)
      {
         super();
         this.type = param1;
         this.extra = param2;
      }
   }
}
