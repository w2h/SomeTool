package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetBattleRoyaleSchemaResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.status","status",2 << 3 | WireType.VARINT,ProtoBattleRoyaleTimeStatus);
      
      public static const PLAYER_STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.player_state","playerState",3 << 3 | WireType.VARINT,ProtoBattleRoyalePlayerState);
      
      public static const FIELD_STATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.field_state","fieldState",4 << 3 | WireType.VARINT,ProtoBattleRoyaleFieldCampState);
      
      public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.now","now",5 << 3 | WireType.VARINT);
      
      public static const SIGN_UP_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.sign_up_time","signUpTime",6 << 3 | WireType.VARINT);
      
      public static const NEXT_OPEN_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.next_open_time","nextOpenTime",7 << 3 | WireType.VARINT);
      
      public static const ENTER_END_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.enter_end_time","enterEndTime",8 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.activity_over_time","activityOverTime",9 << 3 | WireType.VARINT);
      
      public static const RECONNECT_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.reconnect_times","reconnectTimes",10 << 3 | WireType.VARINT);
      
      public static const RECONNECT_TOO_LATE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.reconnect_too_late","reconnectTooLate",11 << 3 | WireType.VARINT);
      
      public static const AUTO_POLL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.auto_poll","autoPoll",12 << 3 | WireType.VARINT);
      
      public static const IS_CROSS:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.battleRoyale.ProtoGetBattleRoyaleSchemaResp.is_cross","isCross",13 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      public var status:int;
      
      public var playerState:int;
      
      private var field_state$field:int;
      
      private var hasField$0:uint = 0;
      
      private var now$field:UInt64;
      
      private var sign_up_time$field:UInt64;
      
      private var next_open_time$field:UInt64;
      
      private var enter_end_time$field:UInt64;
      
      private var activity_over_time$field:UInt64;
      
      private var reconnect_times$field:int;
      
      private var reconnect_too_late$field:Boolean;
      
      private var auto_poll$field:Boolean;
      
      private var is_cross$field:Boolean;
      
      public function ProtoGetBattleRoyaleSchemaResp()
      {
         super();
      }
      
      public function clearFieldState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.field_state$field = new int();
      }
      
      public function get hasFieldState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fieldState(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.field_state$field = param1;
      }
      
      public function get fieldState() : int
      {
         return this.field_state$field;
      }
      
      public function clearNow() : void
      {
         this.now$field = null;
      }
      
      public function get hasNow() : Boolean
      {
         return this.now$field != null;
      }
      
      public function set now(param1:UInt64) : void
      {
         this.now$field = param1;
      }
      
      public function get now() : UInt64
      {
         return this.now$field;
      }
      
      public function clearSignUpTime() : void
      {
         this.sign_up_time$field = null;
      }
      
      public function get hasSignUpTime() : Boolean
      {
         return this.sign_up_time$field != null;
      }
      
      public function set signUpTime(param1:UInt64) : void
      {
         this.sign_up_time$field = param1;
      }
      
      public function get signUpTime() : UInt64
      {
         return this.sign_up_time$field;
      }
      
      public function clearNextOpenTime() : void
      {
         this.next_open_time$field = null;
      }
      
      public function get hasNextOpenTime() : Boolean
      {
         return this.next_open_time$field != null;
      }
      
      public function set nextOpenTime(param1:UInt64) : void
      {
         this.next_open_time$field = param1;
      }
      
      public function get nextOpenTime() : UInt64
      {
         return this.next_open_time$field;
      }
      
      public function clearEnterEndTime() : void
      {
         this.enter_end_time$field = null;
      }
      
      public function get hasEnterEndTime() : Boolean
      {
         return this.enter_end_time$field != null;
      }
      
      public function set enterEndTime(param1:UInt64) : void
      {
         this.enter_end_time$field = param1;
      }
      
      public function get enterEndTime() : UInt64
      {
         return this.enter_end_time$field;
      }
      
      public function clearActivityOverTime() : void
      {
         this.activity_over_time$field = null;
      }
      
      public function get hasActivityOverTime() : Boolean
      {
         return this.activity_over_time$field != null;
      }
      
      public function set activityOverTime(param1:UInt64) : void
      {
         this.activity_over_time$field = param1;
      }
      
      public function get activityOverTime() : UInt64
      {
         return this.activity_over_time$field;
      }
      
      public function clearReconnectTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.reconnect_times$field = new int();
      }
      
      public function get hasReconnectTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set reconnectTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.reconnect_times$field = param1;
      }
      
      public function get reconnectTimes() : int
      {
         return this.reconnect_times$field;
      }
      
      public function clearReconnectTooLate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.reconnect_too_late$field = new Boolean();
      }
      
      public function get hasReconnectTooLate() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set reconnectTooLate(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.reconnect_too_late$field = param1;
      }
      
      public function get reconnectTooLate() : Boolean
      {
         return this.reconnect_too_late$field;
      }
      
      public function clearAutoPoll() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.auto_poll$field = new Boolean();
      }
      
      public function get hasAutoPoll() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set autoPoll(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.auto_poll$field = param1;
      }
      
      public function get autoPoll() : Boolean
      {
         return this.auto_poll$field;
      }
      
      public function clearIsCross() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.is_cross$field = new Boolean();
      }
      
      public function get hasIsCross() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set isCross(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.is_cross$field = param1;
      }
      
      public function get isCross() : Boolean
      {
         return this.is_cross$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.status);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_ENUM(param1,this.playerState);
         if(this.hasFieldState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_ENUM(param1,this.field_state$field);
         }
         if(this.hasNow)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT64(param1,this.now$field);
         }
         if(this.hasSignUpTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT64(param1,this.sign_up_time$field);
         }
         if(this.hasNextOpenTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT64(param1,this.next_open_time$field);
         }
         if(this.hasEnterEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT64(param1,this.enter_end_time$field);
         }
         if(this.hasActivityOverTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT64(param1,this.activity_over_time$field);
         }
         if(this.hasReconnectTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_SINT32(param1,this.reconnect_times$field);
         }
         if(this.hasReconnectTooLate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_BOOL(param1,this.reconnect_too_late$field);
         }
         if(this.hasAutoPoll)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_poll$field);
         }
         if(this.hasIsCross)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,13);
            WriteUtils.write$TYPE_BOOL(param1,this.is_cross$field);
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
          * Error type: IndexOutOfBoundsException (Index: 13, Size: 13)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
