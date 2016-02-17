package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRawFightWheelWarPlayer extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRawFightWheelWarPlayer.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const SIDE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoRawFightWheelWarPlayer.side","side",2 << 3 | WireType.VARINT);
      
      public static const POS_IN_SIDE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoRawFightWheelWarPlayer.pos_in_side","posInSide",3 << 3 | WireType.VARINT);
      
      public static const SWITCH_TO_FIGHT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoRawFightWheelWarPlayer.switch_to_fight","switchToFight",4 << 3 | WireType.VARINT);
       
      public var playerId:ProtoPlayerKey;
      
      public var side:int;
      
      public var posInSide:int;
      
      private var switch_to_fight$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoRawFightWheelWarPlayer()
      {
         super();
      }
      
      public function clearSwitchToFight() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.switch_to_fight$field = new int();
      }
      
      public function get hasSwitchToFight() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set switchToFight(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.switch_to_fight$field = param1;
      }
      
      public function get switchToFight() : int
      {
         return this.switch_to_fight$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.playerId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.side);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_SINT32(param1,this.posInSide);
         if(this.hasSwitchToFight)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.switch_to_fight$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
