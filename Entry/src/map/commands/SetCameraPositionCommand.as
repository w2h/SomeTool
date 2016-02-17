package map.commands
{
   public class SetCameraPositionCommand extends BaseMapCommand
   {
       
      public var x:int;
      
      public var y:int;
      
      public function SetCameraPositionCommand(param1:int, param2:int)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
   }
}
