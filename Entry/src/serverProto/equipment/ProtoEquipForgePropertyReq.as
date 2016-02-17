package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipForgePropertyReq extends Message
   {
      
      public static const FORGE_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipForgePropertyReq.forge_type","forgeType",1 << 3 | WireType.VARINT);
      
      public static const BIND_MATERIAL_FIRST:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipForgePropertyReq.bind_material_first","bindMaterialFirst",2 << 3 | WireType.VARINT);
      
      public static const AUTO_BUY_MATERIAL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipForgePropertyReq.auto_buy_material","autoBuyMaterial",3 << 3 | WireType.VARINT);
      
      public static const EQUIP_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoEquipForgePropertyReq.equip_sequence","equipSequence",4 << 3 | WireType.VARINT);
       
      private var forge_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var bind_material_first$field:uint;
      
      private var auto_buy_material$field:uint;
      
      private var equip_sequence$field:UInt64;
      
      public function ProtoEquipForgePropertyReq()
      {
         super();
      }
      
      public function clearForgeType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.forge_type$field = new uint();
      }
      
      public function get hasForgeType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set forgeType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.forge_type$field = param1;
      }
      
      public function get forgeType() : uint
      {
         return this.forge_type$field;
      }
      
      public function clearBindMaterialFirst() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.bind_material_first$field = new uint();
      }
      
      public function get hasBindMaterialFirst() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set bindMaterialFirst(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.bind_material_first$field = param1;
      }
      
      public function get bindMaterialFirst() : uint
      {
         return this.bind_material_first$field;
      }
      
      public function clearAutoBuyMaterial() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.auto_buy_material$field = new uint();
      }
      
      public function get hasAutoBuyMaterial() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set autoBuyMaterial(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.auto_buy_material$field = param1;
      }
      
      public function get autoBuyMaterial() : uint
      {
         return this.auto_buy_material$field;
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
         if(this.hasForgeType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.forge_type$field);
         }
         if(this.hasBindMaterialFirst)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.bind_material_first$field);
         }
         if(this.hasAutoBuyMaterial)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.auto_buy_material$field);
         }
         if(this.hasEquipSequence)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
