package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestQuitDungeonCommand extends Command
   {
       
      public var isDone:Boolean;
      
      public function RequestQuitDungeonCommand(param1:Boolean = false)
      {
         super();
         this.isDone = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
