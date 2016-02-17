package player.commands
{
   public class StopSelfMoveCommand extends BasePlayerCommand
   {
       
      public var stopCrossScene:Boolean;
      
      public var stopCrossBlock:Boolean;
      
      public var needSendStop:Boolean;
      
      public function StopSelfMoveCommand(param1:Boolean = true, param2:Boolean = true, param3:Boolean = false)
      {
         super();
         this.stopCrossScene = param1;
         this.stopCrossBlock = param2;
         this.needSendStop = param3;
      }
   }
}
