package friend.data
{
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.ProtoDiamondInfo;
   
   public class FriendInfo
   {
       
      public var playerKey:ProtoPlayerKey;
      
      public var name:String;
      
      public var level:int;
      
      public var role:int;
      
      public var status:int;
      
      public var teamId:String;
      
      public var friendDegreeLevel:int;
      
      public var friendDegree:int;
      
      public var maxFriendDegree:int;
      
      public var wateringStatus:int;
      
      public var vipLevel:int;
      
      public var diamondInfo:ProtoDiamondInfo;
      
      public var logOutTime:Number;
      
      public var index:int;
      
      public var selected:Boolean;
      
      public var fightCap:int;
      
      public function FriendInfo()
      {
         super();
      }
   }
}
