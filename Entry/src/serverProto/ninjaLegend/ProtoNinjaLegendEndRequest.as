package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendEndRequest extends Message
   {
      
      public static const FAVOUR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndRequest.favour","favour",1 << 3 | WireType.VARINT);
      
      public static const NODE_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndRequest.node_ary","nodeAry",2 << 3 | WireType.VARINT);
      
      public static const REASON:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaLegend.ProtoNinjaLegendEndRequest.reason","reason",3 << 3 | WireType.VARINT,ProtoNinjaLegendEndReason);
      
      public static const ENDING_ARY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendEndRequest.ending_ary","endingAry",4 << 3 | WireType.VARINT);
       
      private var favour$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("uint")]
      public var nodeAry:Array;
      
      private var reason$field:int;
      
      [ArrayElementType("uint")]
      public var endingAry:Array;
      
      public function ProtoNinjaLegendEndRequest()
      {
         this.nodeAry = [];
         this.endingAry = [];
         super();
      }
      
      public function clearFavour() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.favour$field = new int();
      }
      
      public function get hasFavour() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set favour(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.favour$field = param1;
      }
      
      public function get favour() : int
      {
         return this.favour$field;
      }
      
      public function clearReason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.reason$field = new int();
      }
      
      public function get hasReason() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set reason(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.reason$field = param1;
      }
      
      public function get reason() : int
      {
         return this.reason$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasFavour)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.favour$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.nodeAry.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.nodeAry[_loc2_]);
            _loc2_++;
         }
         if(this.hasReason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.reason$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.endingAry.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.endingAry[_loc3_]);
            _loc3_++;
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
