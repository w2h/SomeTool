package serverProto.independenceEquip
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import serverProto.bag.ProtoEquipInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoIndependentEquipmentEquipInfo extends Message
   {
      
      public static const NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo.ninja_info","ninjaInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const EQUIP_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.independenceEquip.ProtoIndependentEquipmentEquipInfo.equip_info","equipInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
       
      private var ninja_info$field:ProtoNinjaInfo;
      
      [ArrayElementType("serverProto.bag.ProtoEquipInfo")]
      public var equipInfo:Array;
      
      public function ProtoIndependentEquipmentEquipInfo()
      {
         this.equipInfo = [];
         super();
      }
      
      public function clearNinjaInfo() : void
      {
         this.ninja_info$field = null;
      }
      
      public function get hasNinjaInfo() : Boolean
      {
         return this.ninja_info$field != null;
      }
      
      public function set ninjaInfo(param1:ProtoNinjaInfo) : void
      {
         this.ninja_info$field = param1;
      }
      
      public function get ninjaInfo() : ProtoNinjaInfo
      {
         return this.ninja_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasNinjaInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.equipInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equipInfo[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
