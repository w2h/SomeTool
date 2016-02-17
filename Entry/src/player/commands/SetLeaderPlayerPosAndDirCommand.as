package player.commands
{
   import flash.geom.Point;
   
   public class SetLeaderPlayerPosAndDirCommand extends BasePlayerCommand
   {
       
      public var position:Point;
      
      public var direction:int;
      
      public function SetLeaderPlayerPosAndDirCommand(param1:Point, param2:int = -1)
      {
         super();
         this.position = param1;
         this.direction = param2;
      }
   }
}
