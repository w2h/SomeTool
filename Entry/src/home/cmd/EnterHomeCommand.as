package home.cmd
{
   public class EnterHomeCommand extends BaseHomeCommand
   {
       
      public var npcId:int;
      
      public function EnterHomeCommand(param1:int = -1)
      {
         super();
         this.npcId = param1;
      }
   }
}
