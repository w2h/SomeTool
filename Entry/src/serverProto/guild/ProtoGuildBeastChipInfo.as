package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildBeastChipInfo extends Message
   {
      
      public static const QUALITY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastChipInfo.quality","quality",1 << 3 | WireType.VARINT);
      
      public static const CHIP_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastChipInfo.chip_id","chipId",2 << 3 | WireType.VARINT);
      
      public static const CHIP_NUM:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastChipInfo.chip_num","chipNum",3 << 3 | WireType.VARINT);
      
      public static const CHAKRA_PRICE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildBeastChipInfo.chakra_price","chakraPrice",4 << 3 | WireType.VARINT);
       
      private var quality$field:int;
      
      private var hasField$0:uint = 0;
      
      private var chip_id$field:int;
      
      private var chip_num$field:int;
      
      private var chakra_price$field:int;
      
      public function ProtoGuildBeastChipInfo()
      {
         super();
      }
      
      public function clearQuality() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.quality$field = new int();
      }
      
      public function get hasQuality() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set quality(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.quality$field = param1;
      }
      
      public function get quality() : int
      {
         return this.quality$field;
      }
      
      public function clearChipId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.chip_id$field = new int();
      }
      
      public function get hasChipId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set chipId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.chip_id$field = param1;
      }
      
      public function get chipId() : int
      {
         return this.chip_id$field;
      }
      
      public function clearChipNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.chip_num$field = new int();
      }
      
      public function get hasChipNum() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set chipNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.chip_num$field = param1;
      }
      
      public function get chipNum() : int
      {
         return this.chip_num$field;
      }
      
      public function clearChakraPrice() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.chakra_price$field = new int();
      }
      
      public function get hasChakraPrice() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set chakraPrice(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.chakra_price$field = param1;
      }
      
      public function get chakraPrice() : int
      {
         return this.chakra_price$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasQuality)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.quality$field);
         }
         if(this.hasChipId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.chip_id$field);
         }
         if(this.hasChipNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.chip_num$field);
         }
         if(this.hasChakraPrice)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.chakra_price$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
