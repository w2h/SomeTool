package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOperateEquipmentRequest extends Message
   {
      
      public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoOperateEquipmentRequest.cmd_id","cmdId",1 << 3 | WireType.VARINT,EquipCommands);
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoOperateEquipmentRequest.ninja_seq","ninjaSeq",2 << 3 | WireType.VARINT);
      
      public static const EQUIPMENT_SEQUENCE:RepeatedFieldDescriptor$TYPE_UINT64 = new RepeatedFieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoOperateEquipmentRequest.equipment_sequence","equipmentSequence",3 << 3 | WireType.LENGTH_DELIMITED);
       
      public var cmdId:int;
      
      private var ninja_seq$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("UInt64")]
      public var equipmentSequence:Array;
      
      public function ProtoOperateEquipmentRequest()
      {
         this.equipmentSequence = [];
         super();
      }
      
      public function clearNinjaSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_seq$field = new uint();
      }
      
      public function get hasNinjaSeq() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_seq$field = param1;
      }
      
      public function get ninjaSeq() : uint
      {
         return this.ninja_seq$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.cmdId);
         if(this.hasNinjaSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_seq$field);
         }
         if(this.equipmentSequence != null && this.equipmentSequence.length > 0)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.writePackedRepeated(param1,WriteUtils.write$TYPE_UINT64,this.equipmentSequence);
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
