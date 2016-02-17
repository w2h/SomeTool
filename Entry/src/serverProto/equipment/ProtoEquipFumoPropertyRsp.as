package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.bag.ProtoEquipFumoInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipFumoPropertyRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoEquipFumoPropertyRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const IS_SUCCESS:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.equipment.ProtoEquipFumoPropertyRsp.is_success","isSuccess",2 << 3 | WireType.VARINT);
      
      public static const FUMO_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoEquipFumoPropertyRsp.fumo_info","fumoInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipFumoInfo);
      
      public static const ADD_BLESS_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.equipment.ProtoEquipFumoPropertyRsp.add_bless_value","addBlessValue",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var is_success$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var fumo_info$field:ProtoEquipFumoInfo;
      
      private var add_bless_value$field:uint;
      
      public function ProtoEquipFumoPropertyRsp()
      {
         super();
      }
      
      public function clearIsSuccess() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_success$field = new Boolean();
      }
      
      public function get hasIsSuccess() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isSuccess(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_success$field = param1;
      }
      
      public function get isSuccess() : Boolean
      {
         return this.is_success$field;
      }
      
      public function clearFumoInfo() : void
      {
         this.fumo_info$field = null;
      }
      
      public function get hasFumoInfo() : Boolean
      {
         return this.fumo_info$field != null;
      }
      
      public function set fumoInfo(param1:ProtoEquipFumoInfo) : void
      {
         this.fumo_info$field = param1;
      }
      
      public function get fumoInfo() : ProtoEquipFumoInfo
      {
         return this.fumo_info$field;
      }
      
      public function clearAddBlessValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.add_bless_value$field = new uint();
      }
      
      public function get hasAddBlessValue() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set addBlessValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.add_bless_value$field = param1;
      }
      
      public function get addBlessValue() : uint
      {
         return this.add_bless_value$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasIsSuccess)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_success$field);
         }
         if(this.hasFumoInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fumo_info$field);
         }
         if(this.hasAddBlessValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.add_bless_value$field);
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
