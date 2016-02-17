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
   
   public final class ProtoComeBackV2Rsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoComeBackV2Rsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoComeBackV2Rsp.end_time","endTime",2 << 3 | WireType.VARINT);
      
      public static const LUXURY_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoComeBackV2Rsp.luxury_boxes","luxuryBoxes",3 << 3 | WireType.LENGTH_DELIMITED,ProtoLuxuryPackageBox);
      
      public static const LOGIN_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoComeBackV2Rsp.login_boxes","loginBoxes",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const TOTAL_FANLI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoComeBackV2Rsp.total_fanli","totalFanli",5 << 3 | WireType.VARINT);
      
      public static const AWARDED_FANLI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoComeBackV2Rsp.awarded_fanli","awardedFanli",6 << 3 | WireType.VARINT);
      
      public static const REMAIN_FANLI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoComeBackV2Rsp.remain_fanli","remainFanli",7 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var end_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.activity.ProtoLuxuryPackageBox")]
      public var luxuryBoxes:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var loginBoxes:Array;
      
      private var total_fanli$field:uint;
      
      private var awarded_fanli$field:uint;
      
      private var remain_fanli$field:uint;
      
      public function ProtoComeBackV2Rsp()
      {
         this.luxuryBoxes = [];
         this.loginBoxes = [];
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
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearTotalFanli() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.total_fanli$field = new uint();
      }
      
      public function get hasTotalFanli() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set totalFanli(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.total_fanli$field = param1;
      }
      
      public function get totalFanli() : uint
      {
         return this.total_fanli$field;
      }
      
      public function clearAwardedFanli() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.awarded_fanli$field = new uint();
      }
      
      public function get hasAwardedFanli() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set awardedFanli(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.awarded_fanli$field = param1;
      }
      
      public function get awardedFanli() : uint
      {
         return this.awarded_fanli$field;
      }
      
      public function clearRemainFanli() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.remain_fanli$field = new uint();
      }
      
      public function get hasRemainFanli() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set remainFanli(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.remain_fanli$field = param1;
      }
      
      public function get remainFanli() : uint
      {
         return this.remain_fanli$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.luxuryBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.luxuryBoxes[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.loginBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.loginBoxes[_loc3_]);
            _loc3_++;
         }
         if(this.hasTotalFanli)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.total_fanli$field);
         }
         if(this.hasAwardedFanli)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.awarded_fanli$field);
         }
         if(this.hasRemainFanli)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_fanli$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
