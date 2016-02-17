package quiz.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenQuizPanelCommand extends Command
   {
       
      public function OpenQuizPanelCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.QUIZ;
      }
   }
}
