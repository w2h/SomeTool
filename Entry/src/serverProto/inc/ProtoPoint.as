package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPoint extends Message
   {
      
      public static const X:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPoint.x","x",1 << 3 | WireType.VARINT);
      
      public static const Y:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoPoint.y","y",2 << 3 | WireType.VARINT);
       
      private var x$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var y$field:uint;
      
      public function ProtoPoint()
      {
         super();
      }
      
      public function clearX() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.x$field = new uint();
      }
      
      public function get hasX() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set x(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.x$field = param1;
      }
      
      public function get x() : uint
      {
         return this.x$field;
      }
      
      public function clearY() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.y$field = new uint();
      }
      
      public function get hasY() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set y(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.y$field = param1;
      }
      
      public function get y() : uint
      {
         return this.y$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasX)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.x$field);
         }
         if(this.hasY)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.y$field);
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
