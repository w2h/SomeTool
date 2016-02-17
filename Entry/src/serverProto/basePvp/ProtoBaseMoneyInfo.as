package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseMoneyInfo extends Message
   {
      
      public static const BASE_MONEY_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_level","baseMoneyLevel",1 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_ULIMIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_ulimit","baseMoneyUlimit",2 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_TOTAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_total","baseMoneyTotal",3 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_MAX_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_max_rob_money","baseMoneyMaxRobMoney",4 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_UPGRADE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_upgrade_money","baseMoneyUpgradeMoney",5 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_PRODUCE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_produce_money","baseMoneyProduceMoney",6 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_PRODUCE_MONEY_UPGRADED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_produce_money_upgraded","baseMoneyProduceMoneyUpgraded",7 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_PRODUCE_MONEY_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_produce_money_cd","baseMoneyProduceMoneyCd",8 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_DESTORY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_destory_flag","baseMoneyDestoryFlag",9 << 3 | WireType.VARINT);
      
      public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseMoneyInfo.ninja_list","ninjaList",10 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseNinjaInfo);
      
      public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseMoneyInfo.desc","desc",11 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const BASE_MONEY_CYCLE_PRODUCE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_cycle_produce","baseMoneyCycleProduce",12 << 3 | WireType.VARINT);
      
      public static const BASE_MONEY_STORE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_money_store","baseMoneyStore",13 << 3 | WireType.VARINT);
      
      public static const BASE_NEXT_PRODUCE_MONEY_CD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.base_next_produce_money_cd","baseNextProduceMoneyCd",14 << 3 | WireType.VARINT);
      
      public static const CAN_UPGRADE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.can_upgrade","canUpgrade",15 << 3 | WireType.VARINT);
      
      public static const UPGRADE_NEED_MAIN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMoneyInfo.upgrade_need_main_level","upgradeNeedMainLevel",16 << 3 | WireType.VARINT);
       
      private var base_money_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var base_money_ulimit$field:int;
      
      private var base_money_total$field:int;
      
      private var base_money_max_rob_money$field:int;
      
      private var base_money_upgrade_money$field:int;
      
      private var base_money_produce_money$field:int;
      
      private var base_money_produce_money_upgraded$field:int;
      
      private var base_money_produce_money_cd$field:int;
      
      private var base_money_destory_flag$field:int;
      
      [ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
      public var ninjaList:Array;
      
      private var desc$field:String;
      
      private var base_money_cycle_produce$field:int;
      
      private var base_money_store$field:int;
      
      private var base_next_produce_money_cd$field:int;
      
      private var can_upgrade$field:int;
      
      private var upgrade_need_main_level$field:int;
      
      public function ProtoBaseMoneyInfo()
      {
         this.ninjaList = [];
         super();
      }
      
      public function clearBaseMoneyLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.base_money_level$field = new int();
      }
      
      public function get hasBaseMoneyLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set baseMoneyLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.base_money_level$field = param1;
      }
      
      public function get baseMoneyLevel() : int
      {
         return this.base_money_level$field;
      }
      
      public function clearBaseMoneyUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.base_money_ulimit$field = new int();
      }
      
      public function get hasBaseMoneyUlimit() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set baseMoneyUlimit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.base_money_ulimit$field = param1;
      }
      
      public function get baseMoneyUlimit() : int
      {
         return this.base_money_ulimit$field;
      }
      
      public function clearBaseMoneyTotal() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.base_money_total$field = new int();
      }
      
      public function get hasBaseMoneyTotal() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set baseMoneyTotal(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.base_money_total$field = param1;
      }
      
      public function get baseMoneyTotal() : int
      {
         return this.base_money_total$field;
      }
      
      public function clearBaseMoneyMaxRobMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.base_money_max_rob_money$field = new int();
      }
      
      public function get hasBaseMoneyMaxRobMoney() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set baseMoneyMaxRobMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.base_money_max_rob_money$field = param1;
      }
      
      public function get baseMoneyMaxRobMoney() : int
      {
         return this.base_money_max_rob_money$field;
      }
      
      public function clearBaseMoneyUpgradeMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.base_money_upgrade_money$field = new int();
      }
      
      public function get hasBaseMoneyUpgradeMoney() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set baseMoneyUpgradeMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.base_money_upgrade_money$field = param1;
      }
      
      public function get baseMoneyUpgradeMoney() : int
      {
         return this.base_money_upgrade_money$field;
      }
      
      public function clearBaseMoneyProduceMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.base_money_produce_money$field = new int();
      }
      
      public function get hasBaseMoneyProduceMoney() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set baseMoneyProduceMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.base_money_produce_money$field = param1;
      }
      
      public function get baseMoneyProduceMoney() : int
      {
         return this.base_money_produce_money$field;
      }
      
      public function clearBaseMoneyProduceMoneyUpgraded() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.base_money_produce_money_upgraded$field = new int();
      }
      
      public function get hasBaseMoneyProduceMoneyUpgraded() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set baseMoneyProduceMoneyUpgraded(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.base_money_produce_money_upgraded$field = param1;
      }
      
      public function get baseMoneyProduceMoneyUpgraded() : int
      {
         return this.base_money_produce_money_upgraded$field;
      }
      
      public function clearBaseMoneyProduceMoneyCd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.base_money_produce_money_cd$field = new int();
      }
      
      public function get hasBaseMoneyProduceMoneyCd() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set baseMoneyProduceMoneyCd(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.base_money_produce_money_cd$field = param1;
      }
      
      public function get baseMoneyProduceMoneyCd() : int
      {
         return this.base_money_produce_money_cd$field;
      }
      
      public function clearBaseMoneyDestoryFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.base_money_destory_flag$field = new int();
      }
      
      public function get hasBaseMoneyDestoryFlag() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set baseMoneyDestoryFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.base_money_destory_flag$field = param1;
      }
      
      public function get baseMoneyDestoryFlag() : int
      {
         return this.base_money_destory_flag$field;
      }
      
      public function clearDesc() : void
      {
         this.desc$field = null;
      }
      
      public function get hasDesc() : Boolean
      {
         return this.desc$field != null;
      }
      
      public function set desc(param1:String) : void
      {
         this.desc$field = param1;
      }
      
      public function get desc() : String
      {
         return this.desc$field;
      }
      
      public function clearBaseMoneyCycleProduce() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.base_money_cycle_produce$field = new int();
      }
      
      public function get hasBaseMoneyCycleProduce() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set baseMoneyCycleProduce(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.base_money_cycle_produce$field = param1;
      }
      
      public function get baseMoneyCycleProduce() : int
      {
         return this.base_money_cycle_produce$field;
      }
      
      public function clearBaseMoneyStore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.base_money_store$field = new int();
      }
      
      public function get hasBaseMoneyStore() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set baseMoneyStore(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.base_money_store$field = param1;
      }
      
      public function get baseMoneyStore() : int
      {
         return this.base_money_store$field;
      }
      
      public function clearBaseNextProduceMoneyCd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.base_next_produce_money_cd$field = new int();
      }
      
      public function get hasBaseNextProduceMoneyCd() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set baseNextProduceMoneyCd(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.base_next_produce_money_cd$field = param1;
      }
      
      public function get baseNextProduceMoneyCd() : int
      {
         return this.base_next_produce_money_cd$field;
      }
      
      public function clearCanUpgrade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.can_upgrade$field = new int();
      }
      
      public function get hasCanUpgrade() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set canUpgrade(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.can_upgrade$field = param1;
      }
      
      public function get canUpgrade() : int
      {
         return this.can_upgrade$field;
      }
      
      public function clearUpgradeNeedMainLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294959103E9;
         this.upgrade_need_main_level$field = new int();
      }
      
      public function get hasUpgradeNeedMainLevel() : Boolean
      {
         return (this.hasField$0 & 8192) != 0;
      }
      
      public function set upgradeNeedMainLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8192;
         this.upgrade_need_main_level$field = param1;
      }
      
      public function get upgradeNeedMainLevel() : int
      {
         return this.upgrade_need_main_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBaseMoneyLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_level$field);
         }
         if(this.hasBaseMoneyUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_ulimit$field);
         }
         if(this.hasBaseMoneyTotal)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_total$field);
         }
         if(this.hasBaseMoneyMaxRobMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_max_rob_money$field);
         }
         if(this.hasBaseMoneyUpgradeMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_upgrade_money$field);
         }
         if(this.hasBaseMoneyProduceMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_produce_money$field);
         }
         if(this.hasBaseMoneyProduceMoneyUpgraded)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_produce_money_upgraded$field);
         }
         if(this.hasBaseMoneyProduceMoneyCd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_produce_money_cd$field);
         }
         if(this.hasBaseMoneyDestoryFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_destory_flag$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaList[_loc2_]);
            _loc2_++;
         }
         if(this.hasDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_STRING(param1,this.desc$field);
         }
         if(this.hasBaseMoneyCycleProduce)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_cycle_produce$field);
         }
         if(this.hasBaseMoneyStore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_INT32(param1,this.base_money_store$field);
         }
         if(this.hasBaseNextProduceMoneyCd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_INT32(param1,this.base_next_produce_money_cd$field);
         }
         if(this.hasCanUpgrade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_INT32(param1,this.can_upgrade$field);
         }
         if(this.hasUpgradeNeedMainLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,16);
            WriteUtils.write$TYPE_INT32(param1,this.upgrade_need_main_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 16, Size: 16)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
