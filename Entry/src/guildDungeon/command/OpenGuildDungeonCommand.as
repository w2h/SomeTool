package guildDungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenGuildDungeonCommand extends Command
   {
       
      public function OpenGuildDungeonCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD_DUNGOEN;
      }
   }
}
