package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGBattleFieldInfoNotify extends Message
   {
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGBattleFieldInfoNotify.status","status",1 << 3 | WireType.VARINT,ProtoGvGBattleStatus);
      
      public static const ROUND:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGBattleFieldInfoNotify.round","round",2 << 3 | WireType.VARINT,ProtoGvGBattleRound);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldInfoNotify.remain_time","remainTime",3 << 3 | WireType.VARINT);
      
      public static const SELF_GUILD_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.self_guild_data","selfGuildData",4 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBattleFieldGuildData);
      
      public static const RIVAL_GUILD_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.rival_guild_data","rivalGuildData",5 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBattleFieldGuildData);
      
      public static const BATTLE_FIELD_DATA:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.battle_field_data","battleFieldData",6 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBattleFieldData);
      
      public static const SHOW_NEXT_TIME:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.show_next_time","showNextTime",7 << 3 | WireType.LENGTH_DELIMITED,ProtoBattleTime);
      
      public static const GVG_BEAST_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGBattleFieldInfoNotify.gvg_beast_info","gvgBeastInfo",8 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBeastInfo);
       
      private var status$field:int;
      
      private var hasField$0:uint = 0;
      
      private var round$field:int;
      
      private var remain_time$field:uint;
      
      private var self_guild_data$field:serverProto.guild.ProtoGvGBattleFieldGuildData;
      
      private var rival_guild_data$field:serverProto.guild.ProtoGvGBattleFieldGuildData;
      
      [ArrayElementType("serverProto.guild.ProtoGvGBattleFieldData")]
      public var battleFieldData:Array;
      
      private var show_next_time$field:serverProto.guild.ProtoBattleTime;
      
      private var gvg_beast_info$field:serverProto.guild.ProtoGvGBeastInfo;
      
      public function ProtoGvGBattleFieldInfoNotify()
      {
         this.battleFieldData = [];
         super();
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.status$field = new int();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set status(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.status$field = param1;
      }
      
      public function get status() : int
      {
         return this.status$field;
      }
      
      public function clearRound() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.round$field = new int();
      }
      
      public function get hasRound() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set round(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.round$field = param1;
      }
      
      public function get round() : int
      {
         return this.round$field;
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      public function clearSelfGuildData() : void
      {
         this.self_guild_data$field = null;
      }
      
      public function get hasSelfGuildData() : Boolean
      {
         return this.self_guild_data$field != null;
      }
      
      public function set selfGuildData(param1:serverProto.guild.ProtoGvGBattleFieldGuildData) : void
      {
         this.self_guild_data$field = param1;
      }
      
      public function get selfGuildData() : serverProto.guild.ProtoGvGBattleFieldGuildData
      {
         return this.self_guild_data$field;
      }
      
      public function clearRivalGuildData() : void
      {
         this.rival_guild_data$field = null;
      }
      
      public function get hasRivalGuildData() : Boolean
      {
         return this.rival_guild_data$field != null;
      }
      
      public function set rivalGuildData(param1:serverProto.guild.ProtoGvGBattleFieldGuildData) : void
      {
         this.rival_guild_data$field = param1;
      }
      
      public function get rivalGuildData() : serverProto.guild.ProtoGvGBattleFieldGuildData
      {
         return this.rival_guild_data$field;
      }
      
      public function clearShowNextTime() : void
      {
         this.show_next_time$field = null;
      }
      
      public function get hasShowNextTime() : Boolean
      {
         return this.show_next_time$field != null;
      }
      
      public function set showNextTime(param1:serverProto.guild.ProtoBattleTime) : void
      {
         this.show_next_time$field = param1;
      }
      
      public function get showNextTime() : serverProto.guild.ProtoBattleTime
      {
         return this.show_next_time$field;
      }
      
      public function clearGvgBeastInfo() : void
      {
         this.gvg_beast_info$field = null;
      }
      
      public function get hasGvgBeastInfo() : Boolean
      {
         return this.gvg_beast_info$field != null;
      }
      
      public function set gvgBeastInfo(param1:serverProto.guild.ProtoGvGBeastInfo) : void
      {
         this.gvg_beast_info$field = param1;
      }
      
      public function get gvgBeastInfo() : serverProto.guild.ProtoGvGBeastInfo
      {
         return this.gvg_beast_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.status$field);
         }
         if(this.hasRound)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.round$field);
         }
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
         }
         if(this.hasSelfGuildData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.self_guild_data$field);
         }
         if(this.hasRivalGuildData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rival_guild_data$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.battleFieldData.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.battleFieldData[_loc2_]);
            _loc2_++;
         }
         if(this.hasShowNextTime)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.show_next_time$field);
         }
         if(this.hasGvgBeastInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.gvg_beast_info$field);
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
