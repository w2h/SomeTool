package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenBgDialogCommand extends NarutoCommand
   {
       
      public var bgUrl:String;
      
      public var msg:String;
      
      public var time:Number;
      
      public function OpenBgDialogCommand(param1:String, param2:String, param3:Number)
      {
         super();
         this.bgUrl = param1;
         this.msg = param2;
         this.time = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
