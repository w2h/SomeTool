package server.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestConnectServer2Command extends Command
   {
       
      public var type:int;
      
      public var cmds:Array;
      
      public function RequestConnectServer2Command(param1:int, param2:Array)
      {
         super();
         this.type = param1;
         this.cmds = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_SERVER;
      }
   }
}
