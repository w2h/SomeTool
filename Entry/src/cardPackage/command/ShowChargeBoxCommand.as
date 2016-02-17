package cardPackage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowChargeBoxCommand extends Command
   {
       
      public function ShowChargeBoxCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
