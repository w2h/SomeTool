package npc.commands
{
   public class ContactNpcCommand extends BaseNpcCommand
   {
       
      public var npcId:int;
      
      public var useListId:Boolean;
      
      public function ContactNpcCommand(param1:int, param2:Boolean = false)
      {
         super();
         this.npcId = param1;
         this.useListId = param2;
      }
   }
}
