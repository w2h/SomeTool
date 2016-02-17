package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.bag.ProtoItemIndex;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSummonMonsterComposeRuneRequest extends Message
   {
      
      public static const CONTRACT_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoSummonMonsterComposeRuneRequest.contract_pos","contractPos",1 << 3 | WireType.VARINT);
      
      public static const RUNE_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoSummonMonsterComposeRuneRequest.rune_index","runeIndex",2 << 3 | WireType.VARINT);
      
      public static const BAG_RUNE_INDEX_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoSummonMonsterComposeRuneRequest.bag_rune_index_list","bagRuneIndexList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemIndex);
       
      public var contractPos:int;
      
      public var runeIndex:int;
      
      [ArrayElementType("serverProto.bag.ProtoItemIndex")]
      public var bagRuneIndexList:Array;
      
      public function ProtoSummonMonsterComposeRuneRequest()
      {
         this.bagRuneIndexList = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.contractPos);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.runeIndex);
         var _loc2_:uint = 0;
         while(_loc2_ < this.bagRuneIndexList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.bagRuneIndexList[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
