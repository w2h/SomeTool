package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CloseCardPackageCommand extends Command
   {
       
      public function CloseCardPackageCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
   }
}
