package serverProto.fashion
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFashionSetShowFlagReq extends Message
   {
      
      public static const SHOW_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fashion.ProtoFashionSetShowFlagReq.show_flag","showFlag",1 << 3 | WireType.VARINT);
       
      private var show_flag$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoFashionSetShowFlagReq()
      {
         super();
      }
      
      public function clearShowFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.show_flag$field = new int();
      }
      
      public function get hasShowFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set showFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.show_flag$field = param1;
      }
      
      public function get showFlag() : int
      {
         return this.show_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasShowFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.show_flag$field);
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
