package serverProto.worldBoss
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetWorldBossStatusResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.max_hp","maxHp",2 << 3 | WireType.VARINT);
      
      public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.current_hp","currentHp",3 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.level","level",4 << 3 | WireType.VARINT);
      
      public static const IS_FAINT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.is_faint","isFaint",5 << 3 | WireType.VARINT);
      
      public static const CURRENT_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.current_time","currentTime",6 << 3 | WireType.VARINT);
      
      public static const WORLD_BOSS_OPEN_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.world_boss_open_info","worldBossOpenInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoWorldBossOpenInfo);
      
      public static const DARK_DIVISION_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.dark_division_support","darkDivisionSupport",9 << 3 | WireType.VARINT);
      
      public static const HIKAGE_SUPPORT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.hikage_support","hikageSupport",10 << 3 | WireType.VARINT);
      
      public static const IS_DEAD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.is_dead","isDead",11 << 3 | WireType.VARINT);
      
      public static const REVIVAL_COUNTDOWN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.worldBoss.ProtoGetWorldBossStatusResp.revival_countdown","revivalCountdown",12 << 3 | WireType.VARINT);
      
      public static const PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.player_list","playerList",13 << 3 | WireType.LENGTH_DELIMITED,ProtoRankPlayerList);
      
      public static const SELF_RANK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoGetWorldBossStatusResp.self_rank","selfRank",14 << 3 | WireType.LENGTH_DELIMITED,ProtoRankPlayerList);
       
      public var ret:ProtoRetInfo;
      
      private var max_hp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var current_hp$field:int;
      
      private var level$field:int;
      
      private var is_faint$field:int;
      
      private var current_time$field:int;
      
      private var world_boss_open_info$field:serverProto.worldBoss.ProtoWorldBossOpenInfo;
      
      private var dark_division_support$field:int;
      
      private var hikage_support$field:int;
      
      private var is_dead$field:int;
      
      private var revival_countdown$field:int;
      
      [ArrayElementType("serverProto.worldBoss.ProtoRankPlayerList")]
      public var playerList:Array;
      
      private var self_rank$field:serverProto.worldBoss.ProtoRankPlayerList;
      
      public function ProtoGetWorldBossStatusResp()
      {
         this.playerList = [];
         super();
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.max_hp$field = new int();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set maxHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : int
      {
         return this.max_hp$field;
      }
      
      public function clearCurrentHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.current_hp$field = new int();
      }
      
      public function get hasCurrentHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currentHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.current_hp$field = param1;
      }
      
      public function get currentHp() : int
      {
         return this.current_hp$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearIsFaint() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.is_faint$field = new int();
      }
      
      public function get hasIsFaint() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set isFaint(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.is_faint$field = param1;
      }
      
      public function get isFaint() : int
      {
         return this.is_faint$field;
      }
      
      public function clearCurrentTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.current_time$field = new int();
      }
      
      public function get hasCurrentTime() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set currentTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.current_time$field = param1;
      }
      
      public function get currentTime() : int
      {
         return this.current_time$field;
      }
      
      public function clearWorldBossOpenInfo() : void
      {
         this.world_boss_open_info$field = null;
      }
      
      public function get hasWorldBossOpenInfo() : Boolean
      {
         return this.world_boss_open_info$field != null;
      }
      
      public function set worldBossOpenInfo(param1:serverProto.worldBoss.ProtoWorldBossOpenInfo) : void
      {
         this.world_boss_open_info$field = param1;
      }
      
      public function get worldBossOpenInfo() : serverProto.worldBoss.ProtoWorldBossOpenInfo
      {
         return this.world_boss_open_info$field;
      }
      
      public function clearDarkDivisionSupport() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.dark_division_support$field = new int();
      }
      
      public function get hasDarkDivisionSupport() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set darkDivisionSupport(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.dark_division_support$field = param1;
      }
      
      public function get darkDivisionSupport() : int
      {
         return this.dark_division_support$field;
      }
      
      public function clearHikageSupport() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.hikage_support$field = new int();
      }
      
      public function get hasHikageSupport() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set hikageSupport(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.hikage_support$field = param1;
      }
      
      public function get hikageSupport() : int
      {
         return this.hikage_support$field;
      }
      
      public function clearIsDead() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.is_dead$field = new int();
      }
      
      public function get hasIsDead() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set isDead(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.is_dead$field = param1;
      }
      
      public function get isDead() : int
      {
         return this.is_dead$field;
      }
      
      public function clearRevivalCountdown() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.revival_countdown$field = new int();
      }
      
      public function get hasRevivalCountdown() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set revivalCountdown(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.revival_countdown$field = param1;
      }
      
      public function get revivalCountdown() : int
      {
         return this.revival_countdown$field;
      }
      
      public function clearSelfRank() : void
      {
         this.self_rank$field = null;
      }
      
      public function get hasSelfRank() : Boolean
      {
         return this.self_rank$field != null;
      }
      
      public function set selfRank(param1:serverProto.worldBoss.ProtoRankPlayerList) : void
      {
         this.self_rank$field = param1;
      }
      
      public function get selfRank() : serverProto.worldBoss.ProtoRankPlayerList
      {
         return this.self_rank$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.max_hp$field);
         }
         if(this.hasCurrentHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.current_hp$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
         }
         if(this.hasIsFaint)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.is_faint$field);
         }
         if(this.hasCurrentTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.current_time$field);
         }
         if(this.hasWorldBossOpenInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.world_boss_open_info$field);
         }
         if(this.hasDarkDivisionSupport)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.dark_division_support$field);
         }
         if(this.hasHikageSupport)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.hikage_support$field);
         }
         if(this.hasIsDead)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.is_dead$field);
         }
         if(this.hasRevivalCountdown)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.revival_countdown$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,13);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerList[_loc2_]);
            _loc2_++;
         }
         if(this.hasSelfRank)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,14);
            WriteUtils.write$TYPE_MESSAGE(param1,this.self_rank$field);
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
          * Error type: IndexOutOfBoundsException (Index: 13, Size: 13)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
