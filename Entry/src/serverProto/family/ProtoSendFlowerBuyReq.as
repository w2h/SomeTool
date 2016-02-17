package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSendFlowerBuyReq extends Message
   {
      
      public static const FRIEND_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerBuyReq.friend_id","friendId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const FRIEND_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerBuyReq.friend_name","friendName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const BUY_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerBuyReq.buy_idx","buyIdx",3 << 3 | WireType.VARINT);
      
      public static const BUY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerBuyReq.buy_count","buyCount",4 << 3 | WireType.VARINT);
       
      private var friend_id$field:ProtoPlayerKey;
      
      private var friend_name$field:String;
      
      private var buy_idx$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var buy_count$field:uint;
      
      public function ProtoSendFlowerBuyReq()
      {
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
      
      public function clearBuyIdx() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.buy_idx$field = new uint();
      }
      
      public function get hasBuyIdx() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set buyIdx(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.buy_idx$field = param1;
      }
      
      public function get buyIdx() : uint
      {
         return this.buy_idx$field;
      }
      
      public function clearBuyCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.buy_count$field = new uint();
      }
      
      public function get hasBuyCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set buyCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.buy_count$field = param1;
      }
      
      public function get buyCount() : uint
      {
         return this.buy_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFriendId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend_id$field);
         }
         if(this.hasFriendName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.friend_name$field);
         }
         if(this.hasBuyIdx)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.buy_idx$field);
         }
         if(this.hasBuyCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.buy_count$field);
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
