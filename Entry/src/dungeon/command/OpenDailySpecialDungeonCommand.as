package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenDailySpecialDungeonCommand extends Command
   {
       
      public var type:uint;
      
      public function OpenDailySpecialDungeonCommand(param1:uint = 1)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
