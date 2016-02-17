package serverProto.challengeTower
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChallengeTowerInfo extends Message
   {
      
      public static const CHALLENGE_SELF:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerInfo.challenge_self","challengeSelf",1 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerInfo.score","score",2 << 3 | WireType.VARINT);
      
      public static const GRADE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.challengeTower.ProtoChallengeTowerInfo.grade_info","gradeInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoChallengeTowerGradeInfo);
       
      private var challenge_self$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var score$field:uint;
      
      [ArrayElementType("serverProto.challengeTower.ProtoChallengeTowerGradeInfo")]
      public var gradeInfo:Array;
      
      public function ProtoChallengeTowerInfo()
      {
         this.gradeInfo = [];
         super();
      }
      
      public function clearChallengeSelf() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.challenge_self$field = new uint();
      }
      
      public function get hasChallengeSelf() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set challengeSelf(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.challenge_self$field = param1;
      }
      
      public function get challengeSelf() : uint
      {
         return this.challenge_self$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.score$field = new uint();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set score(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.score$field = param1;
      }
      
      public function get score() : uint
      {
         return this.score$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasChallengeSelf)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.challenge_self$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.score$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.gradeInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.gradeInfo[_loc2_]);
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
