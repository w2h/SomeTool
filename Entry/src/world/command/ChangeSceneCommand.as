package world.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.geom.Point;
   import def.PluginDef;
   
   public class ChangeSceneCommand extends Command
   {
       
      public var toScene:int;
      
      public var toPosition:Point;
      
      public var toDirection:int;
      
      public var reason:int;
      
      public var refreshPlayerFlag:Boolean;
      
      public function ChangeSceneCommand(param1:int = 0, param2:Point = null, param3:int = -1, param4:int = 0, param5:Boolean = false)
      {
         super(Command.FULL_SCREEN | Command.TOTAL_FILE,false);
         this.toScene = param1;
         this.toPosition = param2;
         this.toDirection = param3;
         this.reason = param4;
         this.refreshPlayerFlag = param5;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
