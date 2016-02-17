package npc.commands
{
   import flash.geom.Point;
   
   public class FindNearestRopeCommand extends BaseNpcCommand
   {
       
      public var fromPoint:Point;
      
      public var toPoint:Point;
      
      public var ropeNpcId:int;
      
      public function FindNearestRopeCommand(param1:Point, param2:Point)
      {
         super();
         this.fromPoint = param1;
         this.toPoint = param2;
      }
   }
}
