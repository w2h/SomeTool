package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.Int64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUniFuzBdkWar extends Message
   {
      
      public static const GROUP_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.group_idx","groupIdx",1 << 3 | WireType.VARINT);
      
      public static const WAR_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.war_idx","warIdx",2 << 3 | WireType.VARINT);
      
      public static const LEFT_PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.left_player","leftPlayer",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkWarPlayer);
      
      public static const LEFT_WIN_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.left_win_count","leftWinCount",4 << 3 | WireType.VARINT);
      
      public static const RIGHT_PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.right_player","rightPlayer",5 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkWarPlayer);
      
      public static const RIGHT_WIN_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.right_win_count","rightWinCount",6 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.state","state",7 << 3 | WireType.VARINT,UniFuzBdkWarState);
      
      public static const START_TIME:FieldDescriptor$TYPE_SINT64 = new FieldDescriptor$TYPE_SINT64("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.start_time","startTime",8 << 3 | WireType.VARINT);
      
      public static const OUTLET_SIDE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.outlet_side","outletSide",9 << 3 | WireType.VARINT);
      
      public static const IS_FIGHTING:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.is_fighting","isFighting",10 << 3 | WireType.VARINT);
      
      public static const CAN_BET:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWar.can_bet","canBet",11 << 3 | WireType.VARINT);
       
      public var groupIdx:int;
      
      public var warIdx:int;
      
      private var left_player$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer;
      
      private var left_win_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var right_player$field:serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer;
      
      private var right_win_count$field:int;
      
      private var state$field:int;
      
      private var start_time$field:Int64;
      
      private var outlet_side$field:int;
      
      private var is_fighting$field:Boolean;
      
      private var can_bet$field:Boolean;
      
      public function ProtoUniFuzBdkWar()
      {
         super();
      }
      
      public function clearLeftPlayer() : void
      {
         this.left_player$field = null;
      }
      
      public function get hasLeftPlayer() : Boolean
      {
         return this.left_player$field != null;
      }
      
      public function set leftPlayer(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer) : void
      {
         this.left_player$field = param1;
      }
      
      public function get leftPlayer() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer
      {
         return this.left_player$field;
      }
      
      public function clearLeftWinCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.left_win_count$field = new int();
      }
      
      public function get hasLeftWinCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set leftWinCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.left_win_count$field = param1;
      }
      
      public function get leftWinCount() : int
      {
         return this.left_win_count$field;
      }
      
      public function clearRightPlayer() : void
      {
         this.right_player$field = null;
      }
      
      public function get hasRightPlayer() : Boolean
      {
         return this.right_player$field != null;
      }
      
      public function set rightPlayer(param1:serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer) : void
      {
         this.right_player$field = param1;
      }
      
      public function get rightPlayer() : serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarPlayer
      {
         return this.right_player$field;
      }
      
      public function clearRightWinCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.right_win_count$field = new int();
      }
      
      public function get hasRightWinCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set rightWinCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.right_win_count$field = param1;
      }
      
      public function get rightWinCount() : int
      {
         return this.right_win_count$field;
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearStartTime() : void
      {
         this.start_time$field = null;
      }
      
      public function get hasStartTime() : Boolean
      {
         return this.start_time$field != null;
      }
      
      public function set startTime(param1:Int64) : void
      {
         this.start_time$field = param1;
      }
      
      public function get startTime() : Int64
      {
         return this.start_time$field;
      }
      
      public function clearOutletSide() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.outlet_side$field = new int();
      }
      
      public function get hasOutletSide() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set outletSide(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.outlet_side$field = param1;
      }
      
      public function get outletSide() : int
      {
         return this.outlet_side$field;
      }
      
      public function clearIsFighting() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.is_fighting$field = new Boolean();
      }
      
      public function get hasIsFighting() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set isFighting(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.is_fighting$field = param1;
      }
      
      public function get isFighting() : Boolean
      {
         return this.is_fighting$field;
      }
      
      public function clearCanBet() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.can_bet$field = new Boolean();
      }
      
      public function get hasCanBet() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set canBet(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.can_bet$field = param1;
      }
      
      public function get canBet() : Boolean
      {
         return this.can_bet$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.groupIdx);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.warIdx);
         if(this.hasLeftPlayer)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.left_player$field);
         }
         if(this.hasLeftWinCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.left_win_count$field);
         }
         if(this.hasRightPlayer)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.right_player$field);
         }
         if(this.hasRightWinCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.right_win_count$field);
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_ENUM(param1,this.state$field);
         }
         if(this.hasStartTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT64(param1,this.start_time$field);
         }
         if(this.hasOutletSide)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.outlet_side$field);
         }
         if(this.hasIsFighting)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_BOOL(param1,this.is_fighting$field);
         }
         if(this.hasCanBet)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_BOOL(param1,this.can_bet$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
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
