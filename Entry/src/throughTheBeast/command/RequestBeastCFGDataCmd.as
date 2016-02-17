package throughTheBeast.command
{
   import com.tencent.morefun.framework.base.Command;
   import flash.utils.Dictionary;
   import def.PluginDef;
   
   public class RequestBeastCFGDataCmd extends Command
   {
       
      public var cfgData:Dictionary;
      
      public function RequestBeastCFGDataCmd(param1:int = 2, param2:Boolean = true)
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
