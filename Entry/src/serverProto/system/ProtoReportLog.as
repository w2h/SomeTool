package serverProto.system
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoReportLog extends Message
   {
      
      public static const LOG_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.system.ProtoReportLog.log_id","logId",1 << 3 | WireType.VARINT,ProtoReportLogID);
      
      public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.system.ProtoReportLog.msg","msg",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const VIA:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.system.ProtoReportLog.via","via",3 << 3 | WireType.LENGTH_DELIMITED);
       
      private var log_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var msg$field:String;
      
      private var via$field:String;
      
      public function ProtoReportLog()
      {
         super();
      }
      
      public function clearLogId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.log_id$field = new int();
      }
      
      public function get hasLogId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set logId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.log_id$field = param1;
      }
      
      public function get logId() : int
      {
         return this.log_id$field;
      }
      
      public function clearMsg() : void
      {
         this.msg$field = null;
      }
      
      public function get hasMsg() : Boolean
      {
         return this.msg$field != null;
      }
      
      public function set msg(param1:String) : void
      {
         this.msg$field = param1;
      }
      
      public function get msg() : String
      {
         return this.msg$field;
      }
      
      public function clearVia() : void
      {
         this.via$field = null;
      }
      
      public function get hasVia() : Boolean
      {
         return this.via$field != null;
      }
      
      public function set via(param1:String) : void
      {
         this.via$field = param1;
      }
      
      public function get via() : String
      {
         return this.via$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasLogId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.log_id$field);
         }
         if(this.hasMsg)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.msg$field);
         }
         if(this.hasVia)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.via$field);
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
