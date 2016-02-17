package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoActionTimeDetailInfo extends Message
   {
      
      public static const ACTION_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.action_id","actionId",1 << 3 | WireType.VARINT);
      
      public static const ACTION_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.action_type","actionType",2 << 3 | WireType.VARINT);
      
      public static const ATTACKER_TIME_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActionTimeDetailInfo.attacker_time_info","attackerTimeInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAttackerTimeInfo);
      
      public static const PASSIVE_NINJA_TIME_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActionTimeDetailInfo.passive_ninja_time_info","passiveNinjaTimeInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPassiveNinjaTimeInfo);
      
      public static const NEED_BLACK_SCREEN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.need_black_screen","needBlackScreen",5 << 3 | WireType.VARINT);
      
      public static const STAGE_NINJA_TIME_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActionTimeDetailInfo.stage_ninja_time_info","stageNinjaTimeInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoStageNinjaTimeInfo);
      
      public static const FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoActionTimeDetailInfo.frame_count","frameCount",7 << 3 | WireType.VARINT);
       
      public var actionId:int;
      
      public var actionType:int;
      
      private var attacker_time_info$field:serverProto.fight.ProtoAttackerTimeInfo;
      
      [ArrayElementType("serverProto.fight.ProtoPassiveNinjaTimeInfo")]
      public var passiveNinjaTimeInfo:Array;
      
      private var need_black_screen$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoStageNinjaTimeInfo")]
      public var stageNinjaTimeInfo:Array;
      
      private var frame_count$field:int;
      
      public function ProtoActionTimeDetailInfo()
      {
         this.passiveNinjaTimeInfo = [];
         this.stageNinjaTimeInfo = [];
         super();
      }
      
      public function clearAttackerTimeInfo() : void
      {
         this.attacker_time_info$field = null;
      }
      
      public function get hasAttackerTimeInfo() : Boolean
      {
         return this.attacker_time_info$field != null;
      }
      
      public function set attackerTimeInfo(param1:serverProto.fight.ProtoAttackerTimeInfo) : void
      {
         this.attacker_time_info$field = param1;
      }
      
      public function get attackerTimeInfo() : serverProto.fight.ProtoAttackerTimeInfo
      {
         return this.attacker_time_info$field;
      }
      
      public function clearNeedBlackScreen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_black_screen$field = new int();
      }
      
      public function get hasNeedBlackScreen() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needBlackScreen(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_black_screen$field = param1;
      }
      
      public function get needBlackScreen() : int
      {
         return this.need_black_screen$field;
      }
      
      public function clearFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.frame_count$field = new int();
      }
      
      public function get hasFrameCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set frameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.frame_count$field = param1;
      }
      
      public function get frameCount() : int
      {
         return this.frame_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.actionId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.actionType);
         if(this.hasAttackerTimeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.attacker_time_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.passiveNinjaTimeInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.passiveNinjaTimeInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasNeedBlackScreen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.need_black_screen$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.stageNinjaTimeInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stageNinjaTimeInfo[_loc3_]);
            _loc3_++;
         }
         if(this.hasFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.frame_count$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
