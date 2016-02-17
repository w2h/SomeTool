package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSecondAwakenResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoSecondAwakenResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NEW_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoSecondAwakenResponse.new_ninja","newNinja",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
      
      public static const SECOND_AWAKEN_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaSystem.ProtoSecondAwakenResponse.second_awaken_count","secondAwakenCount",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var new_ninja$field:ProtoNinjaInfo;
      
      private var second_awaken_count$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSecondAwakenResponse()
      {
         super();
      }
      
      public function clearNewNinja() : void
      {
         this.new_ninja$field = null;
      }
      
      public function get hasNewNinja() : Boolean
      {
         return this.new_ninja$field != null;
      }
      
      public function set newNinja(param1:ProtoNinjaInfo) : void
      {
         this.new_ninja$field = param1;
      }
      
      public function get newNinja() : ProtoNinjaInfo
      {
         return this.new_ninja$field;
      }
      
      public function clearSecondAwakenCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.second_awaken_count$field = new int();
      }
      
      public function get hasSecondAwakenCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set secondAwakenCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.second_awaken_count$field = param1;
      }
      
      public function get secondAwakenCount() : int
      {
         return this.second_awaken_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNewNinja)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.new_ninja$field);
         }
         if(this.hasSecondAwakenCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.second_awaken_count$field);
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
