package prewar.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class ExitPrewarCommand extends NarutoCommand
   {
       
      public function ExitPrewarCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PREWAR;
      }
   }
}
