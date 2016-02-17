package npc.commands
{
   import flash.geom.Point;
   
   public class FindCrossBlockPortalCommand extends BaseNpcCommand
   {
       
      public var fromPoint:Point;
      
      public var toPoint:Point;
      
      public var portalId:int;
      
      public function FindCrossBlockPortalCommand(param1:Point, param2:Point)
      {
         super();
         this.fromPoint = param1;
         this.toPoint = param2;
      }
   }
}
