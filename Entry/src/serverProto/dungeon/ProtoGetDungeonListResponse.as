package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetDungeonListResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NORMAL_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.normal_dungeon_list","normalDungeonList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNormalDungeonInfo);
      
      public static const ELITE_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.elite_dungeon_list","eliteDungeonList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoEliteDungeonInfo);
      
      public static const TEAM_DUNGEON_HAS_REWARD_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoGetDungeonListResponse.team_dungeon_has_reward_times","teamDungeonHasRewardTimes",4 << 3 | WireType.VARINT);
      
      public static const TEAM_DUNGEON_FRIEND_REWARD_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoGetDungeonListResponse.team_dungeon_friend_reward_times","teamDungeonFriendRewardTimes",5 << 3 | WireType.VARINT);
      
      public static const TEAM_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.team_dungeon_list","teamDungeonList",6 << 3 | WireType.LENGTH_DELIMITED,ProtoTeamDungeonInfo);
      
      public static const FOISON_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.foison_dungeon_list","foisonDungeonList",7 << 3 | WireType.LENGTH_DELIMITED,ProtoFoisonDungeonInfo);
      
      public static const TREASURE_DUNGEON_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetDungeonListResponse.treasure_dungeon_list","treasureDungeonList",8 << 3 | WireType.LENGTH_DELIMITED,ProtoTreasureDungeonInfo);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.dungeon.ProtoNormalDungeonInfo")]
      public var normalDungeonList:Array;
      
      [ArrayElementType("serverProto.dungeon.ProtoEliteDungeonInfo")]
      public var eliteDungeonList:Array;
      
      private var team_dungeon_has_reward_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var team_dungeon_friend_reward_times$field:int;
      
      [ArrayElementType("serverProto.dungeon.ProtoTeamDungeonInfo")]
      public var teamDungeonList:Array;
      
      [ArrayElementType("serverProto.dungeon.ProtoFoisonDungeonInfo")]
      public var foisonDungeonList:Array;
      
      [ArrayElementType("serverProto.dungeon.ProtoTreasureDungeonInfo")]
      public var treasureDungeonList:Array;
      
      public function ProtoGetDungeonListResponse()
      {
         this.normalDungeonList = [];
         this.eliteDungeonList = [];
         this.teamDungeonList = [];
         this.foisonDungeonList = [];
         this.treasureDungeonList = [];
         super();
      }
      
      public function clearTeamDungeonHasRewardTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.team_dungeon_has_reward_times$field = new int();
      }
      
      public function get hasTeamDungeonHasRewardTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set teamDungeonHasRewardTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.team_dungeon_has_reward_times$field = param1;
      }
      
      public function get teamDungeonHasRewardTimes() : int
      {
         return this.team_dungeon_has_reward_times$field;
      }
      
      public function clearTeamDungeonFriendRewardTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.team_dungeon_friend_reward_times$field = new int();
      }
      
      public function get hasTeamDungeonFriendRewardTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set teamDungeonFriendRewardTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.team_dungeon_friend_reward_times$field = param1;
      }
      
      public function get teamDungeonFriendRewardTimes() : int
      {
         return this.team_dungeon_friend_reward_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc7_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.normalDungeonList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.normalDungeonList[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.eliteDungeonList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.eliteDungeonList[_loc3_]);
            _loc3_++;
         }
         if(this.hasTeamDungeonHasRewardTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.team_dungeon_has_reward_times$field);
         }
         if(this.hasTeamDungeonFriendRewardTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.team_dungeon_friend_reward_times$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.teamDungeonList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamDungeonList[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.foisonDungeonList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.foisonDungeonList[_loc5_]);
            _loc5_++;
         }
         var _loc6_:uint = 0;
         while(_loc6_ < this.treasureDungeonList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.treasureDungeonList[_loc6_]);
            _loc6_++;
         }
         for(_loc7_ in this)
         {
            super.writeUnknown(param1,_loc7_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
