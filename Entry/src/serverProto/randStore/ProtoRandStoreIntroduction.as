package serverProto.randStore
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRandStoreIntroduction extends Message
   {
      
      public static const ITEMS:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.randStore.ProtoRandStoreIntroduction.items","items",1 << 3 | WireType.VARINT);
      
      public static const INTRODUCTION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.randStore.ProtoRandStoreIntroduction.introduction","introduction",2 << 3 | WireType.LENGTH_DELIMITED);
       
      [ArrayElementType("int")]
      public var items:Array;
      
      private var introduction$field:String;
      
      public function ProtoRandStoreIntroduction()
      {
         this.items = [];
         super();
      }
      
      public function clearIntroduction() : void
      {
         this.introduction$field = null;
      }
      
      public function get hasIntroduction() : Boolean
      {
         return this.introduction$field != null;
      }
      
      public function set introduction(param1:String) : void
      {
         this.introduction$field = param1;
      }
      
      public function get introduction() : String
      {
         return this.introduction$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.items.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.items[_loc2_]);
            _loc2_++;
         }
         if(this.hasIntroduction)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.introduction$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
