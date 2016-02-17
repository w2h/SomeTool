package map.commands
{
   import flash.geom.Point;
   
   public class GetRandomPixcelCommand extends BaseMapCommand
   {
       
      public var oriPoint:Point;
      
      public var offsetRange:int;
      
      public var newPoint:Point;
      
      public function GetRandomPixcelCommand(param1:Point, param2:int)
      {
         super();
         this.oriPoint = param1;
         this.offsetRange = param2;
      }
      
      override public function reset() : void
      {
         super.reset();
         this.oriPoint = null;
         this.newPoint = null;
      }
   }
}
