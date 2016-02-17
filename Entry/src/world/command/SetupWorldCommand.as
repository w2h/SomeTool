package world.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SetupWorldCommand extends Command
   {
       
      public function SetupWorldCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
