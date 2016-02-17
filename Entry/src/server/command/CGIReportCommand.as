package server.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   import base.ApplicationData;
   
   public class CGIReportCommand extends Command
   {
       
      public var reportInfo:Array;
      
      public function CGIReportCommand(param1:int, param2:Array)
      {
         this.reportInfo = [];
         super();
         this.reportInfo.push({
            "name":"type",
            "value":param1
         });
         this.reportInfo.push({
            "name":"uin",
            "value":ApplicationData.singleton.selfuin
         });
         this.reportInfo.push({
            "name":"zone",
            "value":ApplicationData.singleton.ser_id
         });
         this.reportInfo.push({
            "name":"host",
            "value":ApplicationData.singleton.ip
         });
         this.reportInfo.push({
            "name":"port",
            "value":ApplicationData.singleton.port
         });
         this.reportInfo = this.reportInfo.concat(param2);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_SERVER;
      }
   }
}
