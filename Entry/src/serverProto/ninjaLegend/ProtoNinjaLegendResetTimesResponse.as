package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendResetTimesResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendResetTimesResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PROTO_NINJA_LEGEND_ZHANG_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendResetTimesResponse.proto_ninja_legend_zhang_data","protoNinjaLegendZhangData",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendZhangData);
       
      public var retInfo:ProtoRetInfo;
      
      private var proto_ninja_legend_zhang_data$field:serverProto.ninjaLegend.ProtoNinjaLegendZhangData;
      
      public function ProtoNinjaLegendResetTimesResponse()
      {
         super();
      }
      
      public function clearProtoNinjaLegendZhangData() : void
      {
         this.proto_ninja_legend_zhang_data$field = null;
      }
      
      public function get hasProtoNinjaLegendZhangData() : Boolean
      {
         return this.proto_ninja_legend_zhang_data$field != null;
      }
      
      public function set protoNinjaLegendZhangData(param1:serverProto.ninjaLegend.ProtoNinjaLegendZhangData) : void
      {
         this.proto_ninja_legend_zhang_data$field = param1;
      }
      
      public function get protoNinjaLegendZhangData() : serverProto.ninjaLegend.ProtoNinjaLegendZhangData
      {
         return this.proto_ninja_legend_zhang_data$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasProtoNinjaLegendZhangData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_ninja_legend_zhang_data$field);
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
