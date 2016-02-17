package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.baseInfo.ProtoNinjaInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendInfo extends Message
   {
      
      public static const PROTO_NINJA_LEGEND_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendInfo.proto_ninja_legend_data","protoNinjaLegendData",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendData);
      
      public static const IS_HAVE_NINJA:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.ninjaLegend.ProtoNinjaLegendInfo.is_have_ninja","isHaveNinja",2 << 3 | WireType.VARINT);
      
      public static const PROTO_CONF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendInfo.proto_conf","protoConf",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendConf);
      
      public static const NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendInfo.ninja_info","ninjaInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaInfo);
       
      private var proto_ninja_legend_data$field:serverProto.ninjaLegend.ProtoNinjaLegendData;
      
      private var is_have_ninja$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var proto_conf$field:serverProto.baseInfo.ProtoNinjaLegendConf;
      
      private var ninja_info$field:ProtoNinjaInfo;
      
      public function ProtoNinjaLegendInfo()
      {
         super();
      }
      
      public function clearProtoNinjaLegendData() : void
      {
         this.proto_ninja_legend_data$field = null;
      }
      
      public function get hasProtoNinjaLegendData() : Boolean
      {
         return this.proto_ninja_legend_data$field != null;
      }
      
      public function set protoNinjaLegendData(param1:serverProto.ninjaLegend.ProtoNinjaLegendData) : void
      {
         this.proto_ninja_legend_data$field = param1;
      }
      
      public function get protoNinjaLegendData() : serverProto.ninjaLegend.ProtoNinjaLegendData
      {
         return this.proto_ninja_legend_data$field;
      }
      
      public function clearIsHaveNinja() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_have_ninja$field = new Boolean();
      }
      
      public function get hasIsHaveNinja() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isHaveNinja(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_have_ninja$field = param1;
      }
      
      public function get isHaveNinja() : Boolean
      {
         return this.is_have_ninja$field;
      }
      
      public function clearProtoConf() : void
      {
         this.proto_conf$field = null;
      }
      
      public function get hasProtoConf() : Boolean
      {
         return this.proto_conf$field != null;
      }
      
      public function set protoConf(param1:serverProto.baseInfo.ProtoNinjaLegendConf) : void
      {
         this.proto_conf$field = param1;
      }
      
      public function get protoConf() : serverProto.baseInfo.ProtoNinjaLegendConf
      {
         return this.proto_conf$field;
      }
      
      public function clearNinjaInfo() : void
      {
         this.ninja_info$field = null;
      }
      
      public function get hasNinjaInfo() : Boolean
      {
         return this.ninja_info$field != null;
      }
      
      public function set ninjaInfo(param1:ProtoNinjaInfo) : void
      {
         this.ninja_info$field = param1;
      }
      
      public function get ninjaInfo() : ProtoNinjaInfo
      {
         return this.ninja_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasProtoNinjaLegendData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_ninja_legend_data$field);
         }
         if(this.hasIsHaveNinja)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.is_have_ninja$field);
         }
         if(this.hasProtoConf)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_conf$field);
         }
         if(this.hasNinjaInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_info$field);
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
