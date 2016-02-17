package limitGifted.command
{
   public class OpenLimitGiftedAwardCommand extends LimitGiftedCommand
   {
       
      public var type:int;
      
      public var award:Array;
      
      public function OpenLimitGiftedAwardCommand(param1:int, param2:Array)
      {
         super();
         this.type = param1;
         this.award = param2;
      }
   }
}
