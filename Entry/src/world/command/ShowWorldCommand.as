package world.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class ShowWorldCommand extends Command
   {
       
      public function ShowWorldCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.WORLD;
      }
   }
}
