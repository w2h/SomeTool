package ninjaSchool.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenNinjaSchoolCommand extends Command
   {
       
      public function OpenNinjaSchoolCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NINJA_SCHOOL;
      }
   }
}
