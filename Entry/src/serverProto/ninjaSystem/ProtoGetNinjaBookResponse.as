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
   
   public final class ProtoGetNinjaBookResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaBookResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_BOOK_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetNinjaBookResponse.ninja_book_list","ninjaBookList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerNinjaBookList);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_book_list$field:serverProto.ninjaSystem.ProtoPlayerNinjaBookList;
      
      public function ProtoGetNinjaBookResponse()
      {
         super();
      }
      
      public function clearNinjaBookList() : void
      {
         this.ninja_book_list$field = null;
      }
      
      public function get hasNinjaBookList() : Boolean
      {
         return this.ninja_book_list$field != null;
      }
      
      public function set ninjaBookList(param1:serverProto.ninjaSystem.ProtoPlayerNinjaBookList) : void
      {
         this.ninja_book_list$field = param1;
      }
      
      public function get ninjaBookList() : serverProto.ninjaSystem.ProtoPlayerNinjaBookList
      {
         return this.ninja_book_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaBookList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_book_list$field);
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
