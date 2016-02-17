package rank.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class OpenRankWindowCommand extends Command
   {
       
      public var type:uint;
      
      public var params:Object;
      
      public var server:String;
      
      public function OpenRankWindowCommand(param1:uint = 10, param2:Object = null, param3:String = "RANK.CROSS_X_SERVER")
      {
         super();
         this.type = param1;
         this.params = param2;
         this.server = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.RANK;
      }
   }
}
