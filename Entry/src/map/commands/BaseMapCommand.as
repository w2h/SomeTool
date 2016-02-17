package map.commands
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class BaseMapCommand extends Command
   {
       
      public function BaseMapCommand(param1:int = 2)
      {
         super(param1);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.MAP;
      }
   }
}
