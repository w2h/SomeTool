package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSecondaryPasswordRequest extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoSecondaryPasswordRequest.type","type",1 << 3 | WireType.VARINT,ProtoSecondaryPasswordType);
      
      public static const PASSWD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoSecondaryPasswordRequest.passwd","passwd",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const OLD_PASSWD:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoSecondaryPasswordRequest.old_passwd","oldPasswd",3 << 3 | WireType.LENGTH_DELIMITED);
       
      public var type:int;
      
      private var passwd$field:String;
      
      private var old_passwd$field:String;
      
      public function ProtoSecondaryPasswordRequest()
      {
         super();
      }
      
      public function clearPasswd() : void
      {
         this.passwd$field = null;
      }
      
      public function get hasPasswd() : Boolean
      {
         return this.passwd$field != null;
      }
      
      public function set passwd(param1:String) : void
      {
         this.passwd$field = param1;
      }
      
      public function get passwd() : String
      {
         return this.passwd$field;
      }
      
      public function clearOldPasswd() : void
      {
         this.old_passwd$field = null;
      }
      
      public function get hasOldPasswd() : Boolean
      {
         return this.old_passwd$field != null;
      }
      
      public function set oldPasswd(param1:String) : void
      {
         this.old_passwd$field = param1;
      }
      
      public function get oldPasswd() : String
      {
         return this.old_passwd$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasPasswd)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.passwd$field);
         }
         if(this.hasOldPasswd)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.old_passwd$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
