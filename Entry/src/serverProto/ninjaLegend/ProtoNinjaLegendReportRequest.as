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
   
   public final class ProtoNinjaLegendReportRequest extends Message
   {
      
      public static const NODE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendReportRequest.node","node",1 << 3 | WireType.VARINT);
      
      public static const ENDING:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendReportRequest.ending","ending",2 << 3 | WireType.VARINT);
       
      private var node$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var ending$field:uint;
      
      public function ProtoNinjaLegendReportRequest()
      {
         super();
      }
      
      public function clearNode() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.node$field = new uint();
      }
      
      public function get hasNode() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set node(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.node$field = param1;
      }
      
      public function get node() : uint
      {
         return this.node$field;
      }
      
      public function clearEnding() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ending$field = new uint();
      }
      
      public function get hasEnding() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ending(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ending$field = param1;
      }
      
      public function get ending() : uint
      {
         return this.ending$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNode)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.node$field);
         }
         if(this.hasEnding)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.ending$field);
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
