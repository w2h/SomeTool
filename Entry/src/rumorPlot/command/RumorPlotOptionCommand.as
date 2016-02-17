package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RumorPlotOptionCommand extends NarutoCommand
   {
      
      public static const OPEN:int = 0;
      
      public static const CLOSE:int = 1;
      
      public static const SELECT:int = 2;
       
      public var params:Array;
      
      public var goodsArr:Array;
      
      public var type:int = 0;
      
      public var selectGoodValue:int;
      
      public var data:Object;
      
      public function RumorPlotOptionCommand(param1:int, param2:Array = null, param3:Array = null)
      {
         this.type = param1;
         this.params = param2;
         this.goodsArr = param3;
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
