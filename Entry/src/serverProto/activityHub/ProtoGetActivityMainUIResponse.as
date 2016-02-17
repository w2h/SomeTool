package serverProto.activityHub
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetActivityMainUIResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoGetActivityMainUIResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TIMING_ACTIVITY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoGetActivityMainUIResponse.timing_activity_info","timingActivityInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoActivityHubTimingInfo);
      
      public static const DAILY_ACTIVITY_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoGetActivityMainUIResponse.daily_activity_list","dailyActivityList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoDailyActivityInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var timing_activity_info$field:serverProto.activityHub.ProtoActivityHubTimingInfo;
      
      [ArrayElementType("serverProto.activityHub.ProtoDailyActivityInfo")]
      public var dailyActivityList:Array;
      
      public function ProtoGetActivityMainUIResponse()
      {
         this.dailyActivityList = [];
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
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasTimingActivityInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.timing_activity_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.dailyActivityList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dailyActivityList[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
