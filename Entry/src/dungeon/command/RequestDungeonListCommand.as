package dungeon.command
{
   import RSModel.command.RSModelCommand;
   import flash.utils.Dictionary;
   
   public class RequestDungeonListCommand extends RSModelCommand
   {
       
      public var type:int;
      
      public var dungeons:Dictionary;
      
      public var treasureFlag:Boolean;
      
      public function RequestDungeonListCommand(param1:int = 1)
      {
         super();
         this.type = param1;
      }
   }
}
