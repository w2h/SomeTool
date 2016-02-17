package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseDefenseInformation extends Message
   {
      
      public static const ATTACKER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_name","attackerName",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ATTACKER_UIN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_uin","attackerUin",2 << 3 | WireType.VARINT);
      
      public static const ATTACKER_SVR_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_svr_id","attackerSvrId",3 << 3 | WireType.VARINT);
      
      public static const ATTACKER_ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_role_id","attackerRoleId",4 << 3 | WireType.VARINT);
      
      public static const ATTACKER_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_power","attackerPower",5 << 3 | WireType.VARINT);
      
      public static const RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.result","result",6 << 3 | WireType.VARINT);
      
      public static const LOST_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.lost_power","lostPower",7 << 3 | WireType.VARINT);
      
      public static const LOST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.lost_money","lostMoney",8 << 3 | WireType.VARINT);
      
      public static const DESTORY_BASE_MAIN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.destory_base_main","destoryBaseMain",9 << 3 | WireType.VARINT);
      
      public static const DESTORY_BASE_ROSHAN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.destory_base_roshan","destoryBaseRoshan",10 << 3 | WireType.VARINT);
      
      public static const DESTORY_BASE_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseDefenseInformation.destory_base_money","destoryBaseMoney",11 << 3 | WireType.VARINT);
      
      public static const ATTACKER_NINJA_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBaseDefenseInformation.attacker_ninja_list","attackerNinjaList",12 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseNinjaInfo);
      
      public static const ROLE_NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.role_ninja_id","roleNinjaId",13 << 3 | WireType.VARINT);
      
      public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.time","time",14 << 3 | WireType.VARINT);
      
      public static const CAN_ATTACK_BACK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.basePvp.ProtoBaseDefenseInformation.can_attack_back","canAttackBack",15 << 3 | WireType.VARINT);
       
      private var attacker_name$field:String;
      
      private var attacker_uin$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var attacker_svr_id$field:uint;
      
      private var attacker_role_id$field:uint;
      
      private var attacker_power$field:uint;
      
      private var result$field:uint;
      
      private var lost_power$field:int;
      
      private var lost_money$field:int;
      
      private var destory_base_main$field:int;
      
      private var destory_base_roshan$field:int;
      
      private var destory_base_money$field:int;
      
      [ArrayElementType("serverProto.basePvp.ProtoBaseNinjaInfo")]
      public var attackerNinjaList:Array;
      
      private var role_ninja_id$field:uint;
      
      private var time$field:uint;
      
      private var can_attack_back$field:uint;
      
      public function ProtoBaseDefenseInformation()
      {
         this.attackerNinjaList = [];
         super();
      }
      
      public function clearAttackerName() : void
      {
         this.attacker_name$field = null;
      }
      
      public function get hasAttackerName() : Boolean
      {
         return this.attacker_name$field != null;
      }
      
      public function set attackerName(param1:String) : void
      {
         this.attacker_name$field = param1;
      }
      
      public function get attackerName() : String
      {
         return this.attacker_name$field;
      }
      
      public function clearAttackerUin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.attacker_uin$field = new uint();
      }
      
      public function get hasAttackerUin() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set attackerUin(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.attacker_uin$field = param1;
      }
      
      public function get attackerUin() : uint
      {
         return this.attacker_uin$field;
      }
      
      public function clearAttackerSvrId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.attacker_svr_id$field = new uint();
      }
      
      public function get hasAttackerSvrId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set attackerSvrId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.attacker_svr_id$field = param1;
      }
      
      public function get attackerSvrId() : uint
      {
         return this.attacker_svr_id$field;
      }
      
      public function clearAttackerRoleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.attacker_role_id$field = new uint();
      }
      
      public function get hasAttackerRoleId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set attackerRoleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.attacker_role_id$field = param1;
      }
      
      public function get attackerRoleId() : uint
      {
         return this.attacker_role_id$field;
      }
      
      public function clearAttackerPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.attacker_power$field = new uint();
      }
      
      public function get hasAttackerPower() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set attackerPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.attacker_power$field = param1;
      }
      
      public function get attackerPower() : uint
      {
         return this.attacker_power$field;
      }
      
      public function clearResult() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.result$field = new uint();
      }
      
      public function get hasResult() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set result(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.result$field = param1;
      }
      
      public function get result() : uint
      {
         return this.result$field;
      }
      
      public function clearLostPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.lost_power$field = new int();
      }
      
      public function get hasLostPower() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set lostPower(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.lost_power$field = param1;
      }
      
      public function get lostPower() : int
      {
         return this.lost_power$field;
      }
      
      public function clearLostMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.lost_money$field = new int();
      }
      
      public function get hasLostMoney() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set lostMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.lost_money$field = param1;
      }
      
      public function get lostMoney() : int
      {
         return this.lost_money$field;
      }
      
      public function clearDestoryBaseMain() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.destory_base_main$field = new int();
      }
      
      public function get hasDestoryBaseMain() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set destoryBaseMain(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.destory_base_main$field = param1;
      }
      
      public function get destoryBaseMain() : int
      {
         return this.destory_base_main$field;
      }
      
      public function clearDestoryBaseRoshan() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.destory_base_roshan$field = new int();
      }
      
      public function get hasDestoryBaseRoshan() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set destoryBaseRoshan(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.destory_base_roshan$field = param1;
      }
      
      public function get destoryBaseRoshan() : int
      {
         return this.destory_base_roshan$field;
      }
      
      public function clearDestoryBaseMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966783E9;
         this.destory_base_money$field = new int();
      }
      
      public function get hasDestoryBaseMoney() : Boolean
      {
         return (this.hasField$0 & 512) != 0;
      }
      
      public function set destoryBaseMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 512;
         this.destory_base_money$field = param1;
      }
      
      public function get destoryBaseMoney() : int
      {
         return this.destory_base_money$field;
      }
      
      public function clearRoleNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294966271E9;
         this.role_ninja_id$field = new uint();
      }
      
      public function get hasRoleNinjaId() : Boolean
      {
         return (this.hasField$0 & 1024) != 0;
      }
      
      public function set roleNinjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1024;
         this.role_ninja_id$field = param1;
      }
      
      public function get roleNinjaId() : uint
      {
         return this.role_ninja_id$field;
      }
      
      public function clearTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294965247E9;
         this.time$field = new uint();
      }
      
      public function get hasTime() : Boolean
      {
         return (this.hasField$0 & 2048) != 0;
      }
      
      public function set time(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2048;
         this.time$field = param1;
      }
      
      public function get time() : uint
      {
         return this.time$field;
      }
      
      public function clearCanAttackBack() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294963199E9;
         this.can_attack_back$field = new uint();
      }
      
      public function get hasCanAttackBack() : Boolean
      {
         return (this.hasField$0 & 4096) != 0;
      }
      
      public function set canAttackBack(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4096;
         this.can_attack_back$field = param1;
      }
      
      public function get canAttackBack() : uint
      {
         return this.can_attack_back$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasAttackerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.attacker_name$field);
         }
         if(this.hasAttackerUin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.attacker_uin$field);
         }
         if(this.hasAttackerSvrId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.attacker_svr_id$field);
         }
         if(this.hasAttackerRoleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.attacker_role_id$field);
         }
         if(this.hasAttackerPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.attacker_power$field);
         }
         if(this.hasResult)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.result$field);
         }
         if(this.hasLostPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.lost_power$field);
         }
         if(this.hasLostMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.lost_money$field);
         }
         if(this.hasDestoryBaseMain)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.destory_base_main$field);
         }
         if(this.hasDestoryBaseRoshan)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.destory_base_roshan$field);
         }
         if(this.hasDestoryBaseMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.destory_base_money$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.attackerNinjaList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.attackerNinjaList[_loc2_]);
            _loc2_++;
         }
         if(this.hasRoleNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_UINT32(param1,this.role_ninja_id$field);
         }
         if(this.hasTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,14);
            WriteUtils.write$TYPE_UINT32(param1,this.time$field);
         }
         if(this.hasCanAttackBack)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,15);
            WriteUtils.write$TYPE_UINT32(param1,this.can_attack_back$field);
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
          * Error type: IndexOutOfBoundsException (Index: 15, Size: 15)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
