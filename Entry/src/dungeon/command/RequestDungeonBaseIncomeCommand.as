package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestDungeonBaseIncomeCommand extends Command
   {
       
      public function RequestDungeonBaseIncomeCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
