package player.commands
{
   import flash.geom.Point;
   import user.def.UserStateDef;
   
   public class SelfContinueMoveToPixelCommand extends BasePlayerCommand
   {
       
      public var pixcel:Point;
      
      public var shorten:int;
      
      public var shortenType:int;
      
      public function SelfContinueMoveToPixelCommand(param1:Point, param2:int = 0, param3:int = 0)
      {
         super();
         this.pixcel = param1;
         this.shorten = param2;
         this.shortenType = param3;
         addEnableStateInfo(UserStateDef.ACTION_CAN_WALK,true);
      }
   }
}
