package crew.cmd
{
   public class OpenNewGiftCommand extends BaseCrewCommand
   {
      
      public static const SEL_GIFT:int = 0;
      
      public static const CHRISMAS_GIFT:int = 1;
       
      public var itemID:int;
      
      public var itemIndex:int;
      
      public var itemNum:int;
      
      public var type:int;
      
      public function OpenNewGiftCommand(param1:int, param2:int, param3:int = 0, param4:int = 1)
      {
         this.itemID = param1;
         this.itemIndex = param2;
         this.type = param3;
         this.itemNum = param4;
         super();
      }
   }
}
