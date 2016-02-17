package user.data
{
   import ninja.model.data.FormationInfo;
   import ninja.model.data.NinjaInfo;
   import serverProto.inc.ProtoDiamondInfo;
   import com.netease.protobuf.UInt64;
   import serverProto.fashion.ProtoFashionPropertyInfo;
   import serverProto.summonMonster.ProtoContractInfoList;
   import serverProto.tabard.ProtoTabardInfo;
   
   public class OtherUserInfo
   {
       
      public var uin:uint;
      
      public var roleId:uint;
      
      public var serverId:uint;
      
      public var name:String;
      
      public var level:int;
      
      public var hp:int;
      
      public var maxHp:int;
      
      public var chakura:int;
      
      public var battlePower:int;
      
      public var roleTalentAwakenSkill:int;
      
      public var roleTalentCommonSkill:int;
      
      public var roleTalentSkill:Array;
      
      public var formationInfo:FormationInfo;
      
      public var ninjaInfos:Vector.<NinjaInfo>;
      
      public var teamId:String;
      
      public var roleCategory:uint;
      
      public var vipLevel:int;
      
      public var diamondInfo:ProtoDiamondInfo;
      
      public var guildName:String;
      
      public var guildMemberIdentity:int;
      
      public var choosedTitleId:int;
      
      public var guildId:UInt64;
      
      public var fasionPropertyInfo:ProtoFashionPropertyInfo;
      
      public var beastContractList:ProtoContractInfoList;
      
      public var tabardInfo:ProtoTabardInfo;
      
      public function OtherUserInfo()
      {
         super();
      }
   }
}
