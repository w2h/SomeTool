package guildBeast.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseGuildBeastCommand extends Command
   {
       
      public function BaseGuildBeastCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUILD_BEAST;
      }
   }
}
