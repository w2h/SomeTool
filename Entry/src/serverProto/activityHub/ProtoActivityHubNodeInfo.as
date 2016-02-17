package serverProto.activityHub
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoActivityHubNodeInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHubNodeInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const TIME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activityHub.ProtoActivityHubNodeInfo.time","time",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const DAY:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHubNodeInfo.day","day",3 << 3 | WireType.VARINT);
      
      public static const SPECIAL_DAY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activityHub.ProtoActivityHubNodeInfo.special_day","specialDay",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ALL_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHubNodeInfo.all_time","allTime",5 << 3 | WireType.VARINT);
      
      public static const REMAINDER_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHubNodeInfo.remainder_time","remainderTime",6 << 3 | WireType.VARINT);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activityHub.ProtoActivityHubNodeInfo.status","status",7 << 3 | WireType.VARINT,ProtoActivityStatus);
      
      public static const MEET_SPECIAL_CONDITION:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activityHub.ProtoActivityHubNodeInfo.meet_special_condition","meetSpecialCondition",8 << 3 | WireType.VARINT);
       
      private var id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var time$field:String;
      
      [ArrayElementType("int")]
      public var day:Array;
      
      private var special_day$field:String;
      
      private var all_time$field:int;
      
      private var remainder_time$field:int;
      
      private var status$field:int;
      
      private var meet_special_condition$field:Boolean;
      
      public function ProtoActivityHubNodeInfo()
      {
         this.day = [];
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new int();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : int
      {
         return this.id$field;
      }
      
      public function clearTime() : void
      {
         this.time$field = null;
      }
      
      public function get hasTime() : Boolean
      {
         return this.time$field != null;
      }
      
      public function set time(param1:String) : void
      {
         this.time$field = param1;
      }
      
      public function get time() : String
      {
         return this.time$field;
      }
      
      public function clearSpecialDay() : void
      {
         this.special_day$field = null;
      }
      
      public function get hasSpecialDay() : Boolean
      {
         return this.special_day$field != null;
      }
      
      public function set specialDay(param1:String) : void
      {
         this.special_day$field = param1;
      }
      
      public function get specialDay() : String
      {
         return this.special_day$field;
      }
      
      public function clearAllTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.all_time$field = new int();
      }
      
      public function get hasAllTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set allTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.all_time$field = param1;
      }
      
      public function get allTime() : int
      {
         return this.all_time$field;
      }
      
      public function clearRemainderTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remainder_time$field = new int();
      }
      
      public function get hasRemainderTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainderTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remainder_time$field = param1;
      }
      
      public function get remainderTime() : int
      {
         return this.remainder_time$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.status$field = new int();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set status(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.status$field = param1;
      }
      
      public function get status() : int
      {
         return this.status$field;
      }
      
      public function clearMeetSpecialCondition() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.meet_special_condition$field = new Boolean();
      }
      
      public function get hasMeetSpecialCondition() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set meetSpecialCondition(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.meet_special_condition$field = param1;
      }
      
      public function get meetSpecialCondition() : Boolean
      {
         return this.meet_special_condition$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.id$field);
         }
         if(this.hasTime)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.day.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.day[_loc2_]);
            _loc2_++;
         }
         if(this.hasSpecialDay)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.special_day$field);
         }
         if(this.hasAllTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.all_time$field);
         }
         if(this.hasRemainderTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_time$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_ENUM(param1,this.status$field);
         }
         if(this.hasMeetSpecialCondition)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_BOOL(param1,this.meet_special_condition$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
