package sys.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SysReportCommand extends Command
   {
       
      public var id:uint;
      
      public var msg:Object;
      
      public function SysReportCommand(param1:uint, param2:Object = null)
      {
         super();
         this.id = param1;
         this.msg = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_SERVER;
      }
   }
}
