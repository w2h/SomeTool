package serverProto.connectProtocol
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetEncryptListResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.connectProtocol.ProtoGetEncryptListResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const IS_ENCRYPT:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.connectProtocol.ProtoGetEncryptListResponse.is_encrypt","isEncrypt",2 << 3 | WireType.VARINT);
      
      public static const EXCEPTION_CMD:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.connectProtocol.ProtoGetEncryptListResponse.exception_cmd","exceptionCmd",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var is_encrypt$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("uint")]
      public var exceptionCmd:Array;
      
      public function ProtoGetEncryptListResponse()
      {
         this.exceptionCmd = [];
         super();
      }
      
      public function clearIsEncrypt() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_encrypt$field = new Boolean();
      }
      
      public function get hasIsEncrypt() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isEncrypt(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_encrypt$field = param1;
      }
      
      public function get isEncrypt() : Boolean
      {
         return this.is_encrypt$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasIsEncrypt)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_encrypt$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.exceptionCmd.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.exceptionCmd[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
