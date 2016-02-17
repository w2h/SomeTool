package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipFumoInlayInfo extends Message
   {
      
      public static const PROTO_JADE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipFumoInlayInfo.proto_jade_info","protoJadeInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoJadeInfo);
      
      public static const PROTO_STONE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipFumoInlayInfo.proto_stone_info","protoStoneInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBagStoneInfo);
      
      public static const IS_OPEN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.bag.ProtoEquipFumoInlayInfo.is_open","isOpen",3 << 3 | WireType.VARINT);
       
      private var proto_jade_info$field:serverProto.bag.ProtoJadeInfo;
      
      private var proto_stone_info$field:serverProto.bag.ProtoBagStoneInfo;
      
      private var is_open$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoEquipFumoInlayInfo()
      {
         super();
      }
      
      public function clearProtoJadeInfo() : void
      {
         this.proto_jade_info$field = null;
      }
      
      public function get hasProtoJadeInfo() : Boolean
      {
         return this.proto_jade_info$field != null;
      }
      
      public function set protoJadeInfo(param1:serverProto.bag.ProtoJadeInfo) : void
      {
         this.proto_jade_info$field = param1;
      }
      
      public function get protoJadeInfo() : serverProto.bag.ProtoJadeInfo
      {
         return this.proto_jade_info$field;
      }
      
      public function clearProtoStoneInfo() : void
      {
         this.proto_stone_info$field = null;
      }
      
      public function get hasProtoStoneInfo() : Boolean
      {
         return this.proto_stone_info$field != null;
      }
      
      public function set protoStoneInfo(param1:serverProto.bag.ProtoBagStoneInfo) : void
      {
         this.proto_stone_info$field = param1;
      }
      
      public function get protoStoneInfo() : serverProto.bag.ProtoBagStoneInfo
      {
         return this.proto_stone_info$field;
      }
      
      public function clearIsOpen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_open$field = new Boolean();
      }
      
      public function get hasIsOpen() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isOpen(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_open$field = param1;
      }
      
      public function get isOpen() : Boolean
      {
         return this.is_open$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasProtoJadeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_jade_info$field);
         }
         if(this.hasProtoStoneInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_stone_info$field);
         }
         if(this.hasIsOpen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.is_open$field);
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
