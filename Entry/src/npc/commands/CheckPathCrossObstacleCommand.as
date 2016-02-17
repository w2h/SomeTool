package npc.commands
{
   public class CheckPathCrossObstacleCommand extends BaseNpcCommand
   {
       
      public var pixelPath:Array;
      
      public var obstacleNpcId:int;
      
      public var obstacleRadius:int;
      
      public function CheckPathCrossObstacleCommand(param1:Array)
      {
         super();
         this.pixelPath = param1;
      }
   }
}
