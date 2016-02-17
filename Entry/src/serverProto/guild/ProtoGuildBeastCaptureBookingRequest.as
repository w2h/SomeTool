package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildBeastCaptureBookingRequest extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildBeastCaptureBookingRequest.type","type",1 << 3 | WireType.VARINT,ProtoGuildBeastCaptureBookingType);
      
      public static const HOUR:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildBeastCaptureBookingRequest.hour","hour",2 << 3 | WireType.VARINT);
      
      public static const MIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildBeastCaptureBookingRequest.min","min",3 << 3 | WireType.VARINT);
      
      public static const DIFFICULTY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildBeastCaptureBookingRequest.difficulty","difficulty",4 << 3 | WireType.VARINT,ProtoGuildBeastCaptureDifficulty);
       
      public var type:int;
      
      private var hour$field:int;
      
      private var hasField$0:uint = 0;
      
      private var min$field:int;
      
      private var difficulty$field:int;
      
      public function ProtoGuildBeastCaptureBookingRequest()
      {
         super();
      }
      
      public function clearHour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hour$field = new int();
      }
      
      public function get hasHour() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hour(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hour$field = param1;
      }
      
      public function get hour() : int
      {
         return this.hour$field;
      }
      
      public function clearMin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.min$field = new int();
      }
      
      public function get hasMin() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set min(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.min$field = param1;
      }
      
      public function get min() : int
      {
         return this.min$field;
      }
      
      public function clearDifficulty() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.difficulty$field = new int();
      }
      
      public function get hasDifficulty() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set difficulty(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.difficulty$field = param1;
      }
      
      public function get difficulty() : int
      {
         return this.difficulty$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasHour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.hour$field);
         }
         if(this.hasMin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.min$field);
         }
         if(this.hasDifficulty)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.difficulty$field);
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
