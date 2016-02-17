package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDispatchTask extends Message
   {
      
      public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_id","taskId",1 << 3 | WireType.VARINT);
      
      public static const TASK_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoDispatchTask.task_name","taskName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const AWARD_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.award_coin","awardCoin",3 << 3 | WireType.VARINT);
      
      public static const TASK_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_time","taskTime",4 << 3 | WireType.VARINT);
      
      public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_status","taskStatus",5 << 3 | WireType.VARINT);
      
      public static const TASK_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.task_remain_time","taskRemainTime",6 << 3 | WireType.VARINT);
      
      public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchTask.friend_id","friendId",7 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoDispatchTask.friend_name","friendName",8 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoDispatchTask.role_category","roleCategory",9 << 3 | WireType.VARINT);
      
      public static const FRIEND_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.friend_level_coin","friendLevelCoin",10 << 3 | WireType.VARINT);
      
      public static const ROLE_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchTask.role_level_coin","roleLevelCoin",11 << 3 | WireType.VARINT);
       
      private var task_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var task_name$field:String;
      
      private var award_coin$field:uint;
      
      private var task_time$field:uint;
      
      private var task_status$field:uint;
      
      private var task_remain_time$field:uint;
      
      private var friend_id$field:ProtoPlayerKey;
      
      private var friend_name$field:String;
      
      private var role_category$field:int;
      
      private var friend_level_coin$field:uint;
      
      private var role_level_coin$field:uint;
      
      public function ProtoDispatchTask()
      {
         super();
      }
      
      public function clearTaskId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.task_id$field = new uint();
      }
      
      public function get hasTaskId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set taskId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.task_id$field = param1;
      }
      
      public function get taskId() : uint
      {
         return this.task_id$field;
      }
      
      public function clearTaskName() : void
      {
         this.task_name$field = null;
      }
      
      public function get hasTaskName() : Boolean
      {
         return this.task_name$field != null;
      }
      
      public function set taskName(param1:String) : void
      {
         this.task_name$field = param1;
      }
      
      public function get taskName() : String
      {
         return this.task_name$field;
      }
      
      public function clearAwardCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_coin$field = new uint();
      }
      
      public function get hasAwardCoin() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_coin$field = param1;
      }
      
      public function get awardCoin() : uint
      {
         return this.award_coin$field;
      }
      
      public function clearTaskTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.task_time$field = new uint();
      }
      
      public function get hasTaskTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set taskTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.task_time$field = param1;
      }
      
      public function get taskTime() : uint
      {
         return this.task_time$field;
      }
      
      public function clearTaskStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.task_status$field = new uint();
      }
      
      public function get hasTaskStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set taskStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.task_status$field = param1;
      }
      
      public function get taskStatus() : uint
      {
         return this.task_status$field;
      }
      
      public function clearTaskRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.task_remain_time$field = new uint();
      }
      
      public function get hasTaskRemainTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set taskRemainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.task_remain_time$field = param1;
      }
      
      public function get taskRemainTime() : uint
      {
         return this.task_remain_time$field;
      }
      
      public function clearFriendId() : void
      {
         this.friend_id$field = null;
      }
      
      public function get hasFriendId() : Boolean
      {
         return this.friend_id$field != null;
      }
      
      public function set friendId(param1:ProtoPlayerKey) : void
      {
         this.friend_id$field = param1;
      }
      
      public function get friendId() : ProtoPlayerKey
      {
         return this.friend_id$field;
      }
      
      public function clearFriendName() : void
      {
         this.friend_name$field = null;
      }
      
      public function get hasFriendName() : Boolean
      {
         return this.friend_name$field != null;
      }
      
      public function set friendName(param1:String) : void
      {
         this.friend_name$field = param1;
      }
      
      public function get friendName() : String
      {
         return this.friend_name$field;
      }
      
      public function clearRoleCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.role_category$field = new int();
      }
      
      public function get hasRoleCategory() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set roleCategory(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.role_category$field = param1;
      }
      
      public function get roleCategory() : int
      {
         return this.role_category$field;
      }
      
      public function clearFriendLevelCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.friend_level_coin$field = new uint();
      }
      
      public function get hasFriendLevelCoin() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set friendLevelCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.friend_level_coin$field = param1;
      }
      
      public function get friendLevelCoin() : uint
      {
         return this.friend_level_coin$field;
      }
      
      public function clearRoleLevelCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.role_level_coin$field = new uint();
      }
      
      public function get hasRoleLevelCoin() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set roleLevelCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.role_level_coin$field = param1;
      }
      
      public function get roleLevelCoin() : uint
      {
         return this.role_level_coin$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTaskId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.task_id$field);
         }
         if(this.hasTaskName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.task_name$field);
         }
         if(this.hasAwardCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.award_coin$field);
         }
         if(this.hasTaskTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.task_time$field);
         }
         if(this.hasTaskStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.task_status$field);
         }
         if(this.hasTaskRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.task_remain_time$field);
         }
         if(this.hasFriendId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend_id$field);
         }
         if(this.hasFriendName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_STRING(param1,this.friend_name$field);
         }
         if(this.hasRoleCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.role_category$field);
         }
         if(this.hasFriendLevelCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_level_coin$field);
         }
         if(this.hasRoleLevelCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.role_level_coin$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
