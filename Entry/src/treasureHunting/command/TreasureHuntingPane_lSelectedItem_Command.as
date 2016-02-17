package treasureHunting.command
{
   import com.tencent.morefun.framework.base.Command;
   import bag.data.ItemData;
   import def.PluginDef;
   
   public class TreasureHuntingPane_lSelectedItem_Command extends Command
   {
       
      public var data:ItemData;
      
      public function TreasureHuntingPane_lSelectedItem_Command(param1:ItemData)
      {
         super();
         this.data = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.TREASUREHUNTING;
      }
   }
}
