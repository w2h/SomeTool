package map.commands
{
   public class ShortenPathMapCommand extends BaseMapCommand
   {
       
      public var sourcePixcels:Array;
      
      public var shortenLength:int;
      
      public var shortenType:int;
      
      public var resultPixcels:Array;
      
      public function ShortenPathMapCommand(param1:Array, param2:int, param3:int = 0)
      {
         super();
         this.sourcePixcels = param1;
         this.shortenLength = param2;
         this.shortenType = param3;
      }
   }
}
