package user.command
{
   public class BattlePowerChangeCommand extends BaseUserCommand
   {
       
      public var oldValue:int;
      
      public var newValue:int;
      
      public var x:int;
      
      public var y:int;
      
      public function BattlePowerChangeCommand(param1:int, param2:int, param3:int = 0, param4:int = 0)
      {
         super();
         this.oldValue = param1;
         this.newValue = param2;
         this.x = param3;
         this.y = param4;
      }
   }
}
