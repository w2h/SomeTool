package serverProto.cardpack
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCardPacketInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.status","status",2 << 3 | WireType.VARINT);
      
      public static const COUNTDOWN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.countdown","countdown",3 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.type","type",4 << 3 | WireType.VARINT);
      
      public static const OVER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.over_time","overTime",5 << 3 | WireType.VARINT);
      
      public static const FREE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.free_count","freeCount",6 << 3 | WireType.VARINT);
      
      public static const FREE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.free_time","freeTime",7 << 3 | WireType.VARINT);
      
      public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.begin_time","beginTime",8 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPacketInfo.end_time","endTime",9 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      private var status$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var countdown$field:uint;
      
      private var type$field:uint;
      
      private var over_time$field:uint;
      
      private var free_count$field:uint;
      
      private var free_time$field:uint;
      
      private var begin_time$field:uint;
      
      private var end_time$field:uint;
      
      public function ProtoCardPacketInfo()
      {
         super();
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.status$field = new uint();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set status(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.status$field = param1;
      }
      
      public function get status() : uint
      {
         return this.status$field;
      }
      
      public function clearCountdown() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.countdown$field = new uint();
      }
      
      public function get hasCountdown() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set countdown(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.countdown$field = param1;
      }
      
      public function get countdown() : uint
      {
         return this.countdown$field;
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.type$field = new uint();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set type(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.type$field = param1;
      }
      
      public function get type() : uint
      {
         return this.type$field;
      }
      
      public function clearOverTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.over_time$field = new uint();
      }
      
      public function get hasOverTime() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set overTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.over_time$field = param1;
      }
      
      public function get overTime() : uint
      {
         return this.over_time$field;
      }
      
      public function clearFreeCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.free_count$field = new uint();
      }
      
      public function get hasFreeCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set freeCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.free_count$field = param1;
      }
      
      public function get freeCount() : uint
      {
         return this.free_count$field;
      }
      
      public function clearFreeTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.free_time$field = new uint();
      }
      
      public function get hasFreeTime() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set freeTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.free_time$field = param1;
      }
      
      public function get freeTime() : uint
      {
         return this.free_time$field;
      }
      
      public function clearBeginTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.begin_time$field = new uint();
      }
      
      public function get hasBeginTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set beginTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.begin_time$field = param1;
      }
      
      public function get beginTime() : uint
      {
         return this.begin_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.status$field);
         }
         if(this.hasCountdown)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.countdown$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
         }
         if(this.hasOverTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.over_time$field);
         }
         if(this.hasFreeCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.free_count$field);
         }
         if(this.hasFreeTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.free_time$field);
         }
         if(this.hasBeginTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.begin_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
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
