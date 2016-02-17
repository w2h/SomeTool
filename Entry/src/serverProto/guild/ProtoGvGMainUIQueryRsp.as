package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGMainUIQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGMainUIQueryRsp.status","status",2 << 3 | WireType.VARINT,ProtoGvGBattleStatus);
      
      public static const ROUND:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGMainUIQueryRsp.round","round",3 << 3 | WireType.VARINT,ProtoGvGBattleRound);
      
      public static const FENPEI_PACKAGE_BOX:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.fenpei_package_box","fenpeiPackageBox",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const FENPEI_RECORD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.fenpei_record","fenpeiRecord",5 << 3 | WireType.LENGTH_DELIMITED,ProtoFenpeiRecord);
      
      public static const PRIMARY_BATTLE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.primary_battle_end_time","primaryBattleEndTime",6 << 3 | WireType.VARINT);
      
      public static const PRIMARY_BATTLE_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.primary_battle_rank","primaryBattleRank",7 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
      
      public static const FINAL_BATTLE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.final_battle_end_time","finalBattleEndTime",8 << 3 | WireType.VARINT);
      
      public static const FINAL_BATTLE_RESULT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMainUIQueryRsp.final_battle_result","finalBattleResult",9 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGFinalResult);
      
      public static const SIGN_UP_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.sign_up_flag","signUpFlag",10 << 3 | WireType.VARINT);
      
      public static const CAN_ENTER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.can_enter","canEnter",11 << 3 | WireType.VARINT);
      
      public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMainUIQueryRsp.remain_time","remainTime",12 << 3 | WireType.VARINT);
       
      private var ret$field:ProtoRetInfo;
      
      private var status$field:int;
      
      private var hasField$0:uint = 0;
      
      private var round$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var fenpeiPackageBox:Array;
      
      [ArrayElementType("serverProto.guild.ProtoFenpeiRecord")]
      public var fenpeiRecord:Array;
      
      private var primary_battle_end_time$field:uint;
      
      [ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
      public var primaryBattleRank:Array;
      
      private var final_battle_end_time$field:uint;
      
      private var final_battle_result$field:serverProto.guild.ProtoGvGFinalResult;
      
      private var sign_up_flag$field:uint;
      
      private var can_enter$field:uint;
      
      private var remain_time$field:uint;
      
      public function ProtoGvGMainUIQueryRsp()
      {
         this.fenpeiPackageBox = [];
         this.fenpeiRecord = [];
         this.primaryBattleRank = [];
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
      
      public function clearPrimaryBattleEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.primary_battle_end_time$field = new uint();
      }
      
      public function get hasPrimaryBattleEndTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set primaryBattleEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.primary_battle_end_time$field = param1;
      }
      
      public function get primaryBattleEndTime() : uint
      {
         return this.primary_battle_end_time$field;
      }
      
      public function clearFinalBattleEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.final_battle_end_time$field = new uint();
      }
      
      public function get hasFinalBattleEndTime() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set finalBattleEndTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.final_battle_end_time$field = param1;
      }
      
      public function get finalBattleEndTime() : uint
      {
         return this.final_battle_end_time$field;
      }
      
      public function clearFinalBattleResult() : void
      {
         this.final_battle_result$field = null;
      }
      
      public function get hasFinalBattleResult() : Boolean
      {
         return this.final_battle_result$field != null;
      }
      
      public function set finalBattleResult(param1:serverProto.guild.ProtoGvGFinalResult) : void
      {
         this.final_battle_result$field = param1;
      }
      
      public function get finalBattleResult() : serverProto.guild.ProtoGvGFinalResult
      {
         return this.final_battle_result$field;
      }
      
      public function clearSignUpFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.sign_up_flag$field = new uint();
      }
      
      public function get hasSignUpFlag() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set signUpFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.sign_up_flag$field = param1;
      }
      
      public function get signUpFlag() : uint
      {
         return this.sign_up_flag$field;
      }
      
      public function clearCanEnter() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.can_enter$field = new uint();
      }
      
      public function get hasCanEnter() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set canEnter(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.can_enter$field = param1;
      }
      
      public function get canEnter() : uint
      {
         return this.can_enter$field;
      }
      
      public function clearRemainTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.remain_time$field = new uint();
      }
      
      public function get hasRemainTime() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set remainTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.remain_time$field = param1;
      }
      
      public function get remainTime() : uint
      {
         return this.remain_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.status$field);
         }
         if(this.hasRound)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.round$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.fenpeiPackageBox.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fenpeiPackageBox[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.fenpeiRecord.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fenpeiRecord[_loc3_]);
            _loc3_++;
         }
         if(this.hasPrimaryBattleEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.primary_battle_end_time$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.primaryBattleRank.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.primaryBattleRank[_loc4_]);
            _loc4_++;
         }
         if(this.hasFinalBattleEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.final_battle_end_time$field);
         }
         if(this.hasFinalBattleResult)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.final_battle_result$field);
         }
         if(this.hasSignUpFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.sign_up_flag$field);
         }
         if(this.hasCanEnter)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_UINT32(param1,this.can_enter$field);
         }
         if(this.hasRemainTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_time$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
