package exam.utils
{
   import exam.IExamPlugin;
   import com.tencent.morefun.framework.apf.core.facade.Facade;
   import def.PluginDef;
   import exam.model.ExamModel;
   import com.tencent.morefun.framework.apf.core.plugin.Plugin;
   import def.ModelDef;
   import battle.data.BattleInfo;
   
   public class ExamUtils
   {
       
      public function ExamUtils()
      {
         super();
         throw new Error(ExamUtils + " can not be instantiated.");
      }
      
      public static function get plugin() : IExamPlugin
      {
         return Facade.getInstance().retrievePlugin(PluginDef.EXAM) as IExamPlugin;
      }
      
      public static function get model() : ExamModel
      {
         return (plugin as Plugin).retrieveModel(ModelDef.EXAM) as ExamModel;
      }
      
      public static function get battleModel() : BattleInfo
      {
         return (plugin as Plugin).retrieveModel(ModelDef.BATTLE) as BattleInfo;
      }
   }
}
