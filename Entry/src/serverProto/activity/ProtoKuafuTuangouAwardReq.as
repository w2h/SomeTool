package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoKuafuTuangouAwardReq extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuangouAwardReq.index","index",1 << 3 | WireType.VARINT);
      
      public static const FANLI_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoKuafuTuangouAwardReq.fanli_seq","fanliSeq",2 << 3 | WireType.VARINT);
       
      private var index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var fanli_seq$field:uint;
      
      public function ProtoKuafuTuangouAwardReq()
      {
         super();
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.index$field = new uint();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set index(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.index$field = param1;
      }
      
      public function get index() : uint
      {
         return this.index$field;
      }
      
      public function clearFanliSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.fanli_seq$field = new uint();
      }
      
      public function get hasFanliSeq() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set fanliSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.fanli_seq$field = param1;
      }
      
      public function get fanliSeq() : uint
      {
         return this.fanli_seq$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.index$field);
         }
         if(this.hasFanliSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.fanli_seq$field);
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
