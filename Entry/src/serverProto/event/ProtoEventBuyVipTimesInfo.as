package serverProto.event
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEventBuyVipTimesInfo extends Message
   {
      
      public static const BUY_VIP_GENIN_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.event.ProtoEventBuyVipTimesInfo.buy_vip_genin_count","buyVipGeninCount",1 << 3 | WireType.VARINT);
      
      public static const BUY_VIP_CHUNIN_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.event.ProtoEventBuyVipTimesInfo.buy_vip_chunin_count","buyVipChuninCount",2 << 3 | WireType.VARINT);
      
      public static const BUY_VIP_JONIN_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.event.ProtoEventBuyVipTimesInfo.buy_vip_jonin_count","buyVipJoninCount",3 << 3 | WireType.VARINT);
       
      private var buy_vip_genin_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var buy_vip_chunin_count$field:int;
      
      private var buy_vip_jonin_count$field:int;
      
      public function ProtoEventBuyVipTimesInfo()
      {
         super();
      }
      
      public function clearBuyVipGeninCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.buy_vip_genin_count$field = new int();
      }
      
      public function get hasBuyVipGeninCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set buyVipGeninCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.buy_vip_genin_count$field = param1;
      }
      
      public function get buyVipGeninCount() : int
      {
         return this.buy_vip_genin_count$field;
      }
      
      public function clearBuyVipChuninCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.buy_vip_chunin_count$field = new int();
      }
      
      public function get hasBuyVipChuninCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set buyVipChuninCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.buy_vip_chunin_count$field = param1;
      }
      
      public function get buyVipChuninCount() : int
      {
         return this.buy_vip_chunin_count$field;
      }
      
      public function clearBuyVipJoninCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.buy_vip_jonin_count$field = new int();
      }
      
      public function get hasBuyVipJoninCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set buyVipJoninCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.buy_vip_jonin_count$field = param1;
      }
      
      public function get buyVipJoninCount() : int
      {
         return this.buy_vip_jonin_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBuyVipGeninCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.buy_vip_genin_count$field);
         }
         if(this.hasBuyVipChuninCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.buy_vip_chunin_count$field);
         }
         if(this.hasBuyVipJoninCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.buy_vip_jonin_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
