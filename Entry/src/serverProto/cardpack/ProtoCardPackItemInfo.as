package serverProto.cardpack
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCardPackItemInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPackItemInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPackItemInfo.num","num",2 << 3 | WireType.VARINT);
      
      public static const FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPackItemInfo.flag","flag",3 << 3 | WireType.VARINT);
      
      public static const CONVERSION_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.cardpack.ProtoCardPackItemInfo.conversion_num","conversionNum",4 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      public var num:uint;
      
      private var flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var conversion_num$field:uint;
      
      public function ProtoCardPackItemInfo()
      {
         super();
      }
      
      public function clearFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.flag$field = new uint();
      }
      
      public function get hasFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set flag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.flag$field = param1;
      }
      
      public function get flag() : uint
      {
         return this.flag$field;
      }
      
      public function clearConversionNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.conversion_num$field = new uint();
      }
      
      public function get hasConversionNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set conversionNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.conversion_num$field = param1;
      }
      
      public function get conversionNum() : uint
      {
         return this.conversion_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.num);
         if(this.hasFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.flag$field);
         }
         if(this.hasConversionNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.conversion_num$field);
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
