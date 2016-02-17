package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.GuildMemberIdentity;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildBeastCaptureBookingResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.identity","identity",2 << 3 | WireType.VARINT,GuildMemberIdentity);
      
      public static const DIFFICULTY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.difficulty","difficulty",3 << 3 | WireType.VARINT,ProtoGuildBeastCaptureDifficulty);
      
      public static const CAPTURE_BOOKING_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.capture_booking_times","captureBookingTimes",4 << 3 | WireType.VARINT);
      
      public static const CAPTURE_END_SEC:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.capture_end_sec","captureEndSec",5 << 3 | WireType.VARINT);
      
      public static const TOTOL_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.totol_times","totolTimes",6 << 3 | WireType.VARINT);
      
      public static const REMAINDER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.remainder_times","remainderTimes",7 << 3 | WireType.VARINT);
      
      public static const SERVER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.server_time","serverTime",8 << 3 | WireType.VARINT);
      
      public static const FIRST_OPEN_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildBeastCaptureBookingResponse.first_open_flag","firstOpenFlag",9 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var identity$field:int;
      
      private var hasField$0:uint = 0;
      
      private var difficulty$field:int;
      
      private var capture_booking_times$field:uint;
      
      private var capture_end_sec$field:int;
      
      private var totol_times$field:int;
      
      private var remainder_times$field:int;
      
      private var server_time$field:uint;
      
      private var first_open_flag$field:Boolean;
      
      public function ProtoGuildBeastCaptureBookingResponse()
      {
         super();
      }
      
      public function clearIdentity() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.identity$field = new int();
      }
      
      public function get hasIdentity() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set identity(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.identity$field = param1;
      }
      
      public function get identity() : int
      {
         return this.identity$field;
      }
      
      public function clearDifficulty() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.difficulty$field = new int();
      }
      
      public function get hasDifficulty() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set difficulty(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.difficulty$field = param1;
      }
      
      public function get difficulty() : int
      {
         return this.difficulty$field;
      }
      
      public function clearCaptureBookingTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.capture_booking_times$field = new uint();
      }
      
      public function get hasCaptureBookingTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set captureBookingTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.capture_booking_times$field = param1;
      }
      
      public function get captureBookingTimes() : uint
      {
         return this.capture_booking_times$field;
      }
      
      public function clearCaptureEndSec() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.capture_end_sec$field = new int();
      }
      
      public function get hasCaptureEndSec() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set captureEndSec(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.capture_end_sec$field = param1;
      }
      
      public function get captureEndSec() : int
      {
         return this.capture_end_sec$field;
      }
      
      public function clearTotolTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.totol_times$field = new int();
      }
      
      public function get hasTotolTimes() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set totolTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.totol_times$field = param1;
      }
      
      public function get totolTimes() : int
      {
         return this.totol_times$field;
      }
      
      public function clearRemainderTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.remainder_times$field = new int();
      }
      
      public function get hasRemainderTimes() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set remainderTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.remainder_times$field = param1;
      }
      
      public function get remainderTimes() : int
      {
         return this.remainder_times$field;
      }
      
      public function clearServerTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.server_time$field = new uint();
      }
      
      public function get hasServerTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set serverTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.server_time$field = param1;
      }
      
      public function get serverTime() : uint
      {
         return this.server_time$field;
      }
      
      public function clearFirstOpenFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.first_open_flag$field = new Boolean();
      }
      
      public function get hasFirstOpenFlag() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set firstOpenFlag(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.first_open_flag$field = param1;
      }
      
      public function get firstOpenFlag() : Boolean
      {
         return this.first_open_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasIdentity)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.identity$field);
         }
         if(this.hasDifficulty)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.difficulty$field);
         }
         if(this.hasCaptureBookingTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.capture_booking_times$field);
         }
         if(this.hasCaptureEndSec)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.capture_end_sec$field);
         }
         if(this.hasTotolTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.totol_times$field);
         }
         if(this.hasRemainderTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_times$field);
         }
         if(this.hasServerTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.server_time$field);
         }
         if(this.hasFirstOpenFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_BOOL(param1,this.first_open_flag$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
