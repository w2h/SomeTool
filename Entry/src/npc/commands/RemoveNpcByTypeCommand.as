package npc.commands
{
   public class RemoveNpcByTypeCommand extends BaseNpcCommand
   {
       
      public var type:int;
      
      public function RemoveNpcByTypeCommand(param1:int)
      {
         super();
         this.type = param1;
      }
   }
}
