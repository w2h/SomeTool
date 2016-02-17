package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class QuitDungeonByTeamMemberCommand extends Command
   {
       
      public function QuitDungeonByTeamMemberCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
