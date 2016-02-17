package rankingStore.cmd
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class BaseRankingStoreCommand extends NarutoCommand
   {
       
      public function BaseRankingStoreCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANKING_STORE;
      }
   }
}
