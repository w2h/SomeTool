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
   
   public final class ProtoBaseMainInfo extends Message
   {
      
      public static const BASE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_level","baseLevel",1 << 3 | WireType.VARINT);
      
      public static const BASE_POWER_ADDITION:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_power_addition","basePowerAddition",2 << 3 | WireType.VARINT);
      
      public static const BASE_POWER_ADDITION_UPGRADED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_power_addition_upgraded","basePowerAdditionUpgraded",3 << 3 | WireType.VARINT);
      
      public static const BASE_MAX_ROB_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_max_rob_money","baseMaxRobMoney",4 << 3 | WireType.VARINT);
      
      public static const BASE_UPGRADE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_upgrade_money","baseUpgradeMoney",5 << 3 | WireType.VARINT);
      
      public static const BASE_DESTORY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.base_destory_flag","baseDestoryFlag",6 << 3 | WireType.VARINT);
      
      public static const NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseMainInfo.ninja_list","ninjaList",7 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseNinjaInfo);
      
      public static const DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseMainInfo.desc","desc",8 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CAN_UPGRADE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseMainInfo.can_upgrade","canUpgrade",9 << 3 | WireType.VARINT);
       
      private var base_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var base_power_addition$field:int;
      
      private var base_power_addition_upgraded$field:int;
      
      private var base_max_rob_money$field:int;
      
      private var base_upgrade_money$field:int;
      
      private var base_destory_flag$field:int;
      
      [ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
      public var ninjaList:Array;
      
      private var desc$field:String;
      
      private var can_upgrade$field:int;
      
      public function ProtoBaseMainInfo()
      {
         this.ninjaList = [];
         super();
      }
      
      public function clearBaseLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.base_level$field = new int();
      }
      
      public function get hasBaseLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set baseLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.base_level$field = param1;
      }
      
      public function get baseLevel() : int
      {
         return this.base_level$field;
      }
      
      public function clearBasePowerAddition() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.base_power_addition$field = new int();
      }
      
      public function get hasBasePowerAddition() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set basePowerAddition(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.base_power_addition$field = param1;
      }
      
      public function get basePowerAddition() : int
      {
         return this.base_power_addition$field;
      }
      
      public function clearBasePowerAdditionUpgraded() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.base_power_addition_upgraded$field = new int();
      }
      
      public function get hasBasePowerAdditionUpgraded() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set basePowerAdditionUpgraded(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.base_power_addition_upgraded$field = param1;
      }
      
      public function get basePowerAdditionUpgraded() : int
      {
         return this.base_power_addition_upgraded$field;
      }
      
      public function clearBaseMaxRobMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.base_max_rob_money$field = new int();
      }
      
      public function get hasBaseMaxRobMoney() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set baseMaxRobMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.base_max_rob_money$field = param1;
      }
      
      public function get baseMaxRobMoney() : int
      {
         return this.base_max_rob_money$field;
      }
      
      public function clearBaseUpgradeMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.base_upgrade_money$field = new int();
      }
      
      public function get hasBaseUpgradeMoney() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set baseUpgradeMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.base_upgrade_money$field = param1;
      }
      
      public function get baseUpgradeMoney() : int
      {
         return this.base_upgrade_money$field;
      }
      
      public function clearBaseDestoryFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.base_destory_flag$field = new int();
      }
      
      public function get hasBaseDestoryFlag() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set baseDestoryFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.base_destory_flag$field = param1;
      }
      
      public function get baseDestoryFlag() : int
      {
         return this.base_destory_flag$field;
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
      
      public function clearCanUpgrade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.can_upgrade$field = new int();
      }
      
      public function get hasCanUpgrade() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set canUpgrade(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.can_upgrade$field = param1;
      }
      
      public function get canUpgrade() : int
      {
         return this.can_upgrade$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBaseLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.base_level$field);
         }
         if(this.hasBasePowerAddition)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.base_power_addition$field);
         }
         if(this.hasBasePowerAdditionUpgraded)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.base_power_addition_upgraded$field);
         }
         if(this.hasBaseMaxRobMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.base_max_rob_money$field);
         }
         if(this.hasBaseUpgradeMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.base_upgrade_money$field);
         }
         if(this.hasBaseDestoryFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.base_destory_flag$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaList[_loc2_]);
            _loc2_++;
         }
         if(this.hasDesc)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_STRING(param1,this.desc$field);
         }
         if(this.hasCanUpgrade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.can_upgrade$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
