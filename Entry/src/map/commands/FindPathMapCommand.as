package map.commands
{
   import flash.geom.Point;
   
   public class FindPathMapCommand extends BaseMapCommand
   {
       
      public var beginPixcel:Point;
      
      public var endPixcel:Point;
      
      public var shorten:int;
      
      public var shortenType:int;
      
      public var resultPixcels:Array;
      
      public function FindPathMapCommand(param1:Point, param2:Point, param3:int = 0, param4:int = 0)
      {
         super();
         this.beginPixcel = param1;
         this.endPixcel = param2;
         this.shorten = param3;
         this.shortenType = param4;
      }
   }
}
