package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.bag.ProtoEquipInfo;
   import serverProto.inc.ProtoNarutoProperty;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoComposeJadeResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoComposeJadeResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoComposeJadeResponse.equip_info","equipInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
      
      public static const COMPOSE_JADE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoComposeJadeResponse.compose_jade_index","composeJadeIndex",3 << 3 | WireType.VARINT);
      
      public static const PROPERTY_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoComposeJadeResponse.property_change","propertyChange",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNarutoProperty);
      
      public static const ADD_JADE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoComposeJadeResponse.add_jade_exp","addJadeExp",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var equip_info$field:ProtoEquipInfo;
      
      private var compose_jade_index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var property_change$field:ProtoNarutoProperty;
      
      private var add_jade_exp$field:int;
      
      public function ProtoComposeJadeResponse()
      {
         super();
      }
      
      public function clearEquipInfo() : void
      {
         this.equip_info$field = null;
      }
      
      public function get hasEquipInfo() : Boolean
      {
         return this.equip_info$field != null;
      }
      
      public function set equipInfo(param1:ProtoEquipInfo) : void
      {
         this.equip_info$field = param1;
      }
      
      public function get equipInfo() : ProtoEquipInfo
      {
         return this.equip_info$field;
      }
      
      public function clearComposeJadeIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.compose_jade_index$field = new uint();
      }
      
      public function get hasComposeJadeIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set composeJadeIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.compose_jade_index$field = param1;
      }
      
      public function get composeJadeIndex() : uint
      {
         return this.compose_jade_index$field;
      }
      
      public function clearPropertyChange() : void
      {
         this.property_change$field = null;
      }
      
      public function get hasPropertyChange() : Boolean
      {
         return this.property_change$field != null;
      }
      
      public function set propertyChange(param1:ProtoNarutoProperty) : void
      {
         this.property_change$field = param1;
      }
      
      public function get propertyChange() : ProtoNarutoProperty
      {
         return this.property_change$field;
      }
      
      public function clearAddJadeExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.add_jade_exp$field = new int();
      }
      
      public function get hasAddJadeExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set addJadeExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.add_jade_exp$field = param1;
      }
      
      public function get addJadeExp() : int
      {
         return this.add_jade_exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasEquipInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.equip_info$field);
         }
         if(this.hasComposeJadeIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.compose_jade_index$field);
         }
         if(this.hasPropertyChange)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_change$field);
         }
         if(this.hasAddJadeExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.add_jade_exp$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
