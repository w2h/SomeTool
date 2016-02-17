package serverProto.randStore
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
   
   public final class ProtoRandStoreFreshRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoRandStoreFreshRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STORE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoRandStoreFreshRsp.store_info","storeInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoRandStoreInfo);
       
      public var ret:ProtoRetInfo;
      
      private var store_info$field:serverProto.randStore.ProtoRandStoreInfo;
      
      public function ProtoRandStoreFreshRsp()
      {
         super();
      }
      
      public function clearStoreInfo() : void
      {
         this.store_info$field = null;
      }
      
      public function get hasStoreInfo() : Boolean
      {
         return this.store_info$field != null;
      }
      
      public function set storeInfo(param1:serverProto.randStore.ProtoRandStoreInfo) : void
      {
         this.store_info$field = param1;
      }
      
      public function get storeInfo() : serverProto.randStore.ProtoRandStoreInfo
      {
         return this.store_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasStoreInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.store_info$field);
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
