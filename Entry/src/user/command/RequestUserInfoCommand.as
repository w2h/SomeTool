package user.command
{
   import com.tencent.morefun.framework.base.Command;
   import user.data.UserInfo;
   import def.PluginDef;
   
   public class RequestUserInfoCommand extends Command
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var serverId:uint;
      
      public var data:UserInfo;
      
      public function RequestUserInfoCommand(param1:uint, param2:uint, param3:uint, param4:UserInfo = null)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.serverId = param3;
         this.data = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
