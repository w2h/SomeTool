package friend.data
{
   import serverProto.inc.ProtoPlayerKey;
   
   public class RecommendFriendInfo
   {
       
      public var playerKey:ProtoPlayerKey;
      
      public var name:String;
      
      public var roleCategory:int;
      
      public var index:int;
      
      public var level:int;
      
      public function RecommendFriendInfo()
      {
         super();
      }
   }
}
