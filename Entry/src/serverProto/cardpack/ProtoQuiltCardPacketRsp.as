package serverProto.cardpack
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQuiltCardPacketRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CARD_PACKET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.card_packet","cardPacket",2 << 3 | WireType.LENGTH_DELIMITED,ProtoCardPacketInfo);
      
      public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.item_info","itemInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoCardPackItemInfo);
      
      public static const PAY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoQuiltCardPacketRsp.pay_info","payInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoCardPackPayInfo);
       
      public var ret:ProtoRetInfo;
      
      private var card_packet$field:serverProto.cardpack.ProtoCardPacketInfo;
      
      [ArrayElementType("serverProto.cardpack.ProtoCardPackItemInfo")]
      public var itemInfo:Array;
      
      private var pay_info$field:serverProto.cardpack.ProtoCardPackPayInfo;
      
      public function ProtoQuiltCardPacketRsp()
      {
         this.itemInfo = [];
         super();
      }
      
      public function clearCardPacket() : void
      {
         this.card_packet$field = null;
      }
      
      public function get hasCardPacket() : Boolean
      {
         return this.card_packet$field != null;
      }
      
      public function set cardPacket(param1:serverProto.cardpack.ProtoCardPacketInfo) : void
      {
         this.card_packet$field = param1;
      }
      
      public function get cardPacket() : serverProto.cardpack.ProtoCardPacketInfo
      {
         return this.card_packet$field;
      }
      
      public function clearPayInfo() : void
      {
         this.pay_info$field = null;
      }
      
      public function get hasPayInfo() : Boolean
      {
         return this.pay_info$field != null;
      }
      
      public function set payInfo(param1:serverProto.cardpack.ProtoCardPackPayInfo) : void
      {
         this.pay_info$field = param1;
      }
      
      public function get payInfo() : serverProto.cardpack.ProtoCardPackPayInfo
      {
         return this.pay_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasCardPacket)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.card_packet$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.itemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.itemInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasPayInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.pay_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
