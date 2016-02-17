package player.commands
{
   import user.def.UserStateDef;
   
   public class SelfMoveToNpcCommand extends BasePlayerCommand
   {
       
      public var npcId:int;
      
      public var shorten:int;
      
      public var autoClick:Boolean;
      
      public var useListId:Boolean;
      
      public var waitClickFinish:Boolean;
      
      public var shortenType:int;
      
      public function SelfMoveToNpcCommand(param1:int, param2:int = 100, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false, param6:int = 0)
      {
         super();
         this.npcId = param1;
         this.shorten = param2;
         this.useListId = param3;
         this.autoClick = param4;
         this.waitClickFinish = param5;
         this.shortenType = param6;
         addEnableStateInfo(UserStateDef.ACTION_CAN_WALK,true);
      }
   }
}
