package map.commands
{
   import flash.geom.Point;
   
   public class GetPixelWalkableCommand extends BaseMapCommand
   {
       
      public var pixelPoint:Point;
      
      public var walkable:Boolean;
      
      public function GetPixelWalkableCommand(param1:Point)
      {
         super();
         this.pixelPoint = param1;
      }
   }
}
