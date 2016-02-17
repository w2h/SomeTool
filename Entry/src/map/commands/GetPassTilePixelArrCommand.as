package map.commands
{
   import flash.geom.Point;
   
   public class GetPassTilePixelArrCommand extends BaseMapCommand
   {
       
      public var startPixelPoint:Point;
      
      public var endPixelPoint:Point;
      
      public var passPixels:Array;
      
      public function GetPassTilePixelArrCommand(param1:Point, param2:Point)
      {
         super();
         this.startPixelPoint = param1;
         this.endPixelPoint = param2;
      }
   }
}
