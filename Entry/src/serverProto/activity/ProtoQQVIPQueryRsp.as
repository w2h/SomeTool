package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQQVIPQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQQVIPQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const DAILY_LEVEL_AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQQVIPQueryRsp.daily_level_awards","dailyLevelAwards",2 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const DAILY_EXTRA_AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQQVIPQueryRsp.daily_extra_awards","dailyExtraAwards",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const FRESHMAN_ONCE_AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQQVIPQueryRsp.freshman_once_award","freshmanOnceAward",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const UPGRADE_AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQQVIPQueryRsp.upgrade_awards","upgradeAwards",5 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const AWARD_LEVELS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQQVIPQueryRsp.award_levels","awardLevels",6 << 3 | WireType.VARINT);
      
      public static const SUPERQQ_AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQQVIPQueryRsp.superqq_award","superqqAward",7 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var ret$field:ProtoRetInfo;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var dailyLevelAwards:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var dailyExtraAwards:Array;
      
      private var freshman_once_award$field:serverProto.activity.ProtoAwardPackageBox;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var upgradeAwards:Array;
      
      [ArrayElementType("uint")]
      public var awardLevels:Array;
      
      private var superqq_award$field:serverProto.activity.ProtoAwardPackageBox;
      
      public function ProtoQQVIPQueryRsp()
      {
         this.dailyLevelAwards = [];
         this.dailyExtraAwards = [];
         this.upgradeAwards = [];
         this.awardLevels = [];
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
      
      public function clearFreshmanOnceAward() : void
      {
         this.freshman_once_award$field = null;
      }
      
      public function get hasFreshmanOnceAward() : Boolean
      {
         return this.freshman_once_award$field != null;
      }
      
      public function set freshmanOnceAward(param1:serverProto.activity.ProtoAwardPackageBox) : void
      {
         this.freshman_once_award$field = param1;
      }
      
      public function get freshmanOnceAward() : serverProto.activity.ProtoAwardPackageBox
      {
         return this.freshman_once_award$field;
      }
      
      public function clearSuperqqAward() : void
      {
         this.superqq_award$field = null;
      }
      
      public function get hasSuperqqAward() : Boolean
      {
         return this.superqq_award$field != null;
      }
      
      public function set superqqAward(param1:serverProto.activity.ProtoAwardPackageBox) : void
      {
         this.superqq_award$field = param1;
      }
      
      public function get superqqAward() : serverProto.activity.ProtoAwardPackageBox
      {
         return this.superqq_award$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc6_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.dailyLevelAwards.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dailyLevelAwards[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.dailyExtraAwards.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dailyExtraAwards[_loc3_]);
            _loc3_++;
         }
         if(this.hasFreshmanOnceAward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.freshman_once_award$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.upgradeAwards.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.upgradeAwards[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.awardLevels.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.awardLevels[_loc5_]);
            _loc5_++;
         }
         if(this.hasSuperqqAward)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.superqq_award$field);
         }
         for(_loc6_ in this)
         {
            super.writeUnknown(param1,_loc6_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
