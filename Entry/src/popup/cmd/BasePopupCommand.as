package popup.cmd
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BasePopupCommand extends Command
   {
       
      public function BasePopupCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RSMODEL;
      }
   }
}
