package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaTryOut extends Message
   {
      
      public static const LEFT_MINUTES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaTryOut.left_minutes","leftMinutes",1 << 3 | WireType.VARINT);
      
      public static const VIP_FLAG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.baseInfo.ProtoNinjaTryOut.vip_flag","vipFlag",2 << 3 | WireType.VARINT);
       
      private var left_minutes$field:int;
      
      private var hasField$0:uint = 0;
      
      private var vip_flag$field:int;
      
      public function ProtoNinjaTryOut()
      {
         super();
      }
      
      public function clearLeftMinutes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.left_minutes$field = new int();
      }
      
      public function get hasLeftMinutes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set leftMinutes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.left_minutes$field = param1;
      }
      
      public function get leftMinutes() : int
      {
         return this.left_minutes$field;
      }
      
      public function clearVipFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.vip_flag$field = new int();
      }
      
      public function get hasVipFlag() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set vipFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.vip_flag$field = param1;
      }
      
      public function get vipFlag() : int
      {
         return this.vip_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasLeftMinutes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.left_minutes$field);
         }
         if(this.hasVipFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.vip_flag$field);
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
