package user.data
{
   import com.netease.protobuf.UInt64;
   
   public class GuildInfoData
   {
       
      public var guildId:UInt64 = null;
      
      public var guildName:String = null;
      
      public var guildLvl:int = 0;
      
      public var guildMemberIdentity:int = 0;
      
      public var needYuanbao:uint = 0;
      
      public var needLv:uint = 0;
      
      public function GuildInfoData()
      {
         super();
      }
   }
}
