package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RumorPlotBlackAsideCommand extends NarutoCommand
   {
       
      public var text:String = "";
      
      public var waitTime:int = 1000;
      
      public var shockType:int;
      
      public var shockTime:Number = 1;
      
      public var shockDelay:Number = 0;
      
      public var amplitude:int = 10;
      
      public var freq:int = 5;
      
      public function RumorPlotBlackAsideCommand(param1:String, param2:int, param3:int)
      {
         super();
         this.text = param1;
         this.waitTime = param2;
         this.shockType = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
