package rankbattle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class CloseRankBattleChangeTroopCmd extends NarutoCommand
   {
       
      public function CloseRankBattleChangeTroopCmd(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANKBATTLE;
      }
   }
}
