package world.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.geom.Point;
   import def.PluginDef;
   
   public class StartChangeSceneCommand extends Command
   {
       
      public var toScene:int;
      
      public var toPosition:Point;
      
      public var toDirection:int;
      
      public var reason:int;
      
      public function StartChangeSceneCommand(param1:int = 0, param2:Point = null, param3:int = -1, param4:int = 0)
      {
         super(Command.FULL_SCREEN | Command.TOTAL_FILE,false);
         this.toScene = param1;
         this.toPosition = param2;
         this.toDirection = param3;
         this.reason = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
