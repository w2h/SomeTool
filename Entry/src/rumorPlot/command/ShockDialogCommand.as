package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class ShockDialogCommand extends NarutoCommand
   {
       
      public var time:int;
      
      public var delay:int;
      
      public var amplitude:int;
      
      public var freq:int;
      
      public var type:int;
      
      public function ShockDialogCommand(param1:int, param2:Number, param3:Number, param4:int = 10, param5:int = 5)
      {
         super();
         this.type = param1;
         this.time = param2;
         this.delay = param3;
         this.amplitude = param4;
         this.freq = param5;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
