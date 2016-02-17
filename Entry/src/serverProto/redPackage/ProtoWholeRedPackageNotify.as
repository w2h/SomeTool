package serverProto.redPackage
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWholeRedPackageNotify extends Message
   {
      
      public static const RED_PACKAGE_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.redPackage.ProtoWholeRedPackageNotify.red_package_id","redPackageId",1 << 3 | WireType.VARINT);
      
      public static const RED_PACKAGE_MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.redPackage.ProtoWholeRedPackageNotify.red_package_msg","redPackageMsg",2 << 3 | WireType.LENGTH_DELIMITED);
       
      private var red_package_id$field:UInt64;
      
      private var red_package_msg$field:String;
      
      public function ProtoWholeRedPackageNotify()
      {
         super();
      }
      
      public function clearRedPackageId() : void
      {
         this.red_package_id$field = null;
      }
      
      public function get hasRedPackageId() : Boolean
      {
         return this.red_package_id$field != null;
      }
      
      public function set redPackageId(param1:UInt64) : void
      {
         this.red_package_id$field = param1;
      }
      
      public function get redPackageId() : UInt64
      {
         return this.red_package_id$field;
      }
      
      public function clearRedPackageMsg() : void
      {
         this.red_package_msg$field = null;
      }
      
      public function get hasRedPackageMsg() : Boolean
      {
         return this.red_package_msg$field != null;
      }
      
      public function set redPackageMsg(param1:String) : void
      {
         this.red_package_msg$field = param1;
      }
      
      public function get redPackageMsg() : String
      {
         return this.red_package_msg$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRedPackageId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT64(param1,this.red_package_id$field);
         }
         if(this.hasRedPackageMsg)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.red_package_msg$field);
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
