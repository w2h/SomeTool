package npc.commands
{
   public class CreateKnowledgeNpcCommand extends BaseNpcCommand
   {
       
      public var resId:int;
      
      public var name:String;
      
      public var posX:int;
      
      public var posY:int;
      
      public function CreateKnowledgeNpcCommand(param1:int, param2:String, param3:int, param4:int)
      {
         super();
         this.resId = param1;
         this.name = param2;
         this.posX = param3;
         this.posY = param4;
      }
   }
}
