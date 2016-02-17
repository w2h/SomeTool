package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSendFlowerQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerQueryRsp.friend_id","friendId",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerQueryRsp.friend_name","friendName",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const FRIEND_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.friend_level","friendLevel",4 << 3 | WireType.VARINT);
      
      public static const FRIEND_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.friend_category","friendCategory",5 << 3 | WireType.VARINT);
      
      public static const FRIEND_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.friend_degree","friendDegree",6 << 3 | WireType.VARINT);
      
      public static const NEXT_LEVEL_DEGREE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerQueryRsp.next_level_degree","nextLevelDegree",7 << 3 | WireType.VARINT);
      
      public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerQueryRsp.award_list","awardList",9 << 3 | WireType.LENGTH_DELIMITED,ProtoSendFlowerAwardList);
       
      public var ret:ProtoRetInfo;
      
      private var friend_id$field:ProtoPlayerKey;
      
      private var friend_name$field:String;
      
      private var friend_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var friend_category$field:uint;
      
      private var friend_degree$field:uint;
      
      private var next_level_degree$field:uint;
      
      [ArrayElementType("serverProto.family.ProtoSendFlowerAwardList")]
      public var awardList:Array;
      
      public function ProtoSendFlowerQueryRsp()
      {
         this.awardList = [];
         super();
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
      
      public function clearFriendLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.friend_level$field = new uint();
      }
      
      public function get hasFriendLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set friendLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.friend_level$field = param1;
      }
      
      public function get friendLevel() : uint
      {
         return this.friend_level$field;
      }
      
      public function clearFriendCategory() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.friend_category$field = new uint();
      }
      
      public function get hasFriendCategory() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set friendCategory(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.friend_category$field = param1;
      }
      
      public function get friendCategory() : uint
      {
         return this.friend_category$field;
      }
      
      public function clearFriendDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.friend_degree$field = new uint();
      }
      
      public function get hasFriendDegree() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set friendDegree(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.friend_degree$field = param1;
      }
      
      public function get friendDegree() : uint
      {
         return this.friend_degree$field;
      }
      
      public function clearNextLevelDegree() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.next_level_degree$field = new uint();
      }
      
      public function get hasNextLevelDegree() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set nextLevelDegree(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.next_level_degree$field = param1;
      }
      
      public function get nextLevelDegree() : uint
      {
         return this.next_level_degree$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasFriendId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend_id$field);
         }
         if(this.hasFriendName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.friend_name$field);
         }
         if(this.hasFriendLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_level$field);
         }
         if(this.hasFriendCategory)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_category$field);
         }
         if(this.hasFriendDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_degree$field);
         }
         if(this.hasNextLevelDegree)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.next_level_degree$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.awardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awardList[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
