package ninja.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenNinjaPageCommand extends Command
   {
       
      public var id:uint;
      
      public var keepTabs:Vector.<uint>;
      
      public var data:Object;
      
      public function OpenNinjaPageCommand(param1:uint = 1, param2:Object = null)
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
