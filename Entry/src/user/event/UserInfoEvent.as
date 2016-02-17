package user.event
{
   import flash.events.Event;
   
   public class UserInfoEvent extends Event
   {
      
      public static const BASE_UPDATE:String = "baseUpdate";
      
      public static const MOVE_UPDATE:String = "moveUpdate";
      
      public static const NINJA_INFO_UPDATE:String = "ninjaInfoUpdate";
      
      public static const ROLE_STATE_UPDATE:String = "roleStateUpdate";
      
      public static const BASE_CHANGED:String = "baseChanged";
      
      public static const FORMATION_UPDATE:String = "formationUpdate";
      
      public static const TEAM_INFO_UPDATE:String = "teamInfoUpdate";
       
      public var changedValue:int;
      
      public var changedValueKey:int;
      
      public var changedReason:int;
      
      public function UserInfoEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
