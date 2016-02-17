package serverProto.saveJinchuuriki
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRankNotify extends Message
   {
      
      public static const IS_IN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.saveJinchuuriki.ProtoRankNotify.is_in","isIn",1 << 3 | WireType.VARINT);
       
      private var is_in$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoRankNotify()
      {
         super();
      }
      
      public function clearIsIn() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_in$field = new Boolean();
      }
      
      public function get hasIsIn() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isIn(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_in$field = param1;
      }
      
      public function get isIn() : Boolean
      {
         return this.is_in$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIsIn)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.is_in$field);
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
