package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoExpeditionInfo extends Message
   {
      
      public static const CURRENT_STAGE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.current_stage_level","currentStageLevel",2 << 3 | WireType.VARINT);
      
      public static const CARRY_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.carry_ninja_count","carryNinjaCount",3 << 3 | WireType.VARINT);
      
      public static const MAX_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.max_ninja_count","maxNinjaCount",4 << 3 | WireType.VARINT);
      
      public static const LEFT_CHALLENGE_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.left_challenge_count","leftChallengeCount",5 << 3 | WireType.VARINT);
      
      public static const CURRENT_STAGE_STATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.current_stage_state","currentStageState",6 << 3 | WireType.VARINT);
      
      public static const STAGE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoExpeditionInfo.stage_list","stageList",7 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionStageInfo);
      
      public static const NINJA_ALL_DEAD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.ninja_all_dead","ninjaAllDead",8 << 3 | WireType.VARINT);
      
      public static const AVAILABLE_NINJA_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionInfo.available_ninja_count","availableNinjaCount",9 << 3 | WireType.VARINT);
       
      public var currentStageLevel:int;
      
      public var carryNinjaCount:int;
      
      public var maxNinjaCount:int;
      
      public var leftChallengeCount:int;
      
      private var current_stage_state$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.expedition.ProtoExpeditionStageInfo")]
      public var stageList:Array;
      
      private var ninja_all_dead$field:int;
      
      private var available_ninja_count$field:int;
      
      public function ProtoExpeditionInfo()
      {
         this.stageList = [];
         super();
      }
      
      public function clearCurrentStageState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_stage_state$field = new int();
      }
      
      public function get hasCurrentStageState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentStageState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_stage_state$field = param1;
      }
      
      public function get currentStageState() : int
      {
         return this.current_stage_state$field;
      }
      
      public function clearNinjaAllDead() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninja_all_dead$field = new int();
      }
      
      public function get hasNinjaAllDead() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjaAllDead(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninja_all_dead$field = param1;
      }
      
      public function get ninjaAllDead() : int
      {
         return this.ninja_all_dead$field;
      }
      
      public function clearAvailableNinjaCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.available_ninja_count$field = new int();
      }
      
      public function get hasAvailableNinjaCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set availableNinjaCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.available_ninja_count$field = param1;
      }
      
      public function get availableNinjaCount() : int
      {
         return this.available_ninja_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.currentStageLevel);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_SINT32(param1,this.carryNinjaCount);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_SINT32(param1,this.maxNinjaCount);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_SINT32(param1,this.leftChallengeCount);
         if(this.hasCurrentStageState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.current_stage_state$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.stageList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stageList[_loc2_]);
            _loc2_++;
         }
         if(this.hasNinjaAllDead)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_all_dead$field);
         }
         if(this.hasAvailableNinjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.available_ninja_count$field);
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
