package dungeon.command
{
   import com.tencent.morefun.framework.base.Command;
   import dungeon.wipeout.delegate.UniversalWipeoutDelegate;
   import def.PluginDef;
   
   public class OpenUniversalWipeoutWindowCommand extends Command
   {
       
      public var delegate:UniversalWipeoutDelegate;
      
      public function OpenUniversalWipeoutWindowCommand(param1:UniversalWipeoutDelegate)
      {
         super();
         this.delegate = param1;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.DUNGEON;
      }
   }
}
