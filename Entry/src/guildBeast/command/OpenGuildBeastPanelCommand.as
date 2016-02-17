package guildBeast.command
{
   public class OpenGuildBeastPanelCommand extends BaseGuildBeastCommand
   {
      
      public static const TAB_BEAST:int = 0;
      
      public static const TAB_IMMOLATION:int = 1;
      
      public static const TAB_CATCH:int = 2;
      
      public static const INNER_TAB_FEED:int = 0;
      
      public static const INNER_TAB_BATTLE_PROPS:int = 1;
      
      public static const INNER_TAB_PROPS:int = 2;
       
      private var _tab:int = 0;
      
      private var _innerTab:int = 0;
      
      public function OpenGuildBeastPanelCommand(param1:int = 0, param2:int = 0)
      {
         super();
         this._tab = param1;
         this._innerTab = param2;
      }
      
      public function get innerTab() : int
      {
         return this._innerTab;
      }
      
      public function set innerTab(param1:int) : void
      {
         this._innerTab = param1;
      }
      
      public function get tab() : int
      {
         return this._tab;
      }
   }
}
