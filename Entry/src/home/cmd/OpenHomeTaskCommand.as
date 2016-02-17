package home.cmd
{
   public class OpenHomeTaskCommand extends BaseHomeCommand
   {
      
      public static const OPEN:int = 0;
      
      public static const CLOSE:int = 1;
       
      public var type:int;
      
      public function OpenHomeTaskCommand(param1:int = 0)
      {
         this.type = param1;
         super();
      }
   }
}
