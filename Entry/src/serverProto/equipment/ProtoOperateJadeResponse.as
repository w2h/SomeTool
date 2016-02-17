package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.bag.ProtoEquipInfo;
   import serverProto.inc.ProtoNarutoProperty;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOperateJadeResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateJadeResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const EQUIP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateJadeResponse.equip_info","equipInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipInfo);
      
      public static const PROPERTY_CHANGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateJadeResponse.property_change","propertyChange",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNarutoProperty);
      
      public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoOperateJadeResponse.cmd_id","cmdId",4 << 3 | WireType.VARINT,EquipJadeCommands);
       
      public var ret:ProtoRetInfo;
      
      private var equip_info$field:ProtoEquipInfo;
      
      private var property_change$field:ProtoNarutoProperty;
      
      public var cmdId:int;
      
      public function ProtoOperateJadeResponse()
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
         if(this.hasPropertyChange)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.property_change$field);
         }
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_ENUM(param1,this.cmdId);
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
