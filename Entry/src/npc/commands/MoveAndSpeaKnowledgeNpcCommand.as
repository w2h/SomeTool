package npc.commands
{
   public class MoveAndSpeaKnowledgeNpcCommand extends BaseNpcCommand
   {
       
      public var resId:int;
      
      public var toNpcListId:int;
      
      public var speak:String;
      
      public function MoveAndSpeaKnowledgeNpcCommand(param1:int, param2:int, param3:String)
      {
         super();
         this.resId = param1;
         this.toNpcListId = param2;
         this.speak = param3;
      }
   }
}
