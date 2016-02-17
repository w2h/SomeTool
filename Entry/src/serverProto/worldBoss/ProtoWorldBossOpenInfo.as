package serverProto.worldBoss
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWorldBossOpenInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const START_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.start_time","startTime",2 << 3 | WireType.VARINT);
      
      public static const END_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.end_time","endTime",3 << 3 | WireType.VARINT);
      
      public static const PREHEAT_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoWorldBossOpenInfo.preheat_time","preheatTime",4 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.worldBoss.ProtoWorldBossOpenInfo.name","name",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const DARK_DIVISION_BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossOpenInfo.dark_division_buff","darkDivisionBuff",6 << 3 | WireType.LENGTH_DELIMITED,ProtoWorldBossBuffDesc);
      
      public static const HIKAGE_BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossOpenInfo.hikage_buff","hikageBuff",7 << 3 | WireType.LENGTH_DELIMITED,ProtoWorldBossBuffDesc);
      
      public static const REVIVAL_BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoWorldBossOpenInfo.revival_buff","revivalBuff",8 << 3 | WireType.LENGTH_DELIMITED,ProtoWorldBossBuffDesc);
       
      public var id:int;
      
      private var start_time$field:int;
      
      private var hasField$0:uint = 0;
      
      private var end_time$field:int;
      
      private var preheat_time$field:int;
      
      private var name$field:String;
      
      private var dark_division_buff$field:serverProto.worldBoss.ProtoWorldBossBuffDesc;
      
      private var hikage_buff$field:serverProto.worldBoss.ProtoWorldBossBuffDesc;
      
      private var revival_buff$field:serverProto.worldBoss.ProtoWorldBossBuffDesc;
      
      public function ProtoWorldBossOpenInfo()
      {
         super();
      }
      
      public function clearStartTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.start_time$field = new int();
      }
      
      public function get hasStartTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set startTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.start_time$field = param1;
      }
      
      public function get startTime() : int
      {
         return this.start_time$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.end_time$field = new int();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set endTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.end_time$field = param1;
      }
      
      public function get endTime() : int
      {
         return this.end_time$field;
      }
      
      public function clearPreheatTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.preheat_time$field = new int();
      }
      
      public function get hasPreheatTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set preheatTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.preheat_time$field = param1;
      }
      
      public function get preheatTime() : int
      {
         return this.preheat_time$field;
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearDarkDivisionBuff() : void
      {
         this.dark_division_buff$field = null;
      }
      
      public function get hasDarkDivisionBuff() : Boolean
      {
         return this.dark_division_buff$field != null;
      }
      
      public function set darkDivisionBuff(param1:serverProto.worldBoss.ProtoWorldBossBuffDesc) : void
      {
         this.dark_division_buff$field = param1;
      }
      
      public function get darkDivisionBuff() : serverProto.worldBoss.ProtoWorldBossBuffDesc
      {
         return this.dark_division_buff$field;
      }
      
      public function clearHikageBuff() : void
      {
         this.hikage_buff$field = null;
      }
      
      public function get hasHikageBuff() : Boolean
      {
         return this.hikage_buff$field != null;
      }
      
      public function set hikageBuff(param1:serverProto.worldBoss.ProtoWorldBossBuffDesc) : void
      {
         this.hikage_buff$field = param1;
      }
      
      public function get hikageBuff() : serverProto.worldBoss.ProtoWorldBossBuffDesc
      {
         return this.hikage_buff$field;
      }
      
      public function clearRevivalBuff() : void
      {
         this.revival_buff$field = null;
      }
      
      public function get hasRevivalBuff() : Boolean
      {
         return this.revival_buff$field != null;
      }
      
      public function set revivalBuff(param1:serverProto.worldBoss.ProtoWorldBossBuffDesc) : void
      {
         this.revival_buff$field = param1;
      }
      
      public function get revivalBuff() : serverProto.worldBoss.ProtoWorldBossBuffDesc
      {
         return this.revival_buff$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.id);
         if(this.hasStartTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.start_time$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.end_time$field);
         }
         if(this.hasPreheatTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.preheat_time$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasDarkDivisionBuff)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dark_division_buff$field);
         }
         if(this.hasHikageBuff)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.hikage_buff$field);
         }
         if(this.hasRevivalBuff)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.revival_buff$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
