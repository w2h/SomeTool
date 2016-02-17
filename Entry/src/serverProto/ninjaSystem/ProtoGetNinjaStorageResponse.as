package serverProto.ninjaSystem
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
   
   public final class ProtoGetNinjaStorageResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaStorageResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_STORAGE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaStorageResponse.ninja_storage","ninjaStorage",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjStorage);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_storage$field:serverProto.ninjaSystem.ProtoNinjStorage;
      
      public function ProtoGetNinjaStorageResponse()
      {
         super();
      }
      
      public function clearNinjaStorage() : void
      {
         this.ninja_storage$field = null;
      }
      
      public function get hasNinjaStorage() : Boolean
      {
         return this.ninja_storage$field != null;
      }
      
      public function set ninjaStorage(param1:serverProto.ninjaSystem.ProtoNinjStorage) : void
      {
         this.ninja_storage$field = param1;
      }
      
      public function get ninjaStorage() : serverProto.ninjaSystem.ProtoNinjStorage
      {
         return this.ninja_storage$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaStorage)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_storage$field);
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
