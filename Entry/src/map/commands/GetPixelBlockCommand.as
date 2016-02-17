package map.commands
{
   import flash.geom.Point;
   
   public class GetPixelBlockCommand extends BaseMapCommand
   {
       
      public var pixelPoint:Point;
      
      public var block:int;
      
      public function GetPixelBlockCommand(param1:Point)
      {
         super();
         this.pixelPoint = param1;
      }
   }
}
