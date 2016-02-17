package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSecondaryPasswordInfo extends Message
   {
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoSecondaryPasswordInfo.status","status",1 << 3 | WireType.VARINT,ProtoSecondaryPasswordStatus);
      
      public static const REMAIND_FORGET_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoSecondaryPasswordInfo.remaind_forget_time","remaindForgetTime",2 << 3 | WireType.VARINT);
      
      public static const CAN_TRY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoSecondaryPasswordInfo.can_try_times","canTryTimes",3 << 3 | WireType.VARINT);
       
      public var status:int;
      
      private var remaind_forget_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var can_try_times$field:int;
      
      public function ProtoSecondaryPasswordInfo()
      {
         super();
      }
      
      public function clearRemaindForgetTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.remaind_forget_time$field = new uint();
      }
      
      public function get hasRemaindForgetTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set remaindForgetTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.remaind_forget_time$field = param1;
      }
      
      public function get remaindForgetTime() : uint
      {
         return this.remaind_forget_time$field;
      }
      
      public function clearCanTryTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.can_try_times$field = new int();
      }
      
      public function get hasCanTryTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set canTryTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.can_try_times$field = param1;
      }
      
      public function get canTryTimes() : int
      {
         return this.can_try_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.status);
         if(this.hasRemaindForgetTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.remaind_forget_time$field);
         }
         if(this.hasCanTryTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.can_try_times$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
