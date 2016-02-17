package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHintInfo extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoHintInfo.type","type",1 << 3 | WireType.VARINT,HintType);
      
      public static const ARG:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoHintInfo.arg","arg",2 << 3 | WireType.VARINT);
       
      public var type:int;
      
      private var arg$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoHintInfo()
      {
         super();
      }
      
      public function clearArg() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.arg$field = new int();
      }
      
      public function get hasArg() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set arg(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.arg$field = param1;
      }
      
      public function get arg() : int
      {
         return this.arg$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasArg)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.arg$field);
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
