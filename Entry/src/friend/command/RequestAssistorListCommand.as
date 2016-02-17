package friend.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestAssistorListCommand extends Command
   {
       
      public var assistorInfoArr:Array;
      
      public function RequestAssistorListCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.FRIEND;
      }
   }
}
