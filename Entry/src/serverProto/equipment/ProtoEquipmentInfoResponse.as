package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipmentInfoResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoEquipmentInfoResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_EQUIP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoEquipmentInfoResponse.ninja_equip","ninjaEquip",2 << 3 | WireType.LENGTH_DELIMITED,ProtoFormationEquipmentInfo);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_equip$field:serverProto.equipment.ProtoFormationEquipmentInfo;
      
      public function ProtoEquipmentInfoResponse()
      {
         super();
      }
      
      public function clearNinjaEquip() : void
      {
         this.ninja_equip$field = null;
      }
      
      public function get hasNinjaEquip() : Boolean
      {
         return this.ninja_equip$field != null;
      }
      
      public function set ninjaEquip(param1:serverProto.equipment.ProtoFormationEquipmentInfo) : void
      {
         this.ninja_equip$field = param1;
      }
      
      public function get ninjaEquip() : serverProto.equipment.ProtoFormationEquipmentInfo
      {
         return this.ninja_equip$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaEquip)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_equip$field);
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
