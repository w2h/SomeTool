package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CloseMallSystemCommand extends Command
   {
       
      public function CloseMallSystemCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.CARD_PACKAGE;
      }
   }
}
