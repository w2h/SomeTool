package npc.commands
{
   public class GetNpcWalkableCommand extends BaseNpcCommand
   {
       
      public var npcId:int;
      
      public var walkable:Boolean;
      
      public var useListId:Boolean;
      
      public function GetNpcWalkableCommand(param1:int, param2:Boolean = false)
      {
         super();
         this.npcId = param1;
         this.useListId = param2;
      }
   }
}
