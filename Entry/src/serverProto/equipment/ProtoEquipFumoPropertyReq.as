package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipFumoPropertyReq extends Message
   {
      
      public static const AUTO_FUMO:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.equipment.ProtoEquipFumoPropertyReq.auto_fumo","autoFumo",1 << 3 | WireType.VARINT);
      
      public static const AUTO_BUY_MATERIAL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.equipment.ProtoEquipFumoPropertyReq.auto_buy_material","autoBuyMaterial",2 << 3 | WireType.VARINT);
      
      public static const EQUIP_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoEquipFumoPropertyReq.equip_sequence","equipSequence",3 << 3 | WireType.VARINT);
       
      private var auto_fumo$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var auto_buy_material$field:Boolean;
      
      private var equip_sequence$field:UInt64;
      
      public function ProtoEquipFumoPropertyReq()
      {
         super();
      }
      
      public function clearAutoFumo() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.auto_fumo$field = new Boolean();
      }
      
      public function get hasAutoFumo() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set autoFumo(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.auto_fumo$field = param1;
      }
      
      public function get autoFumo() : Boolean
      {
         return this.auto_fumo$field;
      }
      
      public function clearAutoBuyMaterial() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.auto_buy_material$field = new Boolean();
      }
      
      public function get hasAutoBuyMaterial() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set autoBuyMaterial(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.auto_buy_material$field = param1;
      }
      
      public function get autoBuyMaterial() : Boolean
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
         if(this.hasAutoFumo)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_fumo$field);
         }
         if(this.hasAutoBuyMaterial)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_buy_material$field);
         }
         if(this.hasEquipSequence)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
