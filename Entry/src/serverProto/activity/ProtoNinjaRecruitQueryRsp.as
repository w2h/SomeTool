package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaRecruitQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitQueryRsp.package_boxes","packageBoxes",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaRecruitAwardBox);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.begin_time","beginTime",3 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.end_time","endTime",4 << 3 | WireType.VARINT);
      
      public static const FENGYIN_COUNT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.fengyin_count","fengyinCount",5 << 3 | WireType.VARINT);
      
      public static const CURR_FENGYIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.curr_fengyin_count","currFengyinCount",6 << 3 | WireType.VARINT);
      
      public static const SUPER_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.super_num","superNum",7 << 3 | WireType.VARINT);
      
      public static const SUPER_MAX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoNinjaRecruitQueryRsp.super_max_num","superMaxNum",8 << 3 | WireType.VARINT);
      
      public static const SUPER_PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNinjaRecruitQueryRsp.super_package_boxes","superPackageBoxes",9 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaRecruitAwardBox);
       
      private var ret$field:ProtoRetInfo;
      
      [ArrayElementType("serverProto.activity.ProtoNinjaRecruitAwardBox")]
      public var packageBoxes:Array;
      
      private var begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:uint;
      
      [ArrayElementType("uint")]
      public var fengyinCount:Array;
      
      private var curr_fengyin_count$field:uint;
      
      private var super_num$field:int;
      
      private var super_max_num$field:int;
      
      [ArrayElementType("serverProto.activity.ProtoNinjaRecruitAwardBox")]
      public var superPackageBoxes:Array;
      
      public function ProtoNinjaRecruitQueryRsp()
      {
         this.packageBoxes = [];
         this.fengyinCount = [];
         this.superPackageBoxes = [];
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
      
      public function clearSuperNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.super_num$field = new int();
      }
      
      public function get hasSuperNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set superNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.super_num$field = param1;
      }
      
      public function get superNum() : int
      {
         return this.super_num$field;
      }
      
      public function clearSuperMaxNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.super_max_num$field = new int();
      }
      
      public function get hasSuperMaxNum() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set superMaxNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.super_max_num$field = param1;
      }
      
      public function get superMaxNum() : int
      {
         return this.super_max_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
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
         if(this.hasSuperNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.super_num$field);
         }
         if(this.hasSuperMaxNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.super_max_num$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.superPackageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.superPackageBoxes[_loc4_]);
            _loc4_++;
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
