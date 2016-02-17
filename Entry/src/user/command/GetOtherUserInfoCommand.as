package user.command
{
   import user.data.OtherUserInfo;
   
   public class GetOtherUserInfoCommand extends BaseUserCommand
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var serverId:uint;
      
      public var data:OtherUserInfo;
      
      public var type:int;
      
      public function GetOtherUserInfoCommand(param1:uint, param2:uint = 0, param3:uint = 0, param4:int = 1)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.serverId = param3;
         this.type = param4;
      }
   }
}
