package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenRumorMainCommand extends NarutoCommand
   {
      
      public static const TAB_RESULT:int = 0;
      
      public static const TAB_FAVOR:int = 1;
      
      public static const TAB_MAIN:int = 2;
      
      public static const TAB_HOME_FAVOR:int = 3;
      
      public static const TYPE_OPEN:int = 0;
      
      public static const TYPE_CLOSE:int = 1;
       
      public var type:int;
      
      public var tabIndex:int;
      
      public function OpenRumorMainCommand(param1:int = 3, param2:int = 0)
      {
         super();
         this.tabIndex = param1;
         this.type = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
