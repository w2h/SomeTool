package commandline.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ExecuteCommandlineCommand extends Command
   {
       
      public var commandlineInfo:String;
      
      public function ExecuteCommandlineCommand(param1:String)
      {
         super();
         this.commandlineInfo = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.COMMANDLINE;
      }
   }
}
