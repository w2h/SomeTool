package serverProto.activityHub
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoActivityHubTimingInfo extends Message
   {
      
      public static const TIMING_ACTIVITY_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHubTimingInfo.timing_activity_id","timingActivityId",1 << 3 | WireType.VARINT);
      
      public static const TIMING_ACTIVITY_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activityHub.ProtoActivityHubTimingInfo.timing_activity_desc","timingActivityDesc",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CAN_ENTER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activityHub.ProtoActivityHubTimingInfo.can_enter","canEnter",3 << 3 | WireType.VARINT);
       
      private var timing_activity_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var timing_activity_desc$field:String;
      
      private var can_enter$field:Boolean;
      
      public function ProtoActivityHubTimingInfo()
      {
         super();
      }
      
      public function clearTimingActivityId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.timing_activity_id$field = new int();
      }
      
      public function get hasTimingActivityId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set timingActivityId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.timing_activity_id$field = param1;
      }
      
      public function get timingActivityId() : int
      {
         return this.timing_activity_id$field;
      }
      
      public function clearTimingActivityDesc() : void
      {
         this.timing_activity_desc$field = null;
      }
      
      public function get hasTimingActivityDesc() : Boolean
      {
         return this.timing_activity_desc$field != null;
      }
      
      public function set timingActivityDesc(param1:String) : void
      {
         this.timing_activity_desc$field = param1;
      }
      
      public function get timingActivityDesc() : String
      {
         return this.timing_activity_desc$field;
      }
      
      public function clearCanEnter() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.can_enter$field = new Boolean();
      }
      
      public function get hasCanEnter() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set canEnter(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.can_enter$field = param1;
      }
      
      public function get canEnter() : Boolean
      {
         return this.can_enter$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTimingActivityId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.timing_activity_id$field);
         }
         if(this.hasTimingActivityDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.timing_activity_desc$field);
         }
         if(this.hasCanEnter)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.can_enter$field);
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
