package npc.commands
{
   import flash.geom.Point;
   
   public class FindCrossBlockNpcsCommand extends BaseNpcCommand
   {
       
      public var fromPoint:Point;
      
      public var toPoint:Point;
      
      public var npcIds:Array;
      
      public function FindCrossBlockNpcsCommand(param1:Point, param2:Point)
      {
         super();
         this.fromPoint = param1;
         this.toPoint = param2;
      }
   }
}
