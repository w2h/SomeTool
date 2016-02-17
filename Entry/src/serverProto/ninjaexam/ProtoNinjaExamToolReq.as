package serverProto.ninjaexam
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaExamToolReq extends Message
   {
      
      public static const COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoNinjaExamToolReq.count","count",1 << 3 | WireType.VARINT);
      
      public static const NOTIFY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoNinjaExamToolReq.notify","notify",2 << 3 | WireType.VARINT);
       
      public var count:int;
      
      private var notify$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoNinjaExamToolReq()
      {
         super();
      }
      
      public function clearNotify() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.notify$field = new int();
      }
      
      public function get hasNotify() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set notify(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.notify$field = param1;
      }
      
      public function get notify() : int
      {
         return this.notify$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.count);
         if(this.hasNotify)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.notify$field);
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
