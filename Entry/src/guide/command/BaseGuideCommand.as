package guide.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseGuideCommand extends Command
   {
       
      public function BaseGuideCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.GUIDE;
      }
   }
}
