package rumorPlot.command
{
   import base.NarutoCommand;
   import rumorPlot.model.info.DialogNodeInfo;
   import def.PluginDef;
   
   public class RumorPlotDialogCommand extends NarutoCommand
   {
      
      public static const OPEN:int = 0;
      
      public static const CLOSE:int = 1;
      
      public static const PAUSE:int = 2;
      
      public static const RECOVER:int = 3;
      
      public static const NEXT:int = 4;
      
      public static const SKIP:int = 5;
      
      public static const BG_SHOCK_NONE:int = 0;
      
      public static const BG_SHOCK_H:int = 41;
      
      public static const BG_SHOCK_V:int = 42;
      
      public static const BG_SHOCK_HV:int = 43;
       
      public var dialogId:int;
      
      public var dialogType:int;
      
      public var type:int = 0;
      
      public var dialogNodeInfo:DialogNodeInfo;
      
      public function RumorPlotDialogCommand(param1:int, param2:int = 0, param3:int = 0)
      {
         this.type = param1;
         this.dialogId = param2;
         this.dialogType = param3;
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
