package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRawFightWheelWarReq extends Message
   {
      
      public static const PLAYER_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRawFightWheelWarReq.player_list","playerList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoRawFightWheelWarPlayer);
      
      public static const WHEEL_WAR_NEED_PADDED:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoRawFightWheelWarReq.wheel_war_need_padded","wheelWarNeedPadded",3 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.fight.ProtoRawFightWheelWarPlayer")]
      public var playerList:Array;
      
      private var wheel_war_need_padded$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoRawFightWheelWarReq()
      {
         this.playerList = [];
         super();
      }
      
      public function clearWheelWarNeedPadded() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.wheel_war_need_padded$field = new Boolean();
      }
      
      public function get hasWheelWarNeedPadded() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set wheelWarNeedPadded(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.wheel_war_need_padded$field = param1;
      }
      
      public function get wheelWarNeedPadded() : Boolean
      {
         return this.wheel_war_need_padded$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.playerList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.playerList[_loc2_]);
            _loc2_++;
         }
         if(this.hasWheelWarNeedPadded)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.wheel_war_need_padded$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
