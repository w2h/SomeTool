package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import bag.data.ItemData;
   import def.PluginDef;
   
   public class ShowSimpleDungeonRewardCommand extends Command
   {
       
      public var rewards:Vector.<ItemData>;
      
      public var notRequestQuitDungeon:Boolean;
      
      public function ShowSimpleDungeonRewardCommand(param1:Vector.<ItemData>, param2:Boolean = false)
      {
         super();
         this.rewards = param1;
         this.notRequestQuitDungeon = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
