package serverProto.randStore
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRandStoreInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.type","type",1 << 3 | WireType.VARINT);
      
      public static const STORE_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.store_money","storeMoney",2 << 3 | WireType.VARINT);
      
      public static const FRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.fresh_time","freshTime",3 << 3 | WireType.VARINT);
      
      public static const VIP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.vip_level","vipLevel",4 << 3 | WireType.VARINT);
      
      public static const FRESH_GOLD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.fresh_gold","freshGold",5 << 3 | WireType.VARINT);
      
      public static const FRESH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.fresh_times","freshTimes",6 << 3 | WireType.VARINT);
      
      public static const DAY_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.day_flag","dayFlag",7 << 3 | WireType.VARINT);
      
      public static const NEXT_FRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.next_fresh_time","nextFreshTime",8 << 3 | WireType.VARINT);
      
      public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoRandStoreInfo.item_info","itemInfo",9 << 3 | WireType.LENGTH_DELIMITED,ProtoRandStoreItemInfo);
       
      public var type:uint;
      
      public var storeMoney:uint;
      
      public var freshTime:uint;
      
      public var vipLevel:uint;
      
      public var freshGold:uint;
      
      public var freshTimes:uint;
      
      public var dayFlag:uint;
      
      public var nextFreshTime:uint;
      
      [ArrayElementType("serverProto.randStore.ProtoRandStoreItemInfo")]
      public var itemInfo:Array;
      
      public function ProtoRandStoreInfo()
      {
         this.itemInfo = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.type);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.storeMoney);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.freshTime);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.vipLevel);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_UINT32(param1,this.freshGold);
         WriteUtils.writeTag(param1,WireType.VARINT,6);
         WriteUtils.write$TYPE_UINT32(param1,this.freshTimes);
         WriteUtils.writeTag(param1,WireType.VARINT,7);
         WriteUtils.write$TYPE_UINT32(param1,this.dayFlag);
         WriteUtils.writeTag(param1,WireType.VARINT,8);
         WriteUtils.write$TYPE_UINT32(param1,this.nextFreshTime);
         var _loc2_:uint = 0;
         while(_loc2_ < this.itemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.itemInfo[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
