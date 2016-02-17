package serverProto.guild
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
   
   public final class ProtoGvGPlayerNotify extends Message
   {
      
      public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGvGPlayerNotify.reason","reason",1 << 3 | WireType.VARINT,ProtoGvGPlayerNotifyReason);
      
      public static const MSG:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGvGPlayerNotify.msg","msg",2 << 3 | WireType.LENGTH_DELIMITED);
       
      private var reason$field:int;
      
      private var hasField$0:uint = 0;
      
      private var msg$field:String;
      
      public function ProtoGvGPlayerNotify()
      {
         super();
      }
      
      public function clearReason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.reason$field = new int();
      }
      
      public function get hasReason() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set reason(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.reason$field = param1;
      }
      
      public function get reason() : int
      {
         return this.reason$field;
      }
      
      public function clearMsg() : void
      {
         this.msg$field = null;
      }
      
      public function get hasMsg() : Boolean
      {
         return this.msg$field != null;
      }
      
      public function set msg(param1:String) : void
      {
         this.msg$field = param1;
      }
      
      public function get msg() : String
      {
         return this.msg$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasReason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.reason$field);
         }
         if(this.hasMsg)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.msg$field);
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
