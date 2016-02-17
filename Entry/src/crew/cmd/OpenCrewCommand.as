package crew.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenCrewCommand extends Command
   {
       
      public var viewId:int;
      
      public var pageTab:uint;
      
      public var bagTabIndex:int = -1;
      
      public var data;
      
      public function OpenCrewCommand(param1:int = 1, param2:uint = 1, param3:* = null, param4:int = -1)
      {
         super();
         this.viewId = param1;
         this.pageTab = param2;
         this.data = param3;
         this.bagTabIndex = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CREW;
      }
   }
}
