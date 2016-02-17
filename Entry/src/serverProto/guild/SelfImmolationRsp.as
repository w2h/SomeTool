package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class SelfImmolationRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.SelfImmolationRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const IMMOLATION_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.SelfImmolationRsp.immolation_count","immolationCount",2 << 3 | WireType.VARINT);
      
      public static const REST_SELL_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.SelfImmolationRsp.rest_sell_times","restSellTimes",3 << 3 | WireType.VARINT);
      
      public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.SelfImmolationRsp.item_info","itemInfo",4 << 3 | WireType.LENGTH_DELIMITED,ChaKeLaItemInfo);
      
      public static const CHA_KE_LA_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.SelfImmolationRsp.cha_ke_la_count","chaKeLaCount",5 << 3 | WireType.VARINT);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.SelfImmolationRsp.award","award",6 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var ret:ProtoRetInfo;
      
      private var immolation_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var rest_sell_times$field:uint;
      
      [ArrayElementType("serverProto.guild.ChaKeLaItemInfo")]
      public var itemInfo:Array;
      
      private var cha_ke_la_count$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      public function SelfImmolationRsp()
      {
         this.itemInfo = [];
         this.award = [];
         super();
      }
      
      public function clearImmolationCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.immolation_count$field = new uint();
      }
      
      public function get hasImmolationCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set immolationCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.immolation_count$field = param1;
      }
      
      public function get immolationCount() : uint
      {
         return this.immolation_count$field;
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
      
      public function clearChaKeLaCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.cha_ke_la_count$field = new uint();
      }
      
      public function get hasChaKeLaCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set chaKeLaCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.cha_ke_la_count$field = param1;
      }
      
      public function get chaKeLaCount() : uint
      {
         return this.cha_ke_la_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasImmolationCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.immolation_count$field);
         }
         if(this.hasRestSellTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_sell_times$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.itemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.itemInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasChaKeLaCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.cha_ke_la_count$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc3_]);
            _loc3_++;
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
