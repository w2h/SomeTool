package serverProto.rank
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSetChosedTitleReq extends Message
   {
      
      public static const CHOSED_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoSetChosedTitleReq.chosed_title_id","chosedTitleId",1 << 3 | WireType.VARINT);
       
      private var chosed_title_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSetChosedTitleReq()
      {
         super();
      }
      
      public function clearChosedTitleId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.chosed_title_id$field = new uint();
      }
      
      public function get hasChosedTitleId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set chosedTitleId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.chosed_title_id$field = param1;
      }
      
      public function get chosedTitleId() : uint
      {
         return this.chosed_title_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasChosedTitleId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.chosed_title_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
