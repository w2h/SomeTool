package serverProto.innerPartner
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQuery3366InfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPartner.ProtoQuery3366InfoRsp.ret","ret",1 << 3 | WireType.VARINT);
      
      public static const MY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerPartner.ProtoQuery3366InfoRsp.my_info","myInfo",2 << 3 | WireType.LENGTH_DELIMITED,Proto3366MyInfo);
       
      private var ret$field:int;
      
      private var hasField$0:uint = 0;
      
      private var my_info$field:serverProto.innerPartner.Proto3366MyInfo;
      
      public function ProtoQuery3366InfoRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ret$field = new int();
      }
      
      public function get hasRet() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ret(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ret$field = param1;
      }
      
      public function get ret() : int
      {
         return this.ret$field;
      }
      
      public function clearMyInfo() : void
      {
         this.my_info$field = null;
      }
      
      public function get hasMyInfo() : Boolean
      {
         return this.my_info$field != null;
      }
      
      public function set myInfo(param1:serverProto.innerPartner.Proto3366MyInfo) : void
      {
         this.my_info$field = param1;
      }
      
      public function get myInfo() : serverProto.innerPartner.Proto3366MyInfo
      {
         return this.my_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.ret$field);
         }
         if(this.hasMyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.my_info$field);
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
