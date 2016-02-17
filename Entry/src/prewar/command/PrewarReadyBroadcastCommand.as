package prewar.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class PrewarReadyBroadcastCommand extends NarutoCommand
   {
       
      public var teamPos:int;
      
      public function PrewarReadyBroadcastCommand(param1:int)
      {
         super();
         this.teamPos = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PREWAR;
      }
   }
}
