package team.data.event
{
   import flash.events.Event;
   
   public class TeamMemberDataEvent extends Event
   {
      
      public static const UPDATE_INDEX:String = "updateIndex";
      
      public static const UPDATE_FORMATION_NINJAS:String = "updateFormationNinjas";
       
      public var oldIndex:int;
      
      public var newIndex:int;
      
      public function TeamMemberDataEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
