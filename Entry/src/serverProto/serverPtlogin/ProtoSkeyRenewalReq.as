package serverProto.serverPtlogin
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSkeyRenewalReq extends Message
   {
      
      public static const SKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.serverPtlogin.ProtoSkeyRenewalReq.skey","skey",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const SEPERATE_SKEY:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.serverPtlogin.ProtoSkeyRenewalReq.seperate_skey","seperateSkey",2 << 3 | WireType.LENGTH_DELIMITED);
       
      private var skey$field:String;
      
      private var seperate_skey$field:String;
      
      public function ProtoSkeyRenewalReq()
      {
         super();
      }
      
      public function clearSkey() : void
      {
         this.skey$field = null;
      }
      
      public function get hasSkey() : Boolean
      {
         return this.skey$field != null;
      }
      
      public function set skey(param1:String) : void
      {
         this.skey$field = param1;
      }
      
      public function get skey() : String
      {
         return this.skey$field;
      }
      
      public function clearSeperateSkey() : void
      {
         this.seperate_skey$field = null;
      }
      
      public function get hasSeperateSkey() : Boolean
      {
         return this.seperate_skey$field != null;
      }
      
      public function set seperateSkey(param1:String) : void
      {
         this.seperate_skey$field = param1;
      }
      
      public function get seperateSkey() : String
      {
         return this.seperate_skey$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSkey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.skey$field);
         }
         if(this.hasSeperateSkey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.seperate_skey$field);
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
