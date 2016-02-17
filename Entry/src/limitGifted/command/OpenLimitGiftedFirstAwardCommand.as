package limitGifted.command
{
   public class OpenLimitGiftedFirstAwardCommand extends LimitGiftedCommand
   {
       
      public var award:Array;
      
      public function OpenLimitGiftedFirstAwardCommand(param1:Array)
      {
         this.award = param1;
         super();
      }
   }
}
