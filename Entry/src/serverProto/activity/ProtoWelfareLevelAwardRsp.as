package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWelfareLevelAwardRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoWelfareLevelAwardRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BOX_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoWelfareLevelAwardRsp.box_id","boxId",2 << 3 | WireType.VARINT);
      
      public static const AWARD_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoWelfareLevelAwardRsp.award_status","awardStatus",3 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var box_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var award_status$field:int;
      
      public function ProtoWelfareLevelAwardRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearBoxId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.box_id$field = new uint();
      }
      
      public function get hasBoxId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set boxId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.box_id$field = param1;
      }
      
      public function get boxId() : uint
      {
         return this.box_id$field;
      }
      
      public function clearAwardStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_status$field = new int();
      }
      
      public function get hasAwardStatus() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_status$field = param1;
      }
      
      public function get awardStatus() : int
      {
         return this.award_status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasBoxId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.box_id$field);
         }
         if(this.hasAwardStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.award_status$field);
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
