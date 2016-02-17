package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BeginDungeonByTeamMemberCommand extends Command
   {
       
      public function BeginDungeonByTeamMemberCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
