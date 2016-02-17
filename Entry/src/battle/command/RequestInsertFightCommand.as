package battle.command
{
   import base.NarutoCommand;
   import def.PluginDef;
   import user.def.UserStateDef;
   
   public class RequestInsertFightCommand extends NarutoCommand
   {
       
      public var uin:uint;
      
      public var roleId:int;
      
      public var svrId:int;
      
      public function RequestInsertFightCommand(param1:uint, param2:int = 0, param3:int = 0)
      {
         super();
         this.uin = param1;
         this.roleId = param2;
         this.svrId = param3;
         this.addBeginStateInfo(UserStateDef.BASE_PVP,true);
         this.addBeginStateInfo(UserStateDef.BASE_PVE,true);
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
