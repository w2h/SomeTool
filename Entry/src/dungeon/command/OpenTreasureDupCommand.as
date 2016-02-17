package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenTreasureDupCommand extends Command
   {
       
      public function OpenTreasureDupCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
