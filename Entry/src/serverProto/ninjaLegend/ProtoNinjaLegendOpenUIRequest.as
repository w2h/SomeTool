package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendOpenUIRequest extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaLegend.ProtoNinjaLegendOpenUIRequest.type","type",1 << 3 | WireType.VARINT,ProtoNinjaLegendUIType);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendOpenUIRequest.ninja_id","ninjaId",2 << 3 | WireType.VARINT);
      
      public static const ENDING_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendOpenUIRequest.ending_id","endingId",3 << 3 | WireType.VARINT);
       
      private var type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var ninja_id$field:uint;
      
      private var ending_id$field:uint;
      
      public function ProtoNinjaLegendOpenUIRequest()
      {
         super();
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.type$field = new int();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set type(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.type$field = param1;
      }
      
      public function get type() : int
      {
         return this.type$field;
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninja_id$field = new uint();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : uint
      {
         return this.ninja_id$field;
      }
      
      public function clearEndingId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ending_id$field = new uint();
      }
      
      public function get hasEndingId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set endingId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ending_id$field = param1;
      }
      
      public function get endingId() : uint
      {
         return this.ending_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.type$field);
         }
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_id$field);
         }
         if(this.hasEndingId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.ending_id$field);
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
