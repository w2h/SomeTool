package hud.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestActivityHubItemDataCommand extends Command
   {
       
      public var datas:Array;
      
      public var id:int;
      
      public var activityId:int;
      
      public function RequestActivityHubItemDataCommand(param1:int = 0, param2:int = 0)
      {
         super();
         this.id = param1;
         this.activityId = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
