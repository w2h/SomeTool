package rumorPlot.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class RumorSendServerCommand extends NarutoCommand
   {
      
      public static const TYPE_NODE:int = 0;
      
      public static const TYPE_RESULT:int = 1;
       
      public var type:int;
      
      public var data:Object;
      
      public var extraData:Object;
      
      public function RumorSendServerCommand(param1:int = 0, param2:Object = null)
      {
         super();
         this.type = param1;
         this.data = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RUMORPLOT;
      }
   }
}
