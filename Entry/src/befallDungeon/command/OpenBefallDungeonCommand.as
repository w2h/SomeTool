package befallDungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenBefallDungeonCommand extends Command
   {
       
      public function OpenBefallDungeonCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BEFALL_DUNGEON;
      }
   }
}
