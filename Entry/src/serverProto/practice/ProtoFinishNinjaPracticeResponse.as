package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFinishNinjaPracticeResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoFinishNinjaPracticeResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REWARD_EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoFinishNinjaPracticeResponse.reward_exp","rewardExp",2 << 3 | WireType.VARINT);
      
      public static const PRACTICE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoFinishNinjaPracticeResponse.practice_info","practiceInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPracticeInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var reward_exp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var practice_info$field:serverProto.practice.ProtoPracticeInfo;
      
      public function ProtoFinishNinjaPracticeResponse()
      {
         super();
      }
      
      public function clearRewardExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.reward_exp$field = new int();
      }
      
      public function get hasRewardExp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rewardExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.reward_exp$field = param1;
      }
      
      public function get rewardExp() : int
      {
         return this.reward_exp$field;
      }
      
      public function clearPracticeInfo() : void
      {
         this.practice_info$field = null;
      }
      
      public function get hasPracticeInfo() : Boolean
      {
         return this.practice_info$field != null;
      }
      
      public function set practiceInfo(param1:serverProto.practice.ProtoPracticeInfo) : void
      {
         this.practice_info$field = param1;
      }
      
      public function get practiceInfo() : serverProto.practice.ProtoPracticeInfo
      {
         return this.practice_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasRewardExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.reward_exp$field);
         }
         if(this.hasPracticeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.practice_info$field);
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
