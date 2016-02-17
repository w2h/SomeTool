package guild.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenLuckLotteryCommand extends NarutoCommand
   {
       
      public function OpenLuckLotteryCommand()
      {
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD;
      }
   }
}
