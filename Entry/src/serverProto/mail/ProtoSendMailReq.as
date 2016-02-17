package serverProto.mail
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSendMailReq extends Message
   {
      
      public static const SID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoSendMailReq.sid","sid",1 << 3 | WireType.VARINT);
      
      public static const SEND_MAIL:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoSendMailReq.send_mail","sendMail",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSendMail);
       
      private var sid$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var send_mail$field:serverProto.mail.ProtoSendMail;
      
      public function ProtoSendMailReq()
      {
         super();
      }
      
      public function clearSid() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.sid$field = new uint();
      }
      
      public function get hasSid() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set sid(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.sid$field = param1;
      }
      
      public function get sid() : uint
      {
         return this.sid$field;
      }
      
      public function clearSendMail() : void
      {
         this.send_mail$field = null;
      }
      
      public function get hasSendMail() : Boolean
      {
         return this.send_mail$field != null;
      }
      
      public function set sendMail(param1:serverProto.mail.ProtoSendMail) : void
      {
         this.send_mail$field = param1;
      }
      
      public function get sendMail() : serverProto.mail.ProtoSendMail
      {
         return this.send_mail$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSid)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.sid$field);
         }
         if(this.hasSendMail)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.send_mail$field);
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
