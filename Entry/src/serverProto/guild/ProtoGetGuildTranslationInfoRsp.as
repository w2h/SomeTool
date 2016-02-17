package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetGuildTranslationInfoRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetGuildTranslationInfoRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TRAN_INFOS_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetGuildTranslationInfoRsp.tran_infos_list","tranInfosList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildTranslationInfoList);
      
      public static const REST_TRANS_SEC:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGetGuildTranslationInfoRsp.rest_trans_sec","restTransSec",3 << 3 | WireType.VARINT);
      
      public static const REST_SELL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGetGuildTranslationInfoRsp.rest_sell_times","restSellTimes",4 << 3 | WireType.VARINT);
      
      public static const OWN_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetGuildTranslationInfoRsp.own_item","ownItem",5 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildTransItemInfo);
      
      public static const TRANS_ITEM_ID:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGetGuildTranslationInfoRsp.trans_item_id","transItemId",6 << 3 | WireType.VARINT);
      
      public static const REST_BUY_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGetGuildTranslationInfoRsp.rest_buy_times","restBuyTimes",7 << 3 | WireType.VARINT);
      
      public static const REST_EXCHANGE_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGetGuildTranslationInfoRsp.rest_exchange_times","restExchangeTimes",8 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var tran_infos_list$field:serverProto.guild.ProtoGuildTranslationInfoList;
      
      private var rest_trans_sec$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var rest_sell_times$field:uint;
      
      [ArrayElementType("serverProto.guild.ProtoGuildTransItemInfo")]
      public var ownItem:Array;
      
      [ArrayElementType("uint")]
      public var transItemId:Array;
      
      private var rest_buy_times$field:uint;
      
      private var rest_exchange_times$field:uint;
      
      public function ProtoGetGuildTranslationInfoRsp()
      {
         this.ownItem = [];
         this.transItemId = [];
         super();
      }
      
      public function clearTranInfosList() : void
      {
         this.tran_infos_list$field = null;
      }
      
      public function get hasTranInfosList() : Boolean
      {
         return this.tran_infos_list$field != null;
      }
      
      public function set tranInfosList(param1:serverProto.guild.ProtoGuildTranslationInfoList) : void
      {
         this.tran_infos_list$field = param1;
      }
      
      public function get tranInfosList() : serverProto.guild.ProtoGuildTranslationInfoList
      {
         return this.tran_infos_list$field;
      }
      
      public function clearRestTransSec() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rest_trans_sec$field = new uint();
      }
      
      public function get hasRestTransSec() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set restTransSec(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rest_trans_sec$field = param1;
      }
      
      public function get restTransSec() : uint
      {
         return this.rest_trans_sec$field;
      }
      
      public function clearRestSellTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.rest_sell_times$field = new uint();
      }
      
      public function get hasRestSellTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set restSellTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.rest_sell_times$field = param1;
      }
      
      public function get restSellTimes() : uint
      {
         return this.rest_sell_times$field;
      }
      
      public function clearRestBuyTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.rest_buy_times$field = new uint();
      }
      
      public function get hasRestBuyTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set restBuyTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.rest_buy_times$field = param1;
      }
      
      public function get restBuyTimes() : uint
      {
         return this.rest_buy_times$field;
      }
      
      public function clearRestExchangeTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.rest_exchange_times$field = new uint();
      }
      
      public function get hasRestExchangeTimes() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set restExchangeTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.rest_exchange_times$field = param1;
      }
      
      public function get restExchangeTimes() : uint
      {
         return this.rest_exchange_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasTranInfosList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tran_infos_list$field);
         }
         if(this.hasRestTransSec)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_trans_sec$field);
         }
         if(this.hasRestSellTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_sell_times$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ownItem.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ownItem[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.transItemId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.transItemId[_loc3_]);
            _loc3_++;
         }
         if(this.hasRestBuyTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_buy_times$field);
         }
         if(this.hasRestExchangeTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_exchange_times$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
