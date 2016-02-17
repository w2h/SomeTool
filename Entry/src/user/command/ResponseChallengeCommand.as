package user.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   
   public class ResponseChallengeCommand extends NarutoCommand
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var svrId:uint;
      
      public var isAccept:Boolean;
      
      public function ResponseChallengeCommand(param1:uint, param2:uint, param3:uint, param4:Boolean)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
         this.isAccept = param4;
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.USER;
      }
   }
}
