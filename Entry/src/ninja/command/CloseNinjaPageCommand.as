package ninja.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class CloseNinjaPageCommand extends Command
   {
       
      public function CloseNinjaPageCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NINJA;
      }
   }
}
