package serverProto.activityHub
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoActivityHubMainUINotify extends Message
   {
      
      public static const TIMING_ACTIVITY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoActivityHubMainUINotify.timing_activity_info","timingActivityInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoActivityHubTimingInfo);
      
      public static const DAILY_ACTIVITY_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoActivityHubMainUINotify.daily_activity_info","dailyActivityInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoDailyActivityInfo);
       
      private var timing_activity_info$field:serverProto.activityHub.ProtoActivityHubTimingInfo;
      
      [ArrayElementType("serverProto.activityHub.ProtoDailyActivityInfo")]
      public var dailyActivityInfo:Array;
      
      public function ProtoActivityHubMainUINotify()
      {
         this.dailyActivityInfo = [];
         super();
      }
      
      public function clearTimingActivityInfo() : void
      {
         this.timing_activity_info$field = null;
      }
      
      public function get hasTimingActivityInfo() : Boolean
      {
         return this.timing_activity_info$field != null;
      }
      
      public function set timingActivityInfo(param1:serverProto.activityHub.ProtoActivityHubTimingInfo) : void
      {
         this.timing_activity_info$field = param1;
      }
      
      public function get timingActivityInfo() : serverProto.activityHub.ProtoActivityHubTimingInfo
      {
         return this.timing_activity_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasTimingActivityInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.timing_activity_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.dailyActivityInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dailyActivityInfo[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
