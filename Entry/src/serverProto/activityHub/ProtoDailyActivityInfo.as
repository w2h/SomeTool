package serverProto.activityHub
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDailyActivityInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const ALL_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.all_time","allTime",2 << 3 | WireType.VARINT);
      
      public static const REMAINDER_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.remainder_time","remainderTime",3 << 3 | WireType.VARINT);
      
      public static const CD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoDailyActivityInfo.cd_time","cdTime",4 << 3 | WireType.VARINT);
       
      public var id:int;
      
      private var all_time$field:int;
      
      private var hasField$0:uint = 0;
      
      private var remainder_time$field:int;
      
      private var cd_time$field:int;
      
      public function ProtoDailyActivityInfo()
      {
         super();
      }
      
      public function clearAllTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.all_time$field = new int();
      }
      
      public function get hasAllTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set allTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.all_time$field = param1;
      }
      
      public function get allTime() : int
      {
         return this.all_time$field;
      }
      
      public function clearRemainderTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remainder_time$field = new int();
      }
      
      public function get hasRemainderTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainderTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remainder_time$field = param1;
      }
      
      public function get remainderTime() : int
      {
         return this.remainder_time$field;
      }
      
      public function clearCdTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.cd_time$field = new int();
      }
      
      public function get hasCdTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set cdTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.cd_time$field = param1;
      }
      
      public function get cdTime() : int
      {
         return this.cd_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.id);
         if(this.hasAllTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.all_time$field);
         }
         if(this.hasRemainderTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_time$field);
         }
         if(this.hasCdTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.cd_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
