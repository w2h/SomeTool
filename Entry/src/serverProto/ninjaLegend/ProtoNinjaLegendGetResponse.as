package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendGetResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendGetResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PROTO_NINJA_LEGENED_DATA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendGetResponse.proto_ninja_legened_data","protoNinjaLegenedData",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendData);
      
      public static const CLIENT_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendGetResponse.client_type","clientType",3 << 3 | WireType.VARINT);
      
      public static const BASE_REWARD_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendGetResponse.base_reward_ary","baseRewardAry",4 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const EXTRA_REWARD_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendGetResponse.extra_reward_ary","extraRewardAry",5 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var proto_ninja_legened_data$field:serverProto.ninjaLegend.ProtoNinjaLegendData;
      
      private var client_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var baseRewardAry:Array;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var extraRewardAry:Array;
      
      public function ProtoNinjaLegendGetResponse()
      {
         this.baseRewardAry = [];
         this.extraRewardAry = [];
         super();
      }
      
      public function clearProtoNinjaLegenedData() : void
      {
         this.proto_ninja_legened_data$field = null;
      }
      
      public function get hasProtoNinjaLegenedData() : Boolean
      {
         return this.proto_ninja_legened_data$field != null;
      }
      
      public function set protoNinjaLegenedData(param1:serverProto.ninjaLegend.ProtoNinjaLegendData) : void
      {
         this.proto_ninja_legened_data$field = param1;
      }
      
      public function get protoNinjaLegenedData() : serverProto.ninjaLegend.ProtoNinjaLegendData
      {
         return this.proto_ninja_legened_data$field;
      }
      
      public function clearClientType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.client_type$field = new uint();
      }
      
      public function get hasClientType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set clientType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.client_type$field = param1;
      }
      
      public function get clientType() : uint
      {
         return this.client_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasProtoNinjaLegenedData)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_ninja_legened_data$field);
         }
         if(this.hasClientType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.client_type$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.baseRewardAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.baseRewardAry[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.extraRewardAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.extraRewardAry[_loc3_]);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
