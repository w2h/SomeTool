package growUpStronger.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseGrowUpStrongerCommand extends NarutoCommand
   {
       
      public function CloseGrowUpStrongerCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GROWUPSTRONGER;
      }
   }
}
