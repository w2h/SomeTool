package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.bag.ProtoItemIndex;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSummonMonsterOperateRuneRequest extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.type","type",1 << 3 | WireType.VARINT,ProtoSummonMonsterOperateRuneType);
      
      public static const CONTRACT_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.contract_pos","contractPos",2 << 3 | WireType.VARINT);
      
      public static const BAG_RUNE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.bag_rune","bagRune",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemIndex);
      
      public static const CONTRACT_RUNE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterOperateRuneRequest.contract_rune","contractRune",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemIndex);
       
      public var type:int;
      
      public var contractPos:int;
      
      private var bag_rune$field:ProtoItemIndex;
      
      private var contract_rune$field:ProtoItemIndex;
      
      public function ProtoSummonMonsterOperateRuneRequest()
      {
         super();
      }
      
      public function clearBagRune() : void
      {
         this.bag_rune$field = null;
      }
      
      public function get hasBagRune() : Boolean
      {
         return this.bag_rune$field != null;
      }
      
      public function set bagRune(param1:ProtoItemIndex) : void
      {
         this.bag_rune$field = param1;
      }
      
      public function get bagRune() : ProtoItemIndex
      {
         return this.bag_rune$field;
      }
      
      public function clearContractRune() : void
      {
         this.contract_rune$field = null;
      }
      
      public function get hasContractRune() : Boolean
      {
         return this.contract_rune$field != null;
      }
      
      public function set contractRune(param1:ProtoItemIndex) : void
      {
         this.contract_rune$field = param1;
      }
      
      public function get contractRune() : ProtoItemIndex
      {
         return this.contract_rune$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.contractPos);
         if(this.hasBagRune)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.bag_rune$field);
         }
         if(this.hasContractRune)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.contract_rune$field);
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
