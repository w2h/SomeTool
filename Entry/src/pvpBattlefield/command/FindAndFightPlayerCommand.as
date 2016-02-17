package pvpBattlefield.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class FindAndFightPlayerCommand extends Command
   {
       
      public function FindAndFightPlayerCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.PVPBATTLEFIELD;
      }
   }
}
