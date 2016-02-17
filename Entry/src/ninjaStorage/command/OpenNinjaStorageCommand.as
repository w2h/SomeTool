package ninjaStorage.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenNinjaStorageCommand extends Command
   {
       
      public var tab:int;
      
      public function OpenNinjaStorageCommand(param1:int)
      {
         super();
         this.tab = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NINJA_STORAGE;
      }
   }
}
