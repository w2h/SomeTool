package guildDungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestGuildDungeonCountCommand extends Command
   {
       
      public var currentChallengeCount:uint;
      
      public var maxChallengeCount:uint;
      
      public function RequestGuildDungeonCountCommand()
      {
         super();
      }
      
      public function RequestGuildDungeonInfoCommand() : void
      {
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD_DUNGOEN;
      }
   }
}
