package exam.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseExamCommand extends Command
   {
       
      public function BaseExamCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.EXAM;
      }
   }
}
