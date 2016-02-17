package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDonateQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDonateQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const MY_COUNTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.my_countri","myCountri",2 << 3 | WireType.VARINT);
      
      public static const GUILD_FUNDS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.guild_funds","guildFunds",3 << 3 | WireType.VARINT);
      
      public static const TODAY_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDonateQueryRsp.today_rank","todayRank",4 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDonationRank);
      
      public static const HISTORY_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDonateQueryRsp.history_rank","historyRank",5 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDonationRank);
      
      public static const DAILY_MONEY_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.daily_money_donate_guild_contri","dailyMoneyDonateGuildContri",6 << 3 | WireType.VARINT);
      
      public static const MAX_DAILY_MONEY_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.max_daily_money_donate_guild_contri","maxDailyMoneyDonateGuildContri",7 << 3 | WireType.VARINT);
      
      public static const DAILY_GOLDINGOT_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.daily_goldingot_donate_guild_contri","dailyGoldingotDonateGuildContri",8 << 3 | WireType.VARINT);
      
      public static const MAX_DAILY_GOLDINGOT_DONATE_GUILD_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDonateQueryRsp.max_daily_goldingot_donate_guild_contri","maxDailyGoldingotDonateGuildContri",9 << 3 | WireType.VARINT);
      
      public static const WEEK_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDonateQueryRsp.week_rank","weekRank",10 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDonationRank);
       
      private var ret$field:ProtoRetInfo;
      
      private var my_countri$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var guild_funds$field:uint;
      
      [ArrayElementType("serverProto.guild.ProtoGuildDonationRank")]
      public var todayRank:Array;
      
      [ArrayElementType("serverProto.guild.ProtoGuildDonationRank")]
      public var historyRank:Array;
      
      private var daily_money_donate_guild_contri$field:uint;
      
      private var max_daily_money_donate_guild_contri$field:uint;
      
      private var daily_goldingot_donate_guild_contri$field:uint;
      
      private var max_daily_goldingot_donate_guild_contri$field:uint;
      
      [ArrayElementType("serverProto.guild.ProtoGuildDonationRank")]
      public var weekRank:Array;
      
      public function ProtoGuildDonateQueryRsp()
      {
         this.todayRank = [];
         this.historyRank = [];
         this.weekRank = [];
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearMyCountri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.my_countri$field = new uint();
      }
      
      public function get hasMyCountri() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set myCountri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.my_countri$field = param1;
      }
      
      public function get myCountri() : uint
      {
         return this.my_countri$field;
      }
      
      public function clearGuildFunds() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.guild_funds$field = new uint();
      }
      
      public function get hasGuildFunds() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set guildFunds(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.guild_funds$field = param1;
      }
      
      public function get guildFunds() : uint
      {
         return this.guild_funds$field;
      }
      
      public function clearDailyMoneyDonateGuildContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.daily_money_donate_guild_contri$field = new uint();
      }
      
      public function get hasDailyMoneyDonateGuildContri() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set dailyMoneyDonateGuildContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.daily_money_donate_guild_contri$field = param1;
      }
      
      public function get dailyMoneyDonateGuildContri() : uint
      {
         return this.daily_money_donate_guild_contri$field;
      }
      
      public function clearMaxDailyMoneyDonateGuildContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_daily_money_donate_guild_contri$field = new uint();
      }
      
      public function get hasMaxDailyMoneyDonateGuildContri() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxDailyMoneyDonateGuildContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_daily_money_donate_guild_contri$field = param1;
      }
      
      public function get maxDailyMoneyDonateGuildContri() : uint
      {
         return this.max_daily_money_donate_guild_contri$field;
      }
      
      public function clearDailyGoldingotDonateGuildContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.daily_goldingot_donate_guild_contri$field = new uint();
      }
      
      public function get hasDailyGoldingotDonateGuildContri() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set dailyGoldingotDonateGuildContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.daily_goldingot_donate_guild_contri$field = param1;
      }
      
      public function get dailyGoldingotDonateGuildContri() : uint
      {
         return this.daily_goldingot_donate_guild_contri$field;
      }
      
      public function clearMaxDailyGoldingotDonateGuildContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.max_daily_goldingot_donate_guild_contri$field = new uint();
      }
      
      public function get hasMaxDailyGoldingotDonateGuildContri() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set maxDailyGoldingotDonateGuildContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.max_daily_goldingot_donate_guild_contri$field = param1;
      }
      
      public function get maxDailyGoldingotDonateGuildContri() : uint
      {
         return this.max_daily_goldingot_donate_guild_contri$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasMyCountri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.my_countri$field);
         }
         if(this.hasGuildFunds)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.guild_funds$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.todayRank.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.todayRank[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.historyRank.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.historyRank[_loc3_]);
            _loc3_++;
         }
         if(this.hasDailyMoneyDonateGuildContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_money_donate_guild_contri$field);
         }
         if(this.hasMaxDailyMoneyDonateGuildContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.max_daily_money_donate_guild_contri$field);
         }
         if(this.hasDailyGoldingotDonateGuildContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.daily_goldingot_donate_guild_contri$field);
         }
         if(this.hasMaxDailyGoldingotDonateGuildContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.max_daily_goldingot_donate_guild_contri$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.weekRank.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.weekRank[_loc4_]);
            _loc4_++;
         }
         for(_loc5_ in this)
         {
            super.writeUnknown(param1,_loc5_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 10, Size: 10)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
