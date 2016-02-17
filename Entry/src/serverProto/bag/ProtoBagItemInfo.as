package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBagItemInfo extends Message
   {
      
      public static const COMMON_ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagItemInfo.common_item_info","commonItemInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoCommonItemInfo);
      
      public static const JADE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoBagItemInfo.jade_info","jadeInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoJadeInfo);
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagItemInfo.index","index",3 << 3 | WireType.VARINT);
       
      private var common_item_info$field:serverProto.bag.ProtoCommonItemInfo;
      
      private var jade_info$field:serverProto.bag.ProtoJadeInfo;
      
      public var index:uint;
      
      public function ProtoBagItemInfo()
      {
         super();
      }
      
      public function clearCommonItemInfo() : void
      {
         this.common_item_info$field = null;
      }
      
      public function get hasCommonItemInfo() : Boolean
      {
         return this.common_item_info$field != null;
      }
      
      public function set commonItemInfo(param1:serverProto.bag.ProtoCommonItemInfo) : void
      {
         this.common_item_info$field = param1;
      }
      
      public function get commonItemInfo() : serverProto.bag.ProtoCommonItemInfo
      {
         return this.common_item_info$field;
      }
      
      public function clearJadeInfo() : void
      {
         this.jade_info$field = null;
      }
      
      public function get hasJadeInfo() : Boolean
      {
         return this.jade_info$field != null;
      }
      
      public function set jadeInfo(param1:serverProto.bag.ProtoJadeInfo) : void
      {
         this.jade_info$field = param1;
      }
      
      public function get jadeInfo() : serverProto.bag.ProtoJadeInfo
      {
         return this.jade_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasCommonItemInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.common_item_info$field);
         }
         if(this.hasJadeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.jade_info$field);
         }
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.index);
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
