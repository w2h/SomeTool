package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleTime extends Message
   {
      
      public static const START_HOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoBattleTime.start_hour","startHour",1 << 3 | WireType.VARINT);
      
      public static const START_MIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoBattleTime.start_min","startMin",2 << 3 | WireType.VARINT);
       
      private var start_hour$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var start_min$field:uint;
      
      public function ProtoBattleTime()
      {
         super();
      }
      
      public function clearStartHour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.start_hour$field = new uint();
      }
      
      public function get hasStartHour() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set startHour(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.start_hour$field = param1;
      }
      
      public function get startHour() : uint
      {
         return this.start_hour$field;
      }
      
      public function clearStartMin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.start_min$field = new uint();
      }
      
      public function get hasStartMin() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set startMin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.start_min$field = param1;
      }
      
      public function get startMin() : uint
      {
         return this.start_min$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasStartHour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.start_hour$field);
         }
         if(this.hasStartMin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.start_min$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
