package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaMoodDetailInfo extends Message
   {
      
      public static const REFRESH_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.refresh_state","refreshState",1 << 3 | WireType.VARINT);
      
      public static const CURRENT_MOOD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.current_mood","currentMood",2 << 3 | WireType.VARINT);
      
      public static const REFRESH_MOOD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.refresh_mood","refreshMood",3 << 3 | WireType.VARINT);
      
      public static const FREE_REFRESH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.free_refresh","freeRefresh",4 << 3 | WireType.VARINT);
      
      public static const TOTAL_NOODLES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.total_noodles","totalNoodles",5 << 3 | WireType.VARINT);
      
      public static const NEED_MONEY_DIANQUAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.need_money_dianquan","needMoneyDianquan",6 << 3 | WireType.VARINT);
      
      public static const TOTAL_MONEY_DIANQUAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.total_money_dianquan","totalMoneyDianquan",7 << 3 | WireType.VARINT);
      
      public static const NEED_MONEY_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.need_money_yuanbao","needMoneyYuanbao",8 << 3 | WireType.VARINT);
      
      public static const TOTAL_MONEY_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoNinjaMoodDetailInfo.total_money_yuanbao","totalMoneyYuanbao",9 << 3 | WireType.VARINT);
       
      public var refreshState:uint;
      
      private var current_mood$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var refresh_mood$field:uint;
      
      private var free_refresh$field:uint;
      
      private var total_noodles$field:uint;
      
      private var need_money_dianquan$field:uint;
      
      private var total_money_dianquan$field:uint;
      
      private var need_money_yuanbao$field:uint;
      
      private var total_money_yuanbao$field:uint;
      
      public function ProtoNinjaMoodDetailInfo()
      {
         super();
      }
      
      public function clearCurrentMood() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_mood$field = new uint();
      }
      
      public function get hasCurrentMood() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentMood(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_mood$field = param1;
      }
      
      public function get currentMood() : uint
      {
         return this.current_mood$field;
      }
      
      public function clearRefreshMood() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.refresh_mood$field = new uint();
      }
      
      public function get hasRefreshMood() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set refreshMood(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.refresh_mood$field = param1;
      }
      
      public function get refreshMood() : uint
      {
         return this.refresh_mood$field;
      }
      
      public function clearFreeRefresh() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.free_refresh$field = new uint();
      }
      
      public function get hasFreeRefresh() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set freeRefresh(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.free_refresh$field = param1;
      }
      
      public function get freeRefresh() : uint
      {
         return this.free_refresh$field;
      }
      
      public function clearTotalNoodles() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.total_noodles$field = new uint();
      }
      
      public function get hasTotalNoodles() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set totalNoodles(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.total_noodles$field = param1;
      }
      
      public function get totalNoodles() : uint
      {
         return this.total_noodles$field;
      }
      
      public function clearNeedMoneyDianquan() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.need_money_dianquan$field = new uint();
      }
      
      public function get hasNeedMoneyDianquan() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set needMoneyDianquan(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.need_money_dianquan$field = param1;
      }
      
      public function get needMoneyDianquan() : uint
      {
         return this.need_money_dianquan$field;
      }
      
      public function clearTotalMoneyDianquan() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.total_money_dianquan$field = new uint();
      }
      
      public function get hasTotalMoneyDianquan() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set totalMoneyDianquan(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.total_money_dianquan$field = param1;
      }
      
      public function get totalMoneyDianquan() : uint
      {
         return this.total_money_dianquan$field;
      }
      
      public function clearNeedMoneyYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.need_money_yuanbao$field = new uint();
      }
      
      public function get hasNeedMoneyYuanbao() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set needMoneyYuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.need_money_yuanbao$field = param1;
      }
      
      public function get needMoneyYuanbao() : uint
      {
         return this.need_money_yuanbao$field;
      }
      
      public function clearTotalMoneyYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.total_money_yuanbao$field = new uint();
      }
      
      public function get hasTotalMoneyYuanbao() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set totalMoneyYuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.total_money_yuanbao$field = param1;
      }
      
      public function get totalMoneyYuanbao() : uint
      {
         return this.total_money_yuanbao$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.refreshState);
         if(this.hasCurrentMood)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.current_mood$field);
         }
         if(this.hasRefreshMood)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.refresh_mood$field);
         }
         if(this.hasFreeRefresh)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.free_refresh$field);
         }
         if(this.hasTotalNoodles)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.total_noodles$field);
         }
         if(this.hasNeedMoneyDianquan)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.need_money_dianquan$field);
         }
         if(this.hasTotalMoneyDianquan)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.total_money_dianquan$field);
         }
         if(this.hasNeedMoneyYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.need_money_yuanbao$field);
         }
         if(this.hasTotalMoneyYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.total_money_yuanbao$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
