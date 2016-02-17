package universeFuzion.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenUFRankbattleCommand extends NarutoCommand
   {
       
      public var needOpenShop:Boolean;
      
      public function OpenUFRankbattleCommand(param1:Boolean = false)
      {
         super();
         this.needOpenShop = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.UNIVERSE_FUZION;
      }
   }
}
