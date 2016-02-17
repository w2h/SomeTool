package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestDungeonFinishCommand extends Command
   {
       
      public var isOpenRewardBox:Boolean;
      
      public var isDied:Boolean;
      
      public function RequestDungeonFinishCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
