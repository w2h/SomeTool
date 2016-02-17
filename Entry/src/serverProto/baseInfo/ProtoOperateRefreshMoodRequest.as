package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOperateRefreshMoodRequest extends Message
   {
      
      public static const NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoOperateRefreshMoodRequest.ninja_sequence","ninjaSequence",1 << 3 | WireType.VARINT);
      
      public static const OPERATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoOperateRefreshMoodRequest.operate","operate",2 << 3 | WireType.VARINT);
       
      public var ninjaSequence:uint;
      
      private var operate$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoOperateRefreshMoodRequest()
      {
         super();
      }
      
      public function clearOperate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.operate$field = new uint();
      }
      
      public function get hasOperate() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set operate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.operate$field = param1;
      }
      
      public function get operate() : uint
      {
         return this.operate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaSequence);
         if(this.hasOperate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.operate$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
