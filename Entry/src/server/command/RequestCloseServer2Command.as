package server.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestCloseServer2Command extends Command
   {
       
      public var type:int;
      
      public function RequestCloseServer2Command(param1:int)
      {
         super();
         this.type = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NARUTO_SERVER;
      }
   }
}
