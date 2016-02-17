package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipForgeQualityReq extends Message
   {
      
      public static const EQUIP_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoEquipForgeQualityReq.equip_sequence","equipSequence",1 << 3 | WireType.VARINT);
      
      public static const LOCK_BIT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoEquipForgeQualityReq.lock_bit","lockBit",2 << 3 | WireType.VARINT);
       
      private var equip_sequence$field:UInt64;
      
      private var lock_bit$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoEquipForgeQualityReq()
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
      
      public function clearLockBit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.lock_bit$field = new int();
      }
      
      public function get hasLockBit() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set lockBit(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.lock_bit$field = param1;
      }
      
      public function get lockBit() : int
      {
         return this.lock_bit$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasEquipSequence)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT64(param1,this.equip_sequence$field);
         }
         if(this.hasLockBit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.lock_bit$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
