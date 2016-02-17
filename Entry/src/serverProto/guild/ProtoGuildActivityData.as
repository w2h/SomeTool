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
   
   public final class ProtoGuildActivityData extends Message
   {
      
      public static const TODAY_LUCKY_WHEEL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.today_lucky_wheel_count","todayLuckyWheelCount",1 << 3 | WireType.VARINT);
      
      public static const MAX_LUCKY_WHEEL_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.max_lucky_wheel_count","maxLuckyWheelCount",2 << 3 | WireType.VARINT);
      
      public static const TODAY_ESCORT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.today_escort_count","todayEscortCount",3 << 3 | WireType.VARINT);
      
      public static const MAX_ESCORT_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.max_escort_count","maxEscortCount",4 << 3 | WireType.VARINT);
      
      public static const TODAY_ROBERRY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.today_roberry_count","todayRoberryCount",5 << 3 | WireType.VARINT);
      
      public static const MAX_ROBERRY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildActivityData.max_roberry_count","maxRoberryCount",6 << 3 | WireType.VARINT);
       
      private var today_lucky_wheel_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var max_lucky_wheel_count$field:uint;
      
      private var today_escort_count$field:uint;
      
      private var max_escort_count$field:uint;
      
      private var today_roberry_count$field:uint;
      
      private var max_roberry_count$field:uint;
      
      public function ProtoGuildActivityData()
      {
         super();
      }
      
      public function clearTodayLuckyWheelCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.today_lucky_wheel_count$field = new uint();
      }
      
      public function get hasTodayLuckyWheelCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set todayLuckyWheelCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.today_lucky_wheel_count$field = param1;
      }
      
      public function get todayLuckyWheelCount() : uint
      {
         return this.today_lucky_wheel_count$field;
      }
      
      public function clearMaxLuckyWheelCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.max_lucky_wheel_count$field = new uint();
      }
      
      public function get hasMaxLuckyWheelCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set maxLuckyWheelCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.max_lucky_wheel_count$field = param1;
      }
      
      public function get maxLuckyWheelCount() : uint
      {
         return this.max_lucky_wheel_count$field;
      }
      
      public function clearTodayEscortCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.today_escort_count$field = new uint();
      }
      
      public function get hasTodayEscortCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set todayEscortCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.today_escort_count$field = param1;
      }
      
      public function get todayEscortCount() : uint
      {
         return this.today_escort_count$field;
      }
      
      public function clearMaxEscortCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_escort_count$field = new uint();
      }
      
      public function get hasMaxEscortCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxEscortCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_escort_count$field = param1;
      }
      
      public function get maxEscortCount() : uint
      {
         return this.max_escort_count$field;
      }
      
      public function clearTodayRoberryCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.today_roberry_count$field = new uint();
      }
      
      public function get hasTodayRoberryCount() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set todayRoberryCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.today_roberry_count$field = param1;
      }
      
      public function get todayRoberryCount() : uint
      {
         return this.today_roberry_count$field;
      }
      
      public function clearMaxRoberryCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.max_roberry_count$field = new uint();
      }
      
      public function get hasMaxRoberryCount() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set maxRoberryCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.max_roberry_count$field = param1;
      }
      
      public function get maxRoberryCount() : uint
      {
         return this.max_roberry_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTodayLuckyWheelCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.today_lucky_wheel_count$field);
         }
         if(this.hasMaxLuckyWheelCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.max_lucky_wheel_count$field);
         }
         if(this.hasTodayEscortCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.today_escort_count$field);
         }
         if(this.hasMaxEscortCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.max_escort_count$field);
         }
         if(this.hasTodayRoberryCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.today_roberry_count$field);
         }
         if(this.hasMaxRoberryCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.max_roberry_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
