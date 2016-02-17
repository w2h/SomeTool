package limitGifted.command
{
   public class OpenLimitGiftedEntranceCommand extends LimitGiftedCommand
   {
       
      public var type:int;
      
      public function OpenLimitGiftedEntranceCommand(param1:int = 0)
      {
         super();
         this.type = param1;
      }
   }
}
