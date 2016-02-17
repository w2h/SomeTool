package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCommonItemInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoCommonItemInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoCommonItemInfo.num","num",2 << 3 | WireType.VARINT);
      
      public static const EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoCommonItemInfo.expired_time","expiredTime",3 << 3 | WireType.VARINT);
      
      public static const EXPIRED_REMAINDER_SECOND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoCommonItemInfo.expired_remainder_second","expiredRemainderSecond",4 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      public var num:uint;
      
      private var expired_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var expired_remainder_second$field:int;
      
      public function ProtoCommonItemInfo()
      {
         super();
      }
      
      public function clearExpiredTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.expired_time$field = new uint();
      }
      
      public function get hasExpiredTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set expiredTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.expired_time$field = param1;
      }
      
      public function get expiredTime() : uint
      {
         return this.expired_time$field;
      }
      
      public function clearExpiredRemainderSecond() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.expired_remainder_second$field = new int();
      }
      
      public function get hasExpiredRemainderSecond() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set expiredRemainderSecond(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.expired_remainder_second$field = param1;
      }
      
      public function get expiredRemainderSecond() : int
      {
         return this.expired_remainder_second$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.num);
         if(this.hasExpiredTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.expired_time$field);
         }
         if(this.hasExpiredRemainderSecond)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.expired_remainder_second$field);
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
