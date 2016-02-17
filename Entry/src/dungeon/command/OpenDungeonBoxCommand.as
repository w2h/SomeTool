package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenDungeonBoxCommand extends Command
   {
       
      public var dungeon:int;
      
      public var windowTab:uint;
      
      public var restoreUserInterface:Boolean;
      
      public var selection:Vector.<uint>;
      
      public function OpenDungeonBoxCommand(param1:int = 0, param2:uint = 1)
      {
         super();
         this.dungeon = param1;
         this.windowTab = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
