package world.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseWorldCommand extends Command
   {
       
      public function BaseWorldCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
