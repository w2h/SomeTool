package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFightOverInfo extends Message
   {
      
      public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.player","player",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.team_id","teamId",2 << 3 | WireType.VARINT);
      
      public static const FIGHT_RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.fight_result","fightResult",3 << 3 | WireType.VARINT);
      
      public static const GOOD_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.good_award","goodAward",4 << 3 | WireType.LENGTH_DELIMITED,ProtoGoodsAward);
      
      public static const NINJA_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.ninja_award","ninjaAward",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaAward);
      
      public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.money","money",6 << 3 | WireType.VARINT);
      
      public static const BENEFIT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightOverInfo.benefit","benefit",7 << 3 | WireType.LENGTH_DELIMITED,ProtoFightMemberBenefit);
      
      public static const TEAM_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightOverInfo.team_type","teamType",8 << 3 | WireType.VARINT);
       
      public var player:ProtoPlayerKey;
      
      public var teamId:uint;
      
      public var fightResult:uint;
      
      [ArrayElementType("serverProto.fight.ProtoGoodsAward")]
      public var goodAward:Array;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaAward")]
      public var ninjaAward:Array;
      
      private var money$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.fight.ProtoFightMemberBenefit")]
      public var benefit:Array;
      
      public var teamType:uint;
      
      public function ProtoFightOverInfo()
      {
         this.goodAward = [];
         this.ninjaAward = [];
         this.benefit = [];
         super();
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.money$field = new uint();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set money(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.money$field = param1;
      }
      
      public function get money() : uint
      {
         return this.money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc5_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.player);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.teamId);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.fightResult);
         var _loc2_:uint = 0;
         while(_loc2_ < this.goodAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.goodAward[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.ninjaAward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaAward[_loc3_]);
            _loc3_++;
         }
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.money$field);
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.benefit.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.benefit[_loc4_]);
            _loc4_++;
         }
         WriteUtils.writeTag(param1,WireType.VARINT,8);
         WriteUtils.write$TYPE_UINT32(param1,this.teamType);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
