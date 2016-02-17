package serverProto.independenceEquip
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoIndependentEquipmentOperateRequest extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.type","type",1 << 3 | WireType.VARINT,ProtoIndependentEquipmentType);
      
      public static const OPERATE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.operate","operate",2 << 3 | WireType.VARINT,ProtoIndependentEquipmentOperateType);
      
      public static const EQUIP_SEQ:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.equip_seq","equipSeq",3 << 3 | WireType.VARINT);
      
      public static const NINJA_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.ninja_pos","ninjaPos",4 << 3 | WireType.VARINT);
      
      public static const OLD_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.old_pos","oldPos",5 << 3 | WireType.VARINT);
      
      public static const NEW_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.independenceEquip.ProtoIndependentEquipmentOperateRequest.new_pos","newPos",6 << 3 | WireType.VARINT);
       
      public var type:int;
      
      public var operate:int;
      
      private var equip_seq$field:UInt64;
      
      private var ninja_pos$field:int;
      
      private var hasField$0:uint = 0;
      
      private var old_pos$field:int;
      
      private var new_pos$field:int;
      
      public function ProtoIndependentEquipmentOperateRequest()
      {
         super();
      }
      
      public function clearEquipSeq() : void
      {
         this.equip_seq$field = null;
      }
      
      public function get hasEquipSeq() : Boolean
      {
         return this.equip_seq$field != null;
      }
      
      public function set equipSeq(param1:UInt64) : void
      {
         this.equip_seq$field = param1;
      }
      
      public function get equipSeq() : UInt64
      {
         return this.equip_seq$field;
      }
      
      public function clearNinjaPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_pos$field = new int();
      }
      
      public function get hasNinjaPos() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_pos$field = param1;
      }
      
      public function get ninjaPos() : int
      {
         return this.ninja_pos$field;
      }
      
      public function clearOldPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.old_pos$field = new int();
      }
      
      public function get hasOldPos() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set oldPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.old_pos$field = param1;
      }
      
      public function get oldPos() : int
      {
         return this.old_pos$field;
      }
      
      public function clearNewPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.new_pos$field = new int();
      }
      
      public function get hasNewPos() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set newPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.new_pos$field = param1;
      }
      
      public function get newPos() : int
      {
         return this.new_pos$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.operate);
         if(this.hasEquipSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT64(param1,this.equip_seq$field);
         }
         if(this.hasNinjaPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.ninja_pos$field);
         }
         if(this.hasOldPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.old_pos$field);
         }
         if(this.hasNewPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.new_pos$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
