package serverProto.worldBoss
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoActivityOverNotify extends Message
   {
      
      public static const WORLD_BOSS_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.world_boss_id","worldBossId",1 << 3 | WireType.VARINT);
      
      public static const BE_KILLED:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.be_killed","beKilled",2 << 3 | WireType.VARINT);
      
      public static const SELF_RANK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.self_rank","selfRank",3 << 3 | WireType.LENGTH_DELIMITED,ProtoRankPlayerList);
      
      public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.copper","copper",4 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.exp","exp",5 << 3 | WireType.VARINT);
      
      public static const COUPON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.coupon","coupon",6 << 3 | WireType.VARINT);
      
      public static const JADE_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.jade_reward","jadeReward",7 << 3 | WireType.LENGTH_DELIMITED,ProtoItemReward);
      
      public static const PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.player_list","playerList",8 << 3 | WireType.LENGTH_DELIMITED,ProtoRankPlayerList);
      
      public static const KILLER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.killer","killer",9 << 3 | WireType.LENGTH_DELIMITED,ProtoRankPlayerList);
      
      public static const FAINTER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.worldBoss.ProtoActivityOverNotify.fainter","fainter",10 << 3 | WireType.LENGTH_DELIMITED,ProtoRankPlayerList);
      
      public static const COPPER_RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.copper_rate","copperRate",11 << 3 | WireType.VARINT);
      
      public static const EXP_RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.worldBoss.ProtoActivityOverNotify.exp_rate","expRate",12 << 3 | WireType.VARINT);
       
      public var worldBossId:int;
      
      public var beKilled:int;
      
      public var selfRank:serverProto.worldBoss.ProtoRankPlayerList;
      
      private var copper$field:int;
      
      private var hasField$0:uint = 0;
      
      private var exp$field:int;
      
      private var coupon$field:int;
      
      [ArrayElementType("serverProto.worldBoss.ProtoItemReward")]
      public var jadeReward:Array;
      
      [ArrayElementType("serverProto.worldBoss.ProtoRankPlayerList")]
      public var playerList:Array;
      
      private var killer$field:serverProto.worldBoss.ProtoRankPlayerList;
      
      private var fainter$field:serverProto.worldBoss.ProtoRankPlayerList;
      
      private var copper_rate$field:int;
      
      private var exp_rate$field:int;
      
      public function ProtoActivityOverNotify()
      {
         this.jadeReward = [];
         this.playerList = [];
         super();
      }
      
      public function clearCopper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.copper$field = new int();
      }
      
      public function get hasCopper() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set copper(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.copper$field = param1;
      }
      
      public function get copper() : int
      {
         return this.copper$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.exp$field = new int();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set exp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.exp$field = param1;
      }
      
      public function get exp() : int
      {
         return this.exp$field;
      }
      
      public function clearCoupon() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.coupon$field = new int();
      }
      
      public function get hasCoupon() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set coupon(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.coupon$field = param1;
      }
      
      public function get coupon() : int
      {
         return this.coupon$field;
      }
      
      public function clearKiller() : void
      {
         this.killer$field = null;
      }
      
      public function get hasKiller() : Boolean
      {
         return this.killer$field != null;
      }
      
      public function set killer(param1:serverProto.worldBoss.ProtoRankPlayerList) : void
      {
         this.killer$field = param1;
      }
      
      public function get killer() : serverProto.worldBoss.ProtoRankPlayerList
      {
         return this.killer$field;
      }
      
      public function clearFainter() : void
      {
         this.fainter$field = null;
      }
      
      public function get hasFainter() : Boolean
      {
         return this.fainter$field != null;
      }
      
      public function set fainter(param1:serverProto.worldBoss.ProtoRankPlayerList) : void
      {
         this.fainter$field = param1;
      }
      
      public function get fainter() : serverProto.worldBoss.ProtoRankPlayerList
      {
         return this.fainter$field;
      }
      
      public function clearCopperRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.copper_rate$field = new int();
      }
      
      public function get hasCopperRate() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set copperRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.copper_rate$field = param1;
      }
      
      public function get copperRate() : int
      {
         return this.copper_rate$field;
      }
      
      public function clearExpRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.exp_rate$field = new int();
      }
      
      public function get hasExpRate() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set expRate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.exp_rate$field = param1;
      }
      
      public function get expRate() : int
      {
         return this.exp_rate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.worldBossId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.beKilled);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
         WriteUtils.write$TYPE_MESSAGE(param1,this.selfRank);
         if(this.hasCopper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.copper$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.exp$field);
         }
         if(this.hasCoupon)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.coupon$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.jadeReward.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.jadeReward[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.playerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerList[_loc3_]);
            _loc3_++;
         }
         if(this.hasKiller)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.killer$field);
         }
         if(this.hasFainter)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fainter$field);
         }
         if(this.hasCopperRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_SINT32(param1,this.copper_rate$field);
         }
         if(this.hasExpRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_SINT32(param1,this.exp_rate$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
