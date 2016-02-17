package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBaseIncome extends Message
   {
      
      public static const MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.money","money",1 << 3 | WireType.VARINT);
      
      public static const COMMON_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.common_exp","commonExp",2 << 3 | WireType.VARINT);
      
      public static const ROLE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.role_exp","roleExp",3 << 3 | WireType.VARINT);
      
      public static const GOLD_BOX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.gold_box_num","goldBoxNum",4 << 3 | WireType.VARINT);
      
      public static const SILVER_BOX_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.silver_box_num","silverBoxNum",5 << 3 | WireType.VARINT);
      
      public static const COLLECION_EVENT:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.collecion_event","collecionEvent",6 << 3 | WireType.LENGTH_DELIMITED,ProtoCollectionEventInfo);
      
      public static const NINJA_EXP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.ninja_exp","ninjaExp",7 << 3 | WireType.LENGTH_DELIMITED,ProtoDungeonFinishNinjaExpInfo);
      
      public static const BOX_DETAIL_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.box_detail_list","boxDetailList",8 << 3 | WireType.LENGTH_DELIMITED,ProtoBoxDetail);
      
      public static const TEAM_DUNGEON_CARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.team_dungeon_card_list","teamDungeonCardList",9 << 3 | WireType.LENGTH_DELIMITED,ProtoDungeonCardInfo);
      
      public static const DEATH_NINJA_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBaseIncome.death_ninja_count","deathNinjaCount",10 << 3 | WireType.VARINT);
      
      public static const SPECIAL_DUNGEON_REWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBaseIncome.special_dungeon_reward_list","specialDungeonRewardList",11 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      private var money$field:int;
      
      private var hasField$0:uint = 0;
      
      private var common_exp$field:int;
      
      private var role_exp$field:int;
      
      private var gold_box_num$field:int;
      
      private var silver_box_num$field:int;
      
      [ArrayElementType("serverProto.dungeon.ProtoCollectionEventInfo")]
      public var collecionEvent:Array;
      
      [ArrayElementType("serverProto.dungeon.ProtoDungeonFinishNinjaExpInfo")]
      public var ninjaExp:Array;
      
      [ArrayElementType("serverProto.dungeon.ProtoBoxDetail")]
      public var boxDetailList:Array;
      
      [ArrayElementType("serverProto.dungeon.ProtoDungeonCardInfo")]
      public var teamDungeonCardList:Array;
      
      private var death_ninja_count$field:int;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var specialDungeonRewardList:Array;
      
      public function ProtoBaseIncome()
      {
         this.collecionEvent = [];
         this.ninjaExp = [];
         this.boxDetailList = [];
         this.teamDungeonCardList = [];
         this.specialDungeonRewardList = [];
         super();
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.money$field = new int();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set money(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.money$field = param1;
      }
      
      public function get money() : int
      {
         return this.money$field;
      }
      
      public function clearCommonExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.common_exp$field = new int();
      }
      
      public function get hasCommonExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set commonExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.common_exp$field = param1;
      }
      
      public function get commonExp() : int
      {
         return this.common_exp$field;
      }
      
      public function clearRoleExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.role_exp$field = new int();
      }
      
      public function get hasRoleExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set roleExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.role_exp$field = param1;
      }
      
      public function get roleExp() : int
      {
         return this.role_exp$field;
      }
      
      public function clearGoldBoxNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.gold_box_num$field = new int();
      }
      
      public function get hasGoldBoxNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set goldBoxNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.gold_box_num$field = param1;
      }
      
      public function get goldBoxNum() : int
      {
         return this.gold_box_num$field;
      }
      
      public function clearSilverBoxNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.silver_box_num$field = new int();
      }
      
      public function get hasSilverBoxNum() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set silverBoxNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.silver_box_num$field = param1;
      }
      
      public function get silverBoxNum() : int
      {
         return this.silver_box_num$field;
      }
      
      public function clearDeathNinjaCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.death_ninja_count$field = new int();
      }
      
      public function get hasDeathNinjaCount() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set deathNinjaCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.death_ninja_count$field = param1;
      }
      
      public function get deathNinjaCount() : int
      {
         return this.death_ninja_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc7_:* = undefined;
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.money$field);
         }
         if(this.hasCommonExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.common_exp$field);
         }
         if(this.hasRoleExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.role_exp$field);
         }
         if(this.hasGoldBoxNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.gold_box_num$field);
         }
         if(this.hasSilverBoxNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.silver_box_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.collecionEvent.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.collecionEvent[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.ninjaExp.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaExp[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.boxDetailList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.boxDetailList[_loc4_]);
            _loc4_++;
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.teamDungeonCardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.teamDungeonCardList[_loc5_]);
            _loc5_++;
         }
         if(this.hasDeathNinjaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.death_ninja_count$field);
         }
         var _loc6_:uint = 0;
         while(_loc6_ < this.specialDungeonRewardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.specialDungeonRewardList[_loc6_]);
            _loc6_++;
         }
         for(_loc7_ in this)
         {
            super.writeUnknown(param1,_loc7_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
