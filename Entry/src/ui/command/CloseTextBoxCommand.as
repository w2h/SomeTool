package ui.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CloseTextBoxCommand extends Command
   {
       
      public function CloseTextBoxCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
