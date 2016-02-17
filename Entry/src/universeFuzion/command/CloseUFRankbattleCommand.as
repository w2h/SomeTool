package universeFuzion.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseUFRankbattleCommand extends NarutoCommand
   {
       
      public function CloseUFRankbattleCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.UNIVERSE_FUZION;
      }
   }
}
