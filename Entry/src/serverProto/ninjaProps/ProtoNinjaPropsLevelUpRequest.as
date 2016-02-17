package serverProto.ninjaProps
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaPropsLevelUpRequest extends Message
   {
      
      public static const DEST_NINJA_PROPS_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpRequest.dest_ninja_props_index","destNinjaPropsIndex",2 << 3 | WireType.VARINT);
      
      public static const USE_NINJA_PROPS_INDEX:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpRequest.use_ninja_props_index","useNinjaPropsIndex",3 << 3 | WireType.VARINT);
       
      public var destNinjaPropsIndex:uint;
      
      [ArrayElementType("uint")]
      public var useNinjaPropsIndex:Array;
      
      public function ProtoNinjaPropsLevelUpRequest()
      {
         this.useNinjaPropsIndex = [];
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.destNinjaPropsIndex);
         var _loc2_:uint = 0;
         while(_loc2_ < this.useNinjaPropsIndex.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.useNinjaPropsIndex[_loc2_]);
            _loc2_++;
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
