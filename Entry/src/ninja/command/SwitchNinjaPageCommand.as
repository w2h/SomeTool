package ninja.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class SwitchNinjaPageCommand extends Command
   {
       
      public var id:uint;
      
      public var data:Object;
      
      public function SwitchNinjaPageCommand(param1:uint, param2:Object = null)
      {
         super();
         this.id = param1;
         this.data = param2;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.NINJA;
      }
   }
}
