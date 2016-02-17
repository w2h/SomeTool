package bag.command
{
   import RSModel.command.RSModelCommand;
   
   public class UseItemCommand extends RSModelCommand
   {
       
      public var id:uint;
      
      public var num:int;
      
      public var index:int;
      
      public function UseItemCommand(param1:uint, param2:int, param3:int = 0)
      {
         super();
         this.id = param1;
         this.num = param2;
         this.index = param3;
      }
   }
}
