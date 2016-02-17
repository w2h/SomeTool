package ninja.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class NinjaCommand extends Command
   {
       
      public var errorCode:int;
      
      public function NinjaCommand()
      {
         super();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NINJA;
      }
   }
}
