package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDispatchNinjaChooseRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoDispatchNinjaChooseRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AWARD_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaChooseRsp.award_coin","awardCoin",2 << 3 | WireType.VARINT);
      
      public static const FRIEND_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaChooseRsp.friend_level_coin","friendLevelCoin",3 << 3 | WireType.VARINT);
      
      public static const ROLE_LEVEL_COIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoDispatchNinjaChooseRsp.role_level_coin","roleLevelCoin",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var award_coin$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var friend_level_coin$field:uint;
      
      private var role_level_coin$field:uint;
      
      public function ProtoDispatchNinjaChooseRsp()
      {
         super();
      }
      
      public function clearAwardCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.award_coin$field = new uint();
      }
      
      public function get hasAwardCoin() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awardCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.award_coin$field = param1;
      }
      
      public function get awardCoin() : uint
      {
         return this.award_coin$field;
      }
      
      public function clearFriendLevelCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.friend_level_coin$field = new uint();
      }
      
      public function get hasFriendLevelCoin() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set friendLevelCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.friend_level_coin$field = param1;
      }
      
      public function get friendLevelCoin() : uint
      {
         return this.friend_level_coin$field;
      }
      
      public function clearRoleLevelCoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.role_level_coin$field = new uint();
      }
      
      public function get hasRoleLevelCoin() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roleLevelCoin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.role_level_coin$field = param1;
      }
      
      public function get roleLevelCoin() : uint
      {
         return this.role_level_coin$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasAwardCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.award_coin$field);
         }
         if(this.hasFriendLevelCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.friend_level_coin$field);
         }
         if(this.hasRoleLevelCoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
