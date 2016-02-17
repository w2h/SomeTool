package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT64;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.Int64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzBdkWarSchedule extends Message
   {
      
      public static const GROUP_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarSchedule.group_idx","groupIdx",1 << 3 | WireType.VARINT);
      
      public static const WAR_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarSchedule.war_type","warType",2 << 3 | WireType.VARINT,UniFuzBdkWarType);
      
      public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarSchedule.state","state",3 << 3 | WireType.VARINT,UniFuzBdkWarScheduleState);
      
      public static const START_TIME:FieldDescriptor$TYPE_SINT64 = new FieldDescriptor$TYPE_SINT64("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarSchedule.start_time","startTime",4 << 3 | WireType.VARINT);
       
      public var groupIdx:int;
      
      public var warType:int;
      
      private var state$field:int;
      
      private var hasField$0:uint = 0;
      
      private var start_time$field:Int64;
      
      public function ProtoUniFuzBdkWarSchedule()
      {
         super();
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearStartTime() : void
      {
         this.start_time$field = null;
      }
      
      public function get hasStartTime() : Boolean
      {
         return this.start_time$field != null;
      }
      
      public function set startTime(param1:Int64) : void
      {
         this.start_time$field = param1;
      }
      
      public function get startTime() : Int64
      {
         return this.start_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.groupIdx);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.warType);
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.state$field);
         }
         if(this.hasStartTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT64(param1,this.start_time$field);
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
