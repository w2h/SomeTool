package serverProto.independenceEquip
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.bag.ProtoEquipInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   
   public final class ProtoIndependentEquipmentInfo extends Message
   {
      
      public static const EQUIP_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentInfo.equip_info","equipInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoIndependentEquipmentEquipInfo);
      
      public static const BAG_EQUIP:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentInfo.bag_equip","bagEquip",2 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
       
      [ArrayElementType("serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo")]
      public var equipInfo:Array;
      
      [ArrayElementType("serverProto.bag.ProtoEquipInfo")]
      public var bagEquip:Array;
      
      public function ProtoIndependentEquipmentInfo()
      {
         this.equipInfo = [];
         this.bagEquip = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.equipInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equipInfo[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.bagEquip.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.bagEquip[_loc3_]);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
