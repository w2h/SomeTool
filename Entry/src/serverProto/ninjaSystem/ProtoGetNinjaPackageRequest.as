package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.NinjaSourceType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetNinjaPackageRequest extends Message
   {
      
      public static const NINJA_SOURCE_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaSystem.ProtoGetNinjaPackageRequest.ninja_source_type","ninjaSourceType",1 << 3 | WireType.VARINT,NinjaSourceType);
       
      private var ninja_source_type$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGetNinjaPackageRequest()
      {
         super();
      }
      
      public function clearNinjaSourceType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_source_type$field = new int();
      }
      
      public function get hasNinjaSourceType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaSourceType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_source_type$field = param1;
      }
      
      public function get ninjaSourceType() : int
      {
         return this.ninja_source_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNinjaSourceType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.ninja_source_type$field);
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
