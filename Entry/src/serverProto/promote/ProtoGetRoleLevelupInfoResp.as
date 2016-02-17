package serverProto.promote
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetRoleLevelupInfoResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetRoleLevelupInfoResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const DAILY_TASK_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetRoleLevelupInfoResp.daily_task_progress","dailyTaskProgress",2 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
      
      public static const REWARD_TASK_PROGRESS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.promote.ProtoGetRoleLevelupInfoResp.reward_task_progress","rewardTaskProgress",3 << 3 | WireType.LENGTH_DELIMITED,ProtoProgressBar);
       
      public var ret:ProtoRetInfo;
      
      private var daily_task_progress$field:serverProto.promote.ProtoProgressBar;
      
      private var reward_task_progress$field:serverProto.promote.ProtoProgressBar;
      
      public function ProtoGetRoleLevelupInfoResp()
      {
         super();
      }
      
      public function clearDailyTaskProgress() : void
      {
         this.daily_task_progress$field = null;
      }
      
      public function get hasDailyTaskProgress() : Boolean
      {
         return this.daily_task_progress$field != null;
      }
      
      public function set dailyTaskProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.daily_task_progress$field = param1;
      }
      
      public function get dailyTaskProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.daily_task_progress$field;
      }
      
      public function clearRewardTaskProgress() : void
      {
         this.reward_task_progress$field = null;
      }
      
      public function get hasRewardTaskProgress() : Boolean
      {
         return this.reward_task_progress$field != null;
      }
      
      public function set rewardTaskProgress(param1:serverProto.promote.ProtoProgressBar) : void
      {
         this.reward_task_progress$field = param1;
      }
      
      public function get rewardTaskProgress() : serverProto.promote.ProtoProgressBar
      {
         return this.reward_task_progress$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasDailyTaskProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.daily_task_progress$field);
         }
         if(this.hasRewardTaskProgress)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.reward_task_progress$field);
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
