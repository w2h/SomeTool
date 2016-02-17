package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWatchFightReadyResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightReadyResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightReadyResponse.action","action",2 << 3 | WireType.LENGTH_DELIMITED,ProtoMetaAction);
      
      public static const NEED_LOAD_RES_PLAYER_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoWatchFightReadyResponse.need_load_res_player_list","needLoadResPlayerList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAllNeedLoadResPlayerList);
      
      public static const ENCHANTMENT_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoWatchFightReadyResponse.enchantment_id","enchantmentId",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var action$field:serverProto.fight.ProtoMetaAction;
      
      private var need_load_res_player_list$field:serverProto.fight.ProtoAllNeedLoadResPlayerList;
      
      private var enchantment_id$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoWatchFightReadyResponse()
      {
         super();
      }
      
      public function clearAction() : void
      {
         this.action$field = null;
      }
      
      public function get hasAction() : Boolean
      {
         return this.action$field != null;
      }
      
      public function set action(param1:serverProto.fight.ProtoMetaAction) : void
      {
         this.action$field = param1;
      }
      
      public function get action() : serverProto.fight.ProtoMetaAction
      {
         return this.action$field;
      }
      
      public function clearNeedLoadResPlayerList() : void
      {
         this.need_load_res_player_list$field = null;
      }
      
      public function get hasNeedLoadResPlayerList() : Boolean
      {
         return this.need_load_res_player_list$field != null;
      }
      
      public function set needLoadResPlayerList(param1:serverProto.fight.ProtoAllNeedLoadResPlayerList) : void
      {
         this.need_load_res_player_list$field = param1;
      }
      
      public function get needLoadResPlayerList() : serverProto.fight.ProtoAllNeedLoadResPlayerList
      {
         return this.need_load_res_player_list$field;
      }
      
      public function clearEnchantmentId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.enchantment_id$field = new int();
      }
      
      public function get hasEnchantmentId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set enchantmentId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.enchantment_id$field = param1;
      }
      
      public function get enchantmentId() : int
      {
         return this.enchantment_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasAction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.action$field);
         }
         if(this.hasNeedLoadResPlayerList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.need_load_res_player_list$field);
         }
         if(this.hasEnchantmentId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.enchantment_id$field);
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
