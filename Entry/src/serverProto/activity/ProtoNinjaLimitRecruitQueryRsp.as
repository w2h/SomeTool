package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLimitRecruitQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaLimitRecruitQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaLimitRecruitQueryRsp.package_boxes","packageBoxes",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaLimitRecruitQueryRsp.begin_time","beginTime",3 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaLimitRecruitQueryRsp.end_time","endTime",4 << 3 | WireType.VARINT);
      
      public static const FENGYIN_COUNT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaLimitRecruitQueryRsp.fengyin_count","fengyinCount",5 << 3 | WireType.VARINT);
      
      public static const CURR_FENGYIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaLimitRecruitQueryRsp.curr_fengyin_count","currFengyinCount",6 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      private var begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:uint;
      
      [ArrayElementType("uint")]
      public var fengyinCount:Array;
      
      private var curr_fengyin_count$field:uint;
      
      public function ProtoNinjaLimitRecruitQueryRsp()
      {
         this.packageBoxes = [];
         this.fengyinCount = [];
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
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.begin_time$field = new uint();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set beginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : uint
      {
         return this.begin_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearCurrFengyinCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.curr_fengyin_count$field = new uint();
      }
      
      public function get hasCurrFengyinCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set currFengyinCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.curr_fengyin_count$field = param1;
      }
      
      public function get currFengyinCount() : uint
      {
         return this.curr_fengyin_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc2_]);
            _loc2_++;
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.fengyinCount.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.fengyinCount[_loc3_]);
            _loc3_++;
         }
         if(this.hasCurrFengyinCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.curr_fengyin_count$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
