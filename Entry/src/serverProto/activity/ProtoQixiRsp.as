package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQixiRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiRsp.begin_time","beginTime",2 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiRsp.end_time","endTime",3 << 3 | WireType.VARINT);
      
      public static const OPEN_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiRsp.open_flag","openFlag",4 << 3 | WireType.VARINT);
      
      public static const SUBJECT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiRsp.subject_id","subjectId",5 << 3 | WireType.VARINT);
      
      public static const SPECIAL_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQixiRsp.special_item_num","specialItemNum",6 << 3 | WireType.VARINT);
      
      public static const QIXI_TASK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiRsp.qixi_task","qixiTask",7 << 3 | WireType.LENGTH_DELIMITED,ProtoQixiTaskVolume);
      
      public static const QIXI_TREASURE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiRsp.qixi_treasure","qixiTreasure",8 << 3 | WireType.LENGTH_DELIMITED,ProtoQixiTreasure);
      
      public static const YUQUE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQixiRsp.yuque","yuque",9 << 3 | WireType.LENGTH_DELIMITED,ProtoQixiYuque);
       
      private var ret$field:ProtoRetInfo;
      
      private var begin_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:uint;
      
      private var open_flag$field:uint;
      
      private var subject_id$field:uint;
      
      private var special_item_num$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoQixiTaskVolume")]
      public var qixiTask:Array;
      
      private var qixi_treasure$field:serverProto.activity.ProtoQixiTreasure;
      
      private var yuque$field:serverProto.activity.ProtoQixiYuque;
      
      public function ProtoQixiRsp()
      {
         this.qixiTask = [];
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
      
      public function clearOpenFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.open_flag$field = new uint();
      }
      
      public function get hasOpenFlag() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set openFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.open_flag$field = param1;
      }
      
      public function get openFlag() : uint
      {
         return this.open_flag$field;
      }
      
      public function clearSubjectId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.subject_id$field = new uint();
      }
      
      public function get hasSubjectId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set subjectId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.subject_id$field = param1;
      }
      
      public function get subjectId() : uint
      {
         return this.subject_id$field;
      }
      
      public function clearSpecialItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.special_item_num$field = new uint();
      }
      
      public function get hasSpecialItemNum() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set specialItemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.special_item_num$field = param1;
      }
      
      public function get specialItemNum() : uint
      {
         return this.special_item_num$field;
      }
      
      public function clearQixiTreasure() : void
      {
         this.qixi_treasure$field = null;
      }
      
      public function get hasQixiTreasure() : Boolean
      {
         return this.qixi_treasure$field != null;
      }
      
      public function set qixiTreasure(param1:serverProto.activity.ProtoQixiTreasure) : void
      {
         this.qixi_treasure$field = param1;
      }
      
      public function get qixiTreasure() : serverProto.activity.ProtoQixiTreasure
      {
         return this.qixi_treasure$field;
      }
      
      public function clearYuque() : void
      {
         this.yuque$field = null;
      }
      
      public function get hasYuque() : Boolean
      {
         return this.yuque$field != null;
      }
      
      public function set yuque(param1:serverProto.activity.ProtoQixiYuque) : void
      {
         this.yuque$field = param1;
      }
      
      public function get yuque() : serverProto.activity.ProtoQixiYuque
      {
         return this.yuque$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         if(this.hasOpenFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.open_flag$field);
         }
         if(this.hasSubjectId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.subject_id$field);
         }
         if(this.hasSpecialItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.special_item_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.qixiTask.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.qixiTask[_loc2_]);
            _loc2_++;
         }
         if(this.hasQixiTreasure)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.qixi_treasure$field);
         }
         if(this.hasYuque)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.yuque$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
