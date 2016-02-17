package serverProto.talent
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoOpTalentPageRequest extends Message
   {
      
      public static const CMD:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.talent.ProtoOpTalentPageRequest.cmd","cmd",1 << 3 | WireType.VARINT,OperateTalentPageCmd);
      
      public static const PAGE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoOpTalentPageRequest.page_index","pageIndex",2 << 3 | WireType.VARINT);
       
      public var cmd:int;
      
      private var page_index$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoOpTalentPageRequest()
      {
         super();
      }
      
      public function clearPageIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.page_index$field = new uint();
      }
      
      public function get hasPageIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set pageIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.page_index$field = param1;
      }
      
      public function get pageIndex() : uint
      {
         return this.page_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.cmd);
         if(this.hasPageIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.page_index$field);
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
