package player.commands
{
   public class SetPlayerAllowTargetPosCommand extends BasePlayerCommand
   {
       
      public var x:int;
      
      public var y:int;
      
      public function SetPlayerAllowTargetPosCommand(param1:int, param2:int)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
   }
}
