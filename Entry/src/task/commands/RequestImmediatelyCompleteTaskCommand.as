package task.commands
{
   import RSModel.command.RSModelCommand;
   import flash.geom.Point;
   
   public class RequestImmediatelyCompleteTaskCommand extends RSModelCommand
   {
       
      public var id:int;
      
      public var awards:Array;
      
      public var pos:Point;
      
      public function RequestImmediatelyCompleteTaskCommand(param1:int)
      {
         super();
         this.id = param1;
      }
   }
}
