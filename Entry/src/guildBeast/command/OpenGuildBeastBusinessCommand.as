package guildBeast.command
{
   public class OpenGuildBeastBusinessCommand extends BaseGuildBeastCommand
   {
      
      public static const TAB_BUY:int = 0;
      
      public static const TAB_SELL:int = 1;
       
      public var tabType:int;
      
      public function OpenGuildBeastBusinessCommand(param1:int = 0)
      {
         this.tabType = param1;
         super();
      }
   }
}
