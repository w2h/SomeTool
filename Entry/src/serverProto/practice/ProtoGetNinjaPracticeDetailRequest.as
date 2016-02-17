package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetNinjaPracticeDetailRequest extends Message
   {
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoGetNinjaPracticeDetailRequest.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailRequest.friend","friend",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      public var ninjaSeq:int;
      
      private var friend$field:ProtoPlayerKey;
      
      public function ProtoGetNinjaPracticeDetailRequest()
      {
         super();
      }
      
      public function clearFriend() : void
      {
         this.friend$field = null;
      }
      
      public function get hasFriend() : Boolean
      {
         return this.friend$field != null;
      }
      
      public function set friend(param1:ProtoPlayerKey) : void
      {
         this.friend$field = param1;
      }
      
      public function get friend() : ProtoPlayerKey
      {
         return this.friend$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.ninjaSeq);
         if(this.hasFriend)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.friend$field);
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
