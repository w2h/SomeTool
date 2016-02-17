package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHarvestMoneyResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoHarvestMoneyResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BASE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoHarvestMoneyResponse.base_info","baseInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseInfo);
      
      public static const HARVEST_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoHarvestMoneyResponse.harvest_money","harvestMoney",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var base_info$field:serverProto.basePvp.ProtoBaseInfo;
      
      private var harvest_money$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoHarvestMoneyResponse()
      {
         super();
      }
      
      public function clearBaseInfo() : void
      {
         this.base_info$field = null;
      }
      
      public function get hasBaseInfo() : Boolean
      {
         return this.base_info$field != null;
      }
      
      public function set baseInfo(param1:serverProto.basePvp.ProtoBaseInfo) : void
      {
         this.base_info$field = param1;
      }
      
      public function get baseInfo() : serverProto.basePvp.ProtoBaseInfo
      {
         return this.base_info$field;
      }
      
      public function clearHarvestMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.harvest_money$field = new int();
      }
      
      public function get hasHarvestMoney() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set harvestMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.harvest_money$field = param1;
      }
      
      public function get harvestMoney() : int
      {
         return this.harvest_money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasBaseInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_info$field);
         }
         if(this.hasHarvestMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.harvest_money$field);
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
