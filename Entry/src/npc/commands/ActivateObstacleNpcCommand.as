package npc.commands
{
   public class ActivateObstacleNpcCommand extends BaseNpcCommand
   {
       
      public var npcId:int;
      
      public function ActivateObstacleNpcCommand(param1:int)
      {
         super();
         this.npcId = param1;
      }
   }
}
