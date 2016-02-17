package map.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowMoveTargetUiCommand extends Command
   {
       
      public var x:int;
      
      public var y:int;
      
      public function ShowMoveTargetUiCommand(param1:int, param2:int)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.MAP;
      }
   }
}
