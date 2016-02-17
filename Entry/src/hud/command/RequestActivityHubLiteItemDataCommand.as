package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestActivityHubLiteItemDataCommand extends Command
   {
       
      public var type:int;
      
      public function RequestActivityHubLiteItemDataCommand(param1:int = 0)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
