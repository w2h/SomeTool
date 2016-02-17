package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenSkillBookPackageCommand extends Command
   {
       
      public function OpenSkillBookPackageCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
   }
}
