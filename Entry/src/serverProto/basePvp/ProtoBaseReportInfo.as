package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseReportInfo extends Message
   {
      
      public static const BASE_NEW_REPORT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseReportInfo.base_new_report_count","baseNewReportCount",1 << 3 | WireType.VARINT);
       
      private var base_new_report_count$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoBaseReportInfo()
      {
         super();
      }
      
      public function clearBaseNewReportCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.base_new_report_count$field = new int();
      }
      
      public function get hasBaseNewReportCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set baseNewReportCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.base_new_report_count$field = param1;
      }
      
      public function get baseNewReportCount() : int
      {
         return this.base_new_report_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBaseNewReportCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.base_new_report_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
