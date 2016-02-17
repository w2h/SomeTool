package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetEquipForgePropertyReq extends Message
   {
      
      public static const EQUIP_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoGetEquipForgePropertyReq.equip_sequence","equipSequence",1 << 3 | WireType.VARINT);
       
      private var equip_sequence$field:UInt64;
      
      public function ProtoGetEquipForgePropertyReq()
      {
         super();
      }
      
      public function clearEquipSequence() : void
      {
         this.equip_sequence$field = null;
      }
      
      public function get hasEquipSequence() : Boolean
      {
         return this.equip_sequence$field != null;
      }
      
      public function set equipSequence(param1:UInt64) : void
      {
         this.equip_sequence$field = param1;
      }
      
      public function get equipSequence() : UInt64
      {
         return this.equip_sequence$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasEquipSequence)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT64(param1,this.equip_sequence$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
