package serverProto.npc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetTreasureMapRewardResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.npc.ProtoGetTreasureMapRewardResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NEED_CUSTOM_BATTLE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.npc.ProtoGetTreasureMapRewardResponse.need_custom_battle","needCustomBattle",3 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var need_custom_battle$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGetTreasureMapRewardResponse()
      {
         super();
      }
      
      public function clearNeedCustomBattle() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_custom_battle$field = new Boolean();
      }
      
      public function get hasNeedCustomBattle() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needCustomBattle(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_custom_battle$field = param1;
      }
      
      public function get needCustomBattle() : Boolean
      {
         return this.need_custom_battle$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasNeedCustomBattle)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.need_custom_battle$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
