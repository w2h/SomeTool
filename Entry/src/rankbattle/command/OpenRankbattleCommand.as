package rankbattle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class OpenRankbattleCommand extends NarutoCommand
   {
       
      public var needOpenShop:Boolean;
      
      public var guildID:int;
      
      public function OpenRankbattleCommand(param1:Boolean = false, param2:int = 0)
      {
         super();
         this.needOpenShop = param1;
         this.guildID = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANKBATTLE;
      }
   }
}
