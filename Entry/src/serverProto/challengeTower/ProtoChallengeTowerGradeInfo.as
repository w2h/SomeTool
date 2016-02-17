package serverProto.challengeTower
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChallengeTowerGradeInfo extends Message
   {
      
      public static const GRADE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.grade","grade",1 << 3 | WireType.VARINT);
      
      public static const GRADE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.grade_id","gradeId",2 << 3 | WireType.VARINT);
      
      public static const UNLOCK_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.unlock_flag","unlockFlag",3 << 3 | WireType.VARINT);
      
      public static const BATTLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.battle_id","battleId",4 << 3 | WireType.VARINT);
      
      public static const NEXT_GRADE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.next_grade_id","nextGradeId",5 << 3 | WireType.VARINT);
      
      public static const FUTURE_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.future_award","futureAward",6 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const GRADE_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.grade_award","gradeAward",7 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.money","money",8 << 3 | WireType.VARINT);
      
      public static const POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.power","power",9 << 3 | WireType.VARINT);
      
      public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.challengeTower.ProtoChallengeTowerGradeInfo.msg","msg",10 << 3 | WireType.LENGTH_DELIMITED);
       
      private var grade$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var grade_id$field:uint;
      
      private var unlock_flag$field:uint;
      
      private var battle_id$field:uint;
      
      private var next_grade_id$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var futureAward:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var gradeAward:Array;
      
      private var money$field:uint;
      
      private var power$field:uint;
      
      private var msg$field:String;
      
      public function ProtoChallengeTowerGradeInfo()
      {
         this.futureAward = [];
         this.gradeAward = [];
         super();
      }
      
      public function clearGrade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.grade$field = new uint();
      }
      
      public function get hasGrade() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set grade(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.grade$field = param1;
      }
      
      public function get grade() : uint
      {
         return this.grade$field;
      }
      
      public function clearGradeId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.grade_id$field = new uint();
      }
      
      public function get hasGradeId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set gradeId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.grade_id$field = param1;
      }
      
      public function get gradeId() : uint
      {
         return this.grade_id$field;
      }
      
      public function clearUnlockFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.unlock_flag$field = new uint();
      }
      
      public function get hasUnlockFlag() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set unlockFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.unlock_flag$field = param1;
      }
      
      public function get unlockFlag() : uint
      {
         return this.unlock_flag$field;
      }
      
      public function clearBattleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.battle_id$field = new uint();
      }
      
      public function get hasBattleId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set battleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.battle_id$field = param1;
      }
      
      public function get battleId() : uint
      {
         return this.battle_id$field;
      }
      
      public function clearNextGradeId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.next_grade_id$field = new uint();
      }
      
      public function get hasNextGradeId() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set nextGradeId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.next_grade_id$field = param1;
      }
      
      public function get nextGradeId() : uint
      {
         return this.next_grade_id$field;
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.money$field = new uint();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set money(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.money$field = param1;
      }
      
      public function get money() : uint
      {
         return this.money$field;
      }
      
      public function clearPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.power$field = new uint();
      }
      
      public function get hasPower() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set power(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.power$field = param1;
      }
      
      public function get power() : uint
      {
         return this.power$field;
      }
      
      public function clearMsg() : void
      {
         this.msg$field = null;
      }
      
      public function get hasMsg() : Boolean
      {
         return this.msg$field != null;
      }
      
      public function set msg(param1:String) : void
      {
         this.msg$field = param1;
      }
      
      public function get msg() : String
      {
         return this.msg$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasGrade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.grade$field);
         }
         if(this.hasGradeId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.grade_id$field);
         }
         if(this.hasUnlockFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.unlock_flag$field);
         }
         if(this.hasBattleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.battle_id$field);
         }
         if(this.hasNextGradeId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.next_grade_id$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.futureAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.futureAward[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.gradeAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.gradeAward[_loc3_]);
            _loc3_++;
         }
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.money$field);
         }
         if(this.hasPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.power$field);
         }
         if(this.hasMsg)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_STRING(param1,this.msg$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
