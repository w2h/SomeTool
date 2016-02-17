package serverProto.arena
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoUpdateItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoArenaBuiltInReward extends Message
   {
      
      public static const DAILY_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaBuiltInReward.daily_reward","dailyReward",1 << 3 | WireType.LENGTH_DELIMITED,ProtoUpdateItemInfo);
      
      public static const WEEKLY_REWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.arena.ProtoArenaBuiltInReward.weekly_reward","weeklyReward",2 << 3 | WireType.LENGTH_DELIMITED,ProtoUpdateItemInfo);
       
      private var daily_reward$field:ProtoUpdateItemInfo;
      
      private var weekly_reward$field:ProtoUpdateItemInfo;
      
      public function ProtoArenaBuiltInReward()
      {
         super();
      }
      
      public function clearDailyReward() : void
      {
         this.daily_reward$field = null;
      }
      
      public function get hasDailyReward() : Boolean
      {
         return this.daily_reward$field != null;
      }
      
      public function set dailyReward(param1:ProtoUpdateItemInfo) : void
      {
         this.daily_reward$field = param1;
      }
      
      public function get dailyReward() : ProtoUpdateItemInfo
      {
         return this.daily_reward$field;
      }
      
      public function clearWeeklyReward() : void
      {
         this.weekly_reward$field = null;
      }
      
      public function get hasWeeklyReward() : Boolean
      {
         return this.weekly_reward$field != null;
      }
      
      public function set weeklyReward(param1:ProtoUpdateItemInfo) : void
      {
         this.weekly_reward$field = param1;
      }
      
      public function get weeklyReward() : ProtoUpdateItemInfo
      {
         return this.weekly_reward$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasDailyReward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.daily_reward$field);
         }
         if(this.hasWeeklyReward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.weekly_reward$field);
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
