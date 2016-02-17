package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.ninjaexam.ProtoNinjaExamInfo;
   import serverProto.ninjaexam.ProtoExamStageItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetRaidsStateRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const RAIDS_STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.dungeon.ProtoGetRaidsStateRsp.raids_state","raidsState",2 << 3 | WireType.VARINT,ProtoRaidsType);
      
      public static const DUNGEON_RAIDS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.dungeon_raids_info","dungeonRaidsInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoDungeonRaidsInfo);
      
      public static const RAIDS_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.raids_reward","raidsReward",4 << 3 | WireType.LENGTH_DELIMITED,ProtoRaidsCountReward);
      
      public static const EXAM_RAIDS_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.exam_raids_info","examRaidsInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaExamInfo);
      
      public static const STAGE_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoGetRaidsStateRsp.stage_item_info","stageItemInfo",6 << 3 | WireType.LENGTH_DELIMITED,ProtoExamStageItemInfo);
       
      public var ret:ProtoRetInfo;
      
      public var raidsState:int;
      
      private var dungeon_raids_info$field:serverProto.dungeon.ProtoDungeonRaidsInfo;
      
      [ArrayElementType("serverProto.dungeon.ProtoRaidsCountReward")]
      public var raidsReward:Array;
      
      private var exam_raids_info$field:ProtoNinjaExamInfo;
      
      [ArrayElementType("serverProto.ninjaexam.ProtoExamStageItemInfo")]
      public var stageItemInfo:Array;
      
      public function ProtoGetRaidsStateRsp()
      {
         this.raidsReward = [];
         this.stageItemInfo = [];
         super();
      }
      
      public function clearDungeonRaidsInfo() : void
      {
         this.dungeon_raids_info$field = null;
      }
      
      public function get hasDungeonRaidsInfo() : Boolean
      {
         return this.dungeon_raids_info$field != null;
      }
      
      public function set dungeonRaidsInfo(param1:serverProto.dungeon.ProtoDungeonRaidsInfo) : void
      {
         this.dungeon_raids_info$field = param1;
      }
      
      public function get dungeonRaidsInfo() : serverProto.dungeon.ProtoDungeonRaidsInfo
      {
         return this.dungeon_raids_info$field;
      }
      
      public function clearExamRaidsInfo() : void
      {
         this.exam_raids_info$field = null;
      }
      
      public function get hasExamRaidsInfo() : Boolean
      {
         return this.exam_raids_info$field != null;
      }
      
      public function set examRaidsInfo(param1:ProtoNinjaExamInfo) : void
      {
         this.exam_raids_info$field = param1;
      }
      
      public function get examRaidsInfo() : ProtoNinjaExamInfo
      {
         return this.exam_raids_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.raidsState);
         if(this.hasDungeonRaidsInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dungeon_raids_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.raidsReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.raidsReward[_loc2_]);
            _loc2_++;
         }
         if(this.hasExamRaidsInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.exam_raids_info$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.stageItemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stageItemInfo[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
