package team.data
{
   public class TeamData
   {
       
      public var id:String;
      
      public var name:String;
      
      public var type:int;
      
      public var destinationId:int;
      
      public var captainLevel:int;
      
      public var combatPower:int;
      
      public var members:Vector.<team.data.TeamMemberData>;
      
      public var index:int;
      
      public var allowAutoJoin:Boolean;
      
      public function TeamData()
      {
         super();
      }
      
      public function getCaptain() : team.data.TeamMemberData
      {
         var _loc1_:team.data.TeamMemberData = null;
         for each(_loc1_ in this.members)
         {
            if(_loc1_.isCaptain)
            {
               return _loc1_;
            }
         }
         return null;
      }
   }
}
