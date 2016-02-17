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
   
   public final class ProtoGetIntroductionRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoGetIntroductionRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STORE_INTRODUCTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoGetIntroductionRsp.store_introduction","storeIntroduction",2 << 3 | WireType.LENGTH_DELIMITED,ProtoRandStoreIntroduction);
       
      public var ret:ProtoRetInfo;
      
      private var store_introduction$field:serverProto.randStore.ProtoRandStoreIntroduction;
      
      public function ProtoGetIntroductionRsp()
      {
         super();
      }
      
      public function clearStoreIntroduction() : void
      {
         this.store_introduction$field = null;
      }
      
      public function get hasStoreIntroduction() : Boolean
      {
         return this.store_introduction$field != null;
      }
      
      public function set storeIntroduction(param1:serverProto.randStore.ProtoRandStoreIntroduction) : void
      {
         this.store_introduction$field = param1;
      }
      
      public function get storeIntroduction() : serverProto.randStore.ProtoRandStoreIntroduction
      {
         return this.store_introduction$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasStoreIntroduction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.store_introduction$field);
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
