package serverProto.weekCycle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoModAdditionInfo extends Message
   {
      
      public static const MOD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.weekCycle.ProtoModAdditionInfo.mod_id","modId",1 << 3 | WireType.VARINT,ProtoModId);
      
      public static const ADDITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.weekCycle.ProtoModAdditionInfo.addition","addition",2 << 3 | WireType.VARINT);
      
      public static const WEEK_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.weekCycle.ProtoModAdditionInfo.week_day","weekDay",3 << 3 | WireType.VARINT);
       
      private var mod_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var addition$field:uint;
      
      private var week_day$field:uint;
      
      public function ProtoModAdditionInfo()
      {
         super();
      }
      
      public function clearModId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.mod_id$field = new int();
      }
      
      public function get hasModId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set modId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.mod_id$field = param1;
      }
      
      public function get modId() : int
      {
         return this.mod_id$field;
      }
      
      public function clearAddition() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.addition$field = new uint();
      }
      
      public function get hasAddition() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set addition(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.addition$field = param1;
      }
      
      public function get addition() : uint
      {
         return this.addition$field;
      }
      
      public function clearWeekDay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.week_day$field = new uint();
      }
      
      public function get hasWeekDay() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set weekDay(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.week_day$field = param1;
      }
      
      public function get weekDay() : uint
      {
         return this.week_day$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasModId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.mod_id$field);
         }
         if(this.hasAddition)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.addition$field);
         }
         if(this.hasWeekDay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.week_day$field);
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
