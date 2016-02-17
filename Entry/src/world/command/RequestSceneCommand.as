package world.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestSceneCommand extends Command
   {
      
      public static var TYPE_NONE:int = 0;
      
      public static var TYPE_PORTAL:int = 1;
       
      public var id:int;
      
      public var type:int;
      
      public function RequestSceneCommand(param1:int, param2:int = 0)
      {
         super(2);
         this.id = param1;
         this.type = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
