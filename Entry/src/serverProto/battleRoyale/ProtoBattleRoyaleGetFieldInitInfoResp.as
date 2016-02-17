package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleRoyaleGetFieldInitInfoResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.now","now",2 << 3 | WireType.VARINT);
      
      public static const BATTLE_ROYALE_OPEN_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.battle_royale_open_time","battleRoyaleOpenTime",3 << 3 | WireType.VARINT);
      
      public static const FREE_FIGHT_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.free_fight_time","freeFightTime",4 << 3 | WireType.VARINT);
      
      public static const BATTLE_ROYALE_OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.battle_royale_over_time","battleRoyaleOverTime",5 << 3 | WireType.VARINT);
      
      public static const REVIVE_COST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoBattleRoyaleGetFieldInitInfoResp.revive_cost","reviveCost",6 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var now$field:UInt64;
      
      private var battle_royale_open_time$field:UInt64;
      
      private var free_fight_time$field:UInt64;
      
      private var battle_royale_over_time$field:UInt64;
      
      private var revive_cost$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoBattleRoyaleGetFieldInitInfoResp()
      {
         super();
      }
      
      public function clearNow() : void
      {
         this.now$field = null;
      }
      
      public function get hasNow() : Boolean
      {
         return this.now$field != null;
      }
      
      public function set now(param1:UInt64) : void
      {
         this.now$field = param1;
      }
      
      public function get now() : UInt64
      {
         return this.now$field;
      }
      
      public function clearBattleRoyaleOpenTime() : void
      {
         this.battle_royale_open_time$field = null;
      }
      
      public function get hasBattleRoyaleOpenTime() : Boolean
      {
         return this.battle_royale_open_time$field != null;
      }
      
      public function set battleRoyaleOpenTime(param1:UInt64) : void
      {
         this.battle_royale_open_time$field = param1;
      }
      
      public function get battleRoyaleOpenTime() : UInt64
      {
         return this.battle_royale_open_time$field;
      }
      
      public function clearFreeFightTime() : void
      {
         this.free_fight_time$field = null;
      }
      
      public function get hasFreeFightTime() : Boolean
      {
         return this.free_fight_time$field != null;
      }
      
      public function set freeFightTime(param1:UInt64) : void
      {
         this.free_fight_time$field = param1;
      }
      
      public function get freeFightTime() : UInt64
      {
         return this.free_fight_time$field;
      }
      
      public function clearBattleRoyaleOverTime() : void
      {
         this.battle_royale_over_time$field = null;
      }
      
      public function get hasBattleRoyaleOverTime() : Boolean
      {
         return this.battle_royale_over_time$field != null;
      }
      
      public function set battleRoyaleOverTime(param1:UInt64) : void
      {
         this.battle_royale_over_time$field = param1;
      }
      
      public function get battleRoyaleOverTime() : UInt64
      {
         return this.battle_royale_over_time$field;
      }
      
      public function clearReviveCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.revive_cost$field = new int();
      }
      
      public function get hasReviveCost() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set reviveCost(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.revive_cost$field = param1;
      }
      
      public function get reviveCost() : int
      {
         return this.revive_cost$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNow)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT64(param1,this.now$field);
         }
         if(this.hasBattleRoyaleOpenTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT64(param1,this.battle_royale_open_time$field);
         }
         if(this.hasFreeFightTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT64(param1,this.free_fight_time$field);
         }
         if(this.hasBattleRoyaleOverTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT64(param1,this.battle_royale_over_time$field);
         }
         if(this.hasReviveCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.revive_cost$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
