package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoVIPPrivilegeInfo extends Message
   {
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoVIPPrivilegeInfo.vip_level","vipLevel",1 << 3 | WireType.VARINT,ProtoPlayerVipLevel);
      
      public static const PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.price","price",2 << 3 | WireType.VARINT);
      
      public static const DISCOUNT_PRICE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.discount_price","discountPrice",3 << 3 | WireType.VARINT);
      
      public static const LAST_DAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.last_day","lastDay",4 << 3 | WireType.VARINT);
      
      public static const AUTO_OFFER_TASK:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.auto_offer_task","autoOfferTask",5 << 3 | WireType.VARINT);
      
      public static const AUTO_HUNT_LIFE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.auto_hunt_life","autoHuntLife",6 << 3 | WireType.VARINT);
      
      public static const AUTO_SIGN_IN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.auto_sign_in","autoSignIn",7 << 3 | WireType.VARINT);
      
      public static const STRENGTH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.strength","strength",8 << 3 | WireType.VARINT);
      
      public static const STRENGTH_BUY_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.strength_buy_num","strengthBuyNum",9 << 3 | WireType.VARINT);
      
      public static const DUNGEON_EXP_PRECENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.dungeon_exp_precent","dungeonExpPrecent",10 << 3 | WireType.VARINT);
      
      public static const ELITE_DUNGEON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.elite_dungeon_num","eliteDungeonNum",11 << 3 | WireType.VARINT);
      
      public static const BRINGIN_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.bringin_money","bringinMoney",12 << 3 | WireType.VARINT);
      
      public static const EXPEDITION_MONEY_PRECENT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.expedition_money_precent","expeditionMoneyPrecent",13 << 3 | WireType.VARINT);
      
      public static const RANK_BATTLE_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.rank_battle_num","rankBattleNum",14 << 3 | WireType.VARINT);
      
      public static const PATCH_SIGN_IN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.patch_sign_in","patchSignIn",15 << 3 | WireType.VARINT);
      
      public static const DAILY_MONEY_COUPON:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.daily_money_coupon","dailyMoneyCoupon",16 << 3 | WireType.VARINT);
      
      public static const FIRST_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoVIPPrivilegeInfo.first_reward","firstReward",17 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const WEEKEND_REWARD:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.weekend_reward","weekendReward",18 << 3 | WireType.VARINT);
      
      public static const PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoVIPPrivilegeInfo.property","property",19 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const CAN_GET_FIRST_REWARD:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoVIPPrivilegeInfo.can_get_first_reward","canGetFirstReward",20 << 3 | WireType.VARINT);
      
      public static const SCENE_TELEPORT_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoVIPPrivilegeInfo.scene_teleport_times","sceneTeleportTimes",21 << 3 | WireType.VARINT);
       
      private var vip_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var price$field:int;
      
      private var discount_price$field:int;
      
      private var last_day$field:int;
      
      private var auto_offer_task$field:Boolean;
      
      private var auto_hunt_life$field:Boolean;
      
      private var auto_sign_in$field:Boolean;
      
      private var strength$field:int;
      
      private var strength_buy_num$field:int;
      
      private var dungeon_exp_precent$field:int;
      
      private var elite_dungeon_num$field:int;
      
      private var bringin_money$field:int;
      
      private var expedition_money_precent$field:int;
      
      private var rank_battle_num$field:int;
      
      private var patch_sign_in$field:int;
      
      private var daily_money_coupon$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var firstReward:Array;
      
      private var weekend_reward$field:Boolean;
      
      private var property$field:ProtoNaurtoAllPropertyInfo;
      
      private var can_get_first_reward$field:Boolean;
      
      private var scene_teleport_times$field:int;
      
      public function ProtoVIPPrivilegeInfo()
      {
         this.firstReward = [];
         super();
      }
      
      public function clearVipLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.vip_level$field = new int();
      }
      
      public function get hasVipLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set vipLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.vip_level$field = param1;
      }
      
      public function get vipLevel() : int
      {
         return this.vip_level$field;
      }
      
      public function clearPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.price$field = new int();
      }
      
      public function get hasPrice() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set price(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.price$field = param1;
      }
      
      public function get price() : int
      {
         return this.price$field;
      }
      
      public function clearDiscountPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.discount_price$field = new int();
      }
      
      public function get hasDiscountPrice() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set discountPrice(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.discount_price$field = param1;
      }
      
      public function get discountPrice() : int
      {
         return this.discount_price$field;
      }
      
      public function clearLastDay() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.last_day$field = new int();
      }
      
      public function get hasLastDay() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set lastDay(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.last_day$field = param1;
      }
      
      public function get lastDay() : int
      {
         return this.last_day$field;
      }
      
      public function clearAutoOfferTask() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.auto_offer_task$field = new Boolean();
      }
      
      public function get hasAutoOfferTask() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set autoOfferTask(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.auto_offer_task$field = param1;
      }
      
      public function get autoOfferTask() : Boolean
      {
         return this.auto_offer_task$field;
      }
      
      public function clearAutoHuntLife() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.auto_hunt_life$field = new Boolean();
      }
      
      public function get hasAutoHuntLife() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set autoHuntLife(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.auto_hunt_life$field = param1;
      }
      
      public function get autoHuntLife() : Boolean
      {
         return this.auto_hunt_life$field;
      }
      
      public function clearAutoSignIn() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.auto_sign_in$field = new Boolean();
      }
      
      public function get hasAutoSignIn() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set autoSignIn(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.auto_sign_in$field = param1;
      }
      
      public function get autoSignIn() : Boolean
      {
         return this.auto_sign_in$field;
      }
      
      public function clearStrength() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.strength$field = new int();
      }
      
      public function get hasStrength() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set strength(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.strength$field = param1;
      }
      
      public function get strength() : int
      {
         return this.strength$field;
      }
      
      public function clearStrengthBuyNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.strength_buy_num$field = new int();
      }
      
      public function get hasStrengthBuyNum() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set strengthBuyNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.strength_buy_num$field = param1;
      }
      
      public function get strengthBuyNum() : int
      {
         return this.strength_buy_num$field;
      }
      
      public function clearDungeonExpPrecent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.dungeon_exp_precent$field = new int();
      }
      
      public function get hasDungeonExpPrecent() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set dungeonExpPrecent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.dungeon_exp_precent$field = param1;
      }
      
      public function get dungeonExpPrecent() : int
      {
         return this.dungeon_exp_precent$field;
      }
      
      public function clearEliteDungeonNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.elite_dungeon_num$field = new int();
      }
      
      public function get hasEliteDungeonNum() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set eliteDungeonNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.elite_dungeon_num$field = param1;
      }
      
      public function get eliteDungeonNum() : int
      {
         return this.elite_dungeon_num$field;
      }
      
      public function clearBringinMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.bringin_money$field = new int();
      }
      
      public function get hasBringinMoney() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set bringinMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.bringin_money$field = param1;
      }
      
      public function get bringinMoney() : int
      {
         return this.bringin_money$field;
      }
      
      public function clearExpeditionMoneyPrecent() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.expedition_money_precent$field = new int();
      }
      
      public function get hasExpeditionMoneyPrecent() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set expeditionMoneyPrecent(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.expedition_money_precent$field = param1;
      }
      
      public function get expeditionMoneyPrecent() : int
      {
         return this.expedition_money_precent$field;
      }
      
      public function clearRankBattleNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.rank_battle_num$field = new int();
      }
      
      public function get hasRankBattleNum() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set rankBattleNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.rank_battle_num$field = param1;
      }
      
      public function get rankBattleNum() : int
      {
         return this.rank_battle_num$field;
      }
      
      public function clearPatchSignIn() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294950911E9;
         this.patch_sign_in$field = new int();
      }
      
      public function get hasPatchSignIn() : Boolean
      {
         return (this.hasField$0 & 16384) != 0;
      }
      
      public function set patchSignIn(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16384;
         this.patch_sign_in$field = param1;
      }
      
      public function get patchSignIn() : int
      {
         return this.patch_sign_in$field;
      }
      
      public function clearDailyMoneyCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294934527E9;
         this.daily_money_coupon$field = new int();
      }
      
      public function get hasDailyMoneyCoupon() : Boolean
      {
         return (this.hasField$0 & 32768) != 0;
      }
      
      public function set dailyMoneyCoupon(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32768;
         this.daily_money_coupon$field = param1;
      }
      
      public function get dailyMoneyCoupon() : int
      {
         return this.daily_money_coupon$field;
      }
      
      public function clearWeekendReward() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294901759E9;
         this.weekend_reward$field = new Boolean();
      }
      
      public function get hasWeekendReward() : Boolean
      {
         return (this.hasField$0 & 65536) != 0;
      }
      
      public function set weekendReward(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 65536;
         this.weekend_reward$field = param1;
      }
      
      public function get weekendReward() : Boolean
      {
         return this.weekend_reward$field;
      }
      
      public function clearProperty() : void
      {
         this.property$field = null;
      }
      
      public function get hasProperty() : Boolean
      {
         return this.property$field != null;
      }
      
      public function set property(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.property$field = param1;
      }
      
      public function get property() : ProtoNaurtoAllPropertyInfo
      {
         return this.property$field;
      }
      
      public function clearCanGetFirstReward() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294836223E9;
         this.can_get_first_reward$field = new Boolean();
      }
      
      public function get hasCanGetFirstReward() : Boolean
      {
         return (this.hasField$0 & 131072) != 0;
      }
      
      public function set canGetFirstReward(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 131072;
         this.can_get_first_reward$field = param1;
      }
      
      public function get canGetFirstReward() : Boolean
      {
         return this.can_get_first_reward$field;
      }
      
      public function clearSceneTeleportTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294705151E9;
         this.scene_teleport_times$field = new int();
      }
      
      public function get hasSceneTeleportTimes() : Boolean
      {
         return (this.hasField$0 & 262144) != 0;
      }
      
      public function set sceneTeleportTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 262144;
         this.scene_teleport_times$field = param1;
      }
      
      public function get sceneTeleportTimes() : int
      {
         return this.scene_teleport_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasVipLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.vip_level$field);
         }
         if(this.hasPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.price$field);
         }
         if(this.hasDiscountPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.discount_price$field);
         }
         if(this.hasLastDay)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.last_day$field);
         }
         if(this.hasAutoOfferTask)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_offer_task$field);
         }
         if(this.hasAutoHuntLife)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_hunt_life$field);
         }
         if(this.hasAutoSignIn)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_sign_in$field);
         }
         if(this.hasStrength)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.strength$field);
         }
         if(this.hasStrengthBuyNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.strength_buy_num$field);
         }
         if(this.hasDungeonExpPrecent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.dungeon_exp_precent$field);
         }
         if(this.hasEliteDungeonNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.elite_dungeon_num$field);
         }
         if(this.hasBringinMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.bringin_money$field);
         }
         if(this.hasExpeditionMoneyPrecent)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.expedition_money_precent$field);
         }
         if(this.hasRankBattleNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_INT32(param1,this.rank_battle_num$field);
         }
         if(this.hasPatchSignIn)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_INT32(param1,this.patch_sign_in$field);
         }
         if(this.hasDailyMoneyCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_INT32(param1,this.daily_money_coupon$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.firstReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,17);
            WriteUtils.write$TYPE_MESSAGE(param1,this.firstReward[_loc2_]);
            _loc2_++;
         }
         if(this.hasWeekendReward)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,18);
            WriteUtils.write$TYPE_BOOL(param1,this.weekend_reward$field);
         }
         if(this.hasProperty)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,19);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property$field);
         }
         if(this.hasCanGetFirstReward)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,20);
            WriteUtils.write$TYPE_BOOL(param1,this.can_get_first_reward$field);
         }
         if(this.hasSceneTeleportTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,21);
            WriteUtils.write$TYPE_INT32(param1,this.scene_teleport_times$field);
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
          * Error type: IndexOutOfBoundsException (Index: 21, Size: 21)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
