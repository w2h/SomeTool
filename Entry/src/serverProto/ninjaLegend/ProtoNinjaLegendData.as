package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendData extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendData.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const ZHANG_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendData.zhang_list","zhangList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendZhangData);
      
      public static const ZHANG_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendData.zhang_count","zhangCount",3 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaLegend.ProtoNinjaLegendData.state","state",4 << 3 | WireType.VARINT,ProtoNinjaLegendPrizeState);
      
      public static const ENDING_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendData.ending_list","endingList",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendEnding);
      
      public static const TREASURE_STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaLegend.ProtoNinjaLegendData.treasure_state","treasureState",6 << 3 | WireType.VARINT,ProtoNinjaLegendState);
      
      public static const TAKE_BASE_REWARD:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaLegend.ProtoNinjaLegendData.take_base_reward","takeBaseReward",7 << 3 | WireType.VARINT,ProtoNinjaLegendPrizeState);
      
      public static const TAKE_EXTRA_REWARD:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaLegend.ProtoNinjaLegendData.take_extra_reward","takeExtraReward",8 << 3 | WireType.VARINT,ProtoNinjaLegendPrizeState);
       
      private var ninja_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.ninjaLegend.ProtoNinjaLegendZhangData")]
      public var zhangList:Array;
      
      private var zhang_count$field:uint;
      
      private var state$field:int;
      
      [ArrayElementType("serverProto.ninjaLegend.ProtoNinjaLegendEnding")]
      public var endingList:Array;
      
      private var treasure_state$field:int;
      
      private var take_base_reward$field:int;
      
      private var take_extra_reward$field:int;
      
      public function ProtoNinjaLegendData()
      {
         this.zhangList = [];
         this.endingList = [];
         super();
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_id$field = new uint();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : uint
      {
         return this.ninja_id$field;
      }
      
      public function clearZhangCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.zhang_count$field = new uint();
      }
      
      public function get hasZhangCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set zhangCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.zhang_count$field = param1;
      }
      
      public function get zhangCount() : uint
      {
         return this.zhang_count$field;
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearTreasureState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.treasure_state$field = new int();
      }
      
      public function get hasTreasureState() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set treasureState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.treasure_state$field = param1;
      }
      
      public function get treasureState() : int
      {
         return this.treasure_state$field;
      }
      
      public function clearTakeBaseReward() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.take_base_reward$field = new int();
      }
      
      public function get hasTakeBaseReward() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set takeBaseReward(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.take_base_reward$field = param1;
      }
      
      public function get takeBaseReward() : int
      {
         return this.take_base_reward$field;
      }
      
      public function clearTakeExtraReward() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.take_extra_reward$field = new int();
      }
      
      public function get hasTakeExtraReward() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set takeExtraReward(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.take_extra_reward$field = param1;
      }
      
      public function get takeExtraReward() : int
      {
         return this.take_extra_reward$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_id$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.zhangList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.zhangList[_loc2_]);
            _loc2_++;
         }
         if(this.hasZhangCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.zhang_count$field);
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.state$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.endingList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.endingList[_loc3_]);
            _loc3_++;
         }
         if(this.hasTreasureState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_ENUM(param1,this.treasure_state$field);
         }
         if(this.hasTakeBaseReward)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_ENUM(param1,this.take_base_reward$field);
         }
         if(this.hasTakeExtraReward)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_ENUM(param1,this.take_extra_reward$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
