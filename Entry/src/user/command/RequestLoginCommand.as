package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import def.PluginDef;
   
   public class RequestLoginCommand extends Command
   {
       
      public var uin:uint;
      
      public var role:int;
      
      public var channel:int;
      
      public function RequestLoginCommand(param1:uint, param2:int, param3:int)
      {
         super();
         this.uin = param1;
         this.role = param2;
         this.channel = param3;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
