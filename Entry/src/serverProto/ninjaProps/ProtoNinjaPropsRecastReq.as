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
   
   public final class ProtoNinjaPropsRecastReq extends Message
   {
      
      public static const DEST_NINJA_PROPS_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.dest_ninja_props_index","destNinjaPropsIndex",1 << 3 | WireType.VARINT);
      
      public static const SRC_NINJA_PROPS_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.src_ninja_props_index","srcNinjaPropsIndex",2 << 3 | WireType.VARINT);
      
      public static const DEST_PROPERTY_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.dest_property_index","destPropertyIndex",3 << 3 | WireType.VARINT);
      
      public static const SRC_PROPERTY_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.src_property_index","srcPropertyIndex",4 << 3 | WireType.VARINT);
      
      public static const USE_NINJA_PROPS_INDEX:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaProps.ProtoNinjaPropsRecastReq.use_ninja_props_index","useNinjaPropsIndex",5 << 3 | WireType.VARINT);
       
      private var dest_ninja_props_index$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var src_ninja_props_index$field:uint;
      
      private var dest_property_index$field:uint;
      
      private var src_property_index$field:uint;
      
      [ArrayElementType("uint")]
      public var useNinjaPropsIndex:Array;
      
      public function ProtoNinjaPropsRecastReq()
      {
         this.useNinjaPropsIndex = [];
         super();
      }
      
      public function clearDestNinjaPropsIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.dest_ninja_props_index$field = new uint();
      }
      
      public function get hasDestNinjaPropsIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set destNinjaPropsIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.dest_ninja_props_index$field = param1;
      }
      
      public function get destNinjaPropsIndex() : uint
      {
         return this.dest_ninja_props_index$field;
      }
      
      public function clearSrcNinjaPropsIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.src_ninja_props_index$field = new uint();
      }
      
      public function get hasSrcNinjaPropsIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set srcNinjaPropsIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.src_ninja_props_index$field = param1;
      }
      
      public function get srcNinjaPropsIndex() : uint
      {
         return this.src_ninja_props_index$field;
      }
      
      public function clearDestPropertyIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.dest_property_index$field = new uint();
      }
      
      public function get hasDestPropertyIndex() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set destPropertyIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.dest_property_index$field = param1;
      }
      
      public function get destPropertyIndex() : uint
      {
         return this.dest_property_index$field;
      }
      
      public function clearSrcPropertyIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.src_property_index$field = new uint();
      }
      
      public function get hasSrcPropertyIndex() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set srcPropertyIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.src_property_index$field = param1;
      }
      
      public function get srcPropertyIndex() : uint
      {
         return this.src_property_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasDestNinjaPropsIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.dest_ninja_props_index$field);
         }
         if(this.hasSrcNinjaPropsIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.src_ninja_props_index$field);
         }
         if(this.hasDestPropertyIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.dest_property_index$field);
         }
         if(this.hasSrcPropertyIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.src_property_index$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.useNinjaPropsIndex.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
