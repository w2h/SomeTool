package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEscortInfo extends Message
   {
      
      public static const TOTAL_ESCORT_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.total_escort_times","totalEscortTimes",1 << 3 | WireType.VARINT);
      
      public static const CURRENT_ESCORT_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.current_escort_times","currentEscortTimes",2 << 3 | WireType.VARINT);
      
      public static const NEED_TIME:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.need_time","needTime",3 << 3 | WireType.VARINT);
      
      public static const BOUNTY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoEscortInfo.bounty","bounty",4 << 3 | WireType.VARINT);
      
      public static const IS_FIRST_GVG_FINAL_BATTLE_RANK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoEscortInfo.is_first_gvg_final_battle_rank","isFirstGvgFinalBattleRank",5 << 3 | WireType.VARINT);
       
      private var total_escort_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var current_escort_times$field:int;
      
      private var need_time$field:int;
      
      private var bounty$field:int;
      
      private var is_first_gvg_final_battle_rank$field:Boolean;
      
      public function ProtoEscortInfo()
      {
         super();
      }
      
      public function clearTotalEscortTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_escort_times$field = new int();
      }
      
      public function get hasTotalEscortTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalEscortTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_escort_times$field = param1;
      }
      
      public function get totalEscortTimes() : int
      {
         return this.total_escort_times$field;
      }
      
      public function clearCurrentEscortTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.current_escort_times$field = new int();
      }
      
      public function get hasCurrentEscortTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currentEscortTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.current_escort_times$field = param1;
      }
      
      public function get currentEscortTimes() : int
      {
         return this.current_escort_times$field;
      }
      
      public function clearNeedTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.need_time$field = new int();
      }
      
      public function get hasNeedTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set needTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.need_time$field = param1;
      }
      
      public function get needTime() : int
      {
         return this.need_time$field;
      }
      
      public function clearBounty() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.bounty$field = new int();
      }
      
      public function get hasBounty() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set bounty(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.bounty$field = param1;
      }
      
      public function get bounty() : int
      {
         return this.bounty$field;
      }
      
      public function clearIsFirstGvgFinalBattleRank() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.is_first_gvg_final_battle_rank$field = new Boolean();
      }
      
      public function get hasIsFirstGvgFinalBattleRank() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set isFirstGvgFinalBattleRank(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.is_first_gvg_final_battle_rank$field = param1;
      }
      
      public function get isFirstGvgFinalBattleRank() : Boolean
      {
         return this.is_first_gvg_final_battle_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTotalEscortTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.total_escort_times$field);
         }
         if(this.hasCurrentEscortTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.current_escort_times$field);
         }
         if(this.hasNeedTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.need_time$field);
         }
         if(this.hasBounty)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.bounty$field);
         }
         if(this.hasIsFirstGvgFinalBattleRank)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.is_first_gvg_final_battle_rank$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
