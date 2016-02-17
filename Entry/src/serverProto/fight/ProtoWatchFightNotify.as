package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWatchFightNotify extends Message
   {
      
      public static const SIDE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoWatchFightNotify.side","side",1 << 3 | WireType.VARINT);
      
      public static const BACKGROUND_RES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightNotify.background_res","backgroundRes",2 << 3 | WireType.LENGTH_DELIMITED,FightBackgroundRes);
      
      public static const FIGHT_START_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoWatchFightNotify.fight_start_type","fightStartType",3 << 3 | WireType.VARINT,FightStartType);
      
      public static const NEED_LOAD_RES_PLAYER_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightNotify.need_load_res_player_list","needLoadResPlayerList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAllNeedLoadResPlayerList);
      
      public static const SYNC_TIMEOUT_SEC:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoWatchFightNotify.sync_timeout_sec","syncTimeoutSec",5 << 3 | WireType.VARINT);
      
      public static const ROUND_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoWatchFightNotify.round_count","roundCount",6 << 3 | WireType.VARINT);
       
      public var side:int;
      
      private var background_res$field:serverProto.fight.FightBackgroundRes;
      
      private var fight_start_type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var need_load_res_player_list$field:serverProto.fight.ProtoAllNeedLoadResPlayerList;
      
      private var sync_timeout_sec$field:int;
      
      private var round_count$field:int;
      
      public function ProtoWatchFightNotify()
      {
         super();
      }
      
      public function clearBackgroundRes() : void
      {
         this.background_res$field = null;
      }
      
      public function get hasBackgroundRes() : Boolean
      {
         return this.background_res$field != null;
      }
      
      public function set backgroundRes(param1:serverProto.fight.FightBackgroundRes) : void
      {
         this.background_res$field = param1;
      }
      
      public function get backgroundRes() : serverProto.fight.FightBackgroundRes
      {
         return this.background_res$field;
      }
      
      public function clearFightStartType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.fight_start_type$field = new int();
      }
      
      public function get hasFightStartType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fightStartType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.fight_start_type$field = param1;
      }
      
      public function get fightStartType() : int
      {
         return this.fight_start_type$field;
      }
      
      public function clearNeedLoadResPlayerList() : void
      {
         this.need_load_res_player_list$field = null;
      }
      
      public function get hasNeedLoadResPlayerList() : Boolean
      {
         return this.need_load_res_player_list$field != null;
      }
      
      public function set needLoadResPlayerList(param1:serverProto.fight.ProtoAllNeedLoadResPlayerList) : void
      {
         this.need_load_res_player_list$field = param1;
      }
      
      public function get needLoadResPlayerList() : serverProto.fight.ProtoAllNeedLoadResPlayerList
      {
         return this.need_load_res_player_list$field;
      }
      
      public function clearSyncTimeoutSec() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.sync_timeout_sec$field = new int();
      }
      
      public function get hasSyncTimeoutSec() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set syncTimeoutSec(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.sync_timeout_sec$field = param1;
      }
      
      public function get syncTimeoutSec() : int
      {
         return this.sync_timeout_sec$field;
      }
      
      public function clearRoundCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.round_count$field = new int();
      }
      
      public function get hasRoundCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roundCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.round_count$field = param1;
      }
      
      public function get roundCount() : int
      {
         return this.round_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.side);
         if(this.hasBackgroundRes)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.background_res$field);
         }
         if(this.hasFightStartType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.fight_start_type$field);
         }
         if(this.hasNeedLoadResPlayerList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.need_load_res_player_list$field);
         }
         if(this.hasSyncTimeoutSec)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.sync_timeout_sec$field);
         }
         if(this.hasRoundCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.round_count$field);
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
