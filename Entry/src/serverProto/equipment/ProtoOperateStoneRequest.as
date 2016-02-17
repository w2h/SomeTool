package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.bag.ProtoItemIndex;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOperateStoneRequest extends Message
   {
      
      public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoOperateStoneRequest.cmd_id","cmdId",1 << 3 | WireType.VARINT,EquipStoneCommands);
      
      public static const EQUIPMENT_SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.equipment.ProtoOperateStoneRequest.equipment_sequence","equipmentSequence",2 << 3 | WireType.VARINT);
      
      public static const STONE_INDEX:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoOperateStoneRequest.stone_index","stoneIndex",3 << 3 | WireType.LENGTH_DELIMITED,ProtoItemIndex);
      
      public static const STONE_INLAY_INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoOperateStoneRequest.stone_inlay_index","stoneInlayIndex",4 << 3 | WireType.VARINT);
      
      public static const OBJ_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.equipment.ProtoOperateStoneRequest.obj_type","objType",5 << 3 | WireType.VARINT,OperateObjType);
       
      public var cmdId:int;
      
      public var equipmentSequence:UInt64;
      
      public var stoneIndex:ProtoItemIndex;
      
      public var stoneInlayIndex:int;
      
      private var obj_type$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoOperateStoneRequest()
      {
         super();
      }
      
      public function clearObjType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.obj_type$field = new int();
      }
      
      public function get hasObjType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set objType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.obj_type$field = param1;
      }
      
      public function get objType() : int
      {
         return this.obj_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.cmdId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT64(param1,this.equipmentSequence);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
         WriteUtils.write$TYPE_MESSAGE(param1,this.stoneIndex);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.stoneInlayIndex);
         if(this.hasObjType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_ENUM(param1,this.obj_type$field);
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
