package quiz.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenQuizRulePanelCommand extends Command
   {
       
      public function OpenQuizRulePanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.QUIZ;
      }
   }
}
