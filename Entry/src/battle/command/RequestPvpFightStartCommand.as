package battle.command
{
   import user.def.UserStateDef;
   import def.PluginDef;
   
   public class RequestPvpFightStartCommand extends RequestFightStartCommand
   {
       
      public var uin:uint;
      
      public var type:int;
      
      public var role_id:uint;
      
      public var svr_id:uint;
      
      public var passivity:Boolean;
      
      public function RequestPvpFightStartCommand(param1:uint, param2:uint, param3:uint, param4:int = 0, param5:int = 3)
      {
         super();
         this.uin = param1;
         this.type = param5;
         this.role_id = param2;
         this.svr_id = param3;
         this.passivity = param4 != 0;
      }
      
      override public function call() : void
      {
         if(this.passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_BE_PVP) == false)
         {
            return;
         }
         if(!this.passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_PVP) == false)
         {
            return;
         }
         super.call();
      }
      
      override public function begin() : void
      {
         super.begin();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
