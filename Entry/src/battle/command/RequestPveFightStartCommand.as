package battle.command
{
   import user.def.UserStateDef;
   import def.PluginDef;
   import com.tencent.morefun.framework.base.Command;
   
   public class RequestPveFightStartCommand extends RequestFightStartCommand
   {
       
      public var type:uint;
      
      public var id:uint;
      
      public var story:int;
      
      public var clientId:int;
      
      public var passivity:Boolean;
      
      public var difficulty:uint;
      
      public var treasureMapId:int;
      
      public var treasureMapIndex:int;
      
      public function RequestPveFightStartCommand(param1:uint, param2:uint, param3:int = 0, param4:int = 0, param5:int = 0, param6:int = 0, param7:int = 0)
      {
         super(Command.SINGLE_FILE);
         this.type = param1;
         this.id = param2;
         this.passivity = param3 != 0;
         this.story = param4;
         this.clientId = param5;
         this.treasureMapId = param6;
         this.treasureMapIndex = param7;
         this.addBeginStateInfo(UserStateDef.BASE_PVE,true);
      }
      
      override public function call() : void
      {
         if(this.passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_BE_PVE) == false)
         {
            return;
         }
         if(!this.passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_PVE) == false)
         {
            return;
         }
         super.call();
      }
      
      override public function begin() : void
      {
         super.begin();
      }
      
      override public function checkStateEnable() : Boolean
      {
         return super.checkStateEnable();
      }
      
      override public function getPluginName() : String
      {
         return PluginDef.BATTLE;
      }
   }
}
