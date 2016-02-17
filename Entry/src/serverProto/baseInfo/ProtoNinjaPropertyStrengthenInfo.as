package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaPropertyStrengthenInfo extends Message
   {
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.level","level",1 << 3 | WireType.VARINT);
      
      public static const MAX_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.max_level","maxLevel",2 << 3 | WireType.VARINT);
      
      public static const NEED_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.need_item_num","needItemNum",3 << 3 | WireType.VARINT);
      
      public static const CURRENT_BUFF:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.current_buff","currentBuff",4 << 3 | WireType.VARINT);
      
      public static const NEXT_BUFF:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.next_buff","nextBuff",5 << 3 | WireType.VARINT);
      
      public static const NEED_NINJA_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.need_ninja_level","needNinjaLevel",6 << 3 | WireType.VARINT);
      
      public static const STRENGTH_MAX_NEED_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo.strength_max_need_item_num","strengthMaxNeedItemNum",7 << 3 | WireType.VARINT);
       
      public var level:int;
      
      public var maxLevel:int;
      
      public var needItemNum:int;
      
      public var currentBuff:int;
      
      public var nextBuff:int;
      
      public var needNinjaLevel:int;
      
      public var strengthMaxNeedItemNum:int;
      
      public function ProtoNinjaPropertyStrengthenInfo()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.level);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.maxLevel);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.needItemNum);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.currentBuff);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_INT32(param1,this.nextBuff);
         WriteUtils.writeTag(param1,WireType.VARINT,6);
         WriteUtils.write$TYPE_INT32(param1,this.needNinjaLevel);
         WriteUtils.writeTag(param1,WireType.VARINT,7);
         WriteUtils.write$TYPE_INT32(param1,this.strengthMaxNeedItemNum);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
