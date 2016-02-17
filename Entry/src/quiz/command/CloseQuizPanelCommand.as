package quiz.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CloseQuizPanelCommand extends Command
   {
       
      public function CloseQuizPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.QUIZ;
      }
   }
}
