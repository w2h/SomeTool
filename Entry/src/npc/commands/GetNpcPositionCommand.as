package npc.commands
{
   import flash.geom.Point;
   
   public class GetNpcPositionCommand extends BaseNpcCommand
   {
       
      public var npcId:int;
      
      public var useListId:Boolean;
      
      public var position:Point;
      
      public function GetNpcPositionCommand(param1:int, param2:Boolean = false)
      {
         super();
         this.npcId = param1;
         this.useListId = param2;
      }
   }
}
