package rankbattle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class SetRankBattleTroopIdxCmd extends NarutoCommand
   {
       
      public var troopIdx:int;
      
      public function SetRankBattleTroopIdxCmd(param1:int = 0)
      {
         this.troopIdx = param1;
         super(2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANKBATTLE;
      }
   }
}
