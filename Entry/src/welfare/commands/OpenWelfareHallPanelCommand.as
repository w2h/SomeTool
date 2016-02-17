package welfare.commands
{
   public class OpenWelfareHallPanelCommand extends BaseWelfareCommand
   {
       
      public var tab:int;
      
      public function OpenWelfareHallPanelCommand(param1:int = -1)
      {
         super();
         this.tab = param1;
      }
   }
}
