package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaData extends Message
   {
      
      public static const FAMILY_NINJA_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoFamilyNinjaData.family_ninja_level","familyNinjaLevel",1 << 3 | WireType.VARINT);
      
      public static const FAIMLY_NINJA_FAVOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoFamilyNinjaData.faimly_ninja_favour","faimlyNinjaFavour",2 << 3 | WireType.VARINT);
      
      public static const PROTO_TOTAL_NINJA_FAVOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoFamilyNinjaData.proto_total_ninja_favour","protoTotalNinjaFavour",3 << 3 | WireType.VARINT);
       
      private var family_ninja_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var faimly_ninja_favour$field:uint;
      
      private var proto_total_ninja_favour$field:uint;
      
      public function ProtoFamilyNinjaData()
      {
         super();
      }
      
      public function clearFamilyNinjaLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.family_ninja_level$field = new uint();
      }
      
      public function get hasFamilyNinjaLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set familyNinjaLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.family_ninja_level$field = param1;
      }
      
      public function get familyNinjaLevel() : uint
      {
         return this.family_ninja_level$field;
      }
      
      public function clearFaimlyNinjaFavour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.faimly_ninja_favour$field = new uint();
      }
      
      public function get hasFaimlyNinjaFavour() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set faimlyNinjaFavour(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.faimly_ninja_favour$field = param1;
      }
      
      public function get faimlyNinjaFavour() : uint
      {
         return this.faimly_ninja_favour$field;
      }
      
      public function clearProtoTotalNinjaFavour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.proto_total_ninja_favour$field = new uint();
      }
      
      public function get hasProtoTotalNinjaFavour() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set protoTotalNinjaFavour(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.proto_total_ninja_favour$field = param1;
      }
      
      public function get protoTotalNinjaFavour() : uint
      {
         return this.proto_total_ninja_favour$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFamilyNinjaLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.family_ninja_level$field);
         }
         if(this.hasFaimlyNinjaFavour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.faimly_ninja_favour$field);
         }
         if(this.hasProtoTotalNinjaFavour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.proto_total_ninja_favour$field);
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
