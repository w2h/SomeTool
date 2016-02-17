package skill.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseSkillCommand extends Command
   {
       
      public function BaseSkillCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.SKILL;
      }
   }
}
