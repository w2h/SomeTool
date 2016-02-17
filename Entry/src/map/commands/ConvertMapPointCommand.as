package map.commands
{
   import flash.geom.Point;
   
   public class ConvertMapPointCommand extends BaseMapCommand
   {
       
      public var tilePoint:Point;
      
      public var pixelPoint:Point;
      
      public function ConvertMapPointCommand(param1:Point = null, param2:Point = null)
      {
         super();
         this.tilePoint = param1;
         this.pixelPoint = param2;
      }
   }
}
