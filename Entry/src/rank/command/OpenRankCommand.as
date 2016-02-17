package rank.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenRankCommand extends NarutoCommand
   {
      
      public static const RANK_TYPE_COMBAT_POWER:int = 1;
      
      public static const RANK_TYPE_ROLE_LEVEL:int = 2;
      
      public static const RANK_TYPE_RANK_BATTLE:int = 3;
      
      public static const RANK_TYPE_RECEIVE_FLOWER:int = 4;
      
      public static const RANK_TYPE_PVP:int = 5;
       
      public var rankType:int;
      
      public var categoryType:int;
      
      public function OpenRankCommand(param1:int = 1, param2:int = 0)
      {
         this.rankType = param1;
         this.categoryType = param2;
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANK;
      }
   }
}
