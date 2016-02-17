package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaBookInfo extends Message
   {
      
      public static const NINJA_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaBookInfo.ninja_state","ninjaState",1 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaSystem.ProtoNinjaBookInfo.ninja_id","ninjaId",3 << 3 | WireType.VARINT);
      
      public static const NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoNinjaBookInfo.ninja_info","ninjaInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
       
      public var ninjaState:uint;
      
      private var ninja_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var ninja_info$field:ProtoNinjaInfo;
      
      public function ProtoNinjaBookInfo()
      {
         super();
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_id$field = new uint();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : uint
      {
         return this.ninja_id$field;
      }
      
      public function clearNinjaInfo() : void
      {
         this.ninja_info$field = null;
      }
      
      public function get hasNinjaInfo() : Boolean
      {
         return this.ninja_info$field != null;
      }
      
      public function set ninjaInfo(param1:ProtoNinjaInfo) : void
      {
         this.ninja_info$field = param1;
      }
      
      public function get ninjaInfo() : ProtoNinjaInfo
      {
         return this.ninja_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaState);
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_id$field);
         }
         if(this.hasNinjaInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_info$field);
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
