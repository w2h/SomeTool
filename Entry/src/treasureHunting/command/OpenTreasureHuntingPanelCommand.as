package treasureHunting.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenTreasureHuntingPanelCommand extends Command
   {
       
      public function OpenTreasureHuntingPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TREASUREHUNTING;
      }
   }
}
