package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class NinjaJigsawInfo extends Message
   {
      
      public static const MIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.NinjaJigsawInfo.min_time","minTime",1 << 3 | WireType.VARINT);
      
      public static const AWARD_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.NinjaJigsawInfo.award_state","awardState",2 << 3 | WireType.VARINT);
       
      private var min_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var award_state$field:uint;
      
      public function NinjaJigsawInfo()
      {
         super();
      }
      
      public function clearMinTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.min_time$field = new uint();
      }
      
      public function get hasMinTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set minTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.min_time$field = param1;
      }
      
      public function get minTime() : uint
      {
         return this.min_time$field;
      }
      
      public function clearAwardState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_state$field = new uint();
      }
      
      public function get hasAwardState() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardState(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_state$field = param1;
      }
      
      public function get awardState() : uint
      {
         return this.award_state$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasMinTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.min_time$field);
         }
         if(this.hasAwardState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.award_state$field);
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
