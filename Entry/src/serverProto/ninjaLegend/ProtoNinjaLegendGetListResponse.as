package serverProto.ninjaLegend
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaLegendGetListResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendGetListResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PROTO_NINJA_LEGEND_INFO_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaLegend.ProtoNinjaLegendGetListResponse.proto_ninja_legend_info_list","protoNinjaLegendInfoList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaLegendInfo);
      
      public static const SEND_TREASURE_NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendGetListResponse.send_treasure_ninja_id","sendTreasureNinjaId",3 << 3 | WireType.VARINT);
      
      public static const NEW_TREASURE_PROPERTY_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaLegend.ProtoNinjaLegendGetListResponse.new_treasure_property_level","newTreasurePropertyLevel",4 << 3 | WireType.VARINT);
      
      public static const NEED_NEW_GUIDE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.ninjaLegend.ProtoNinjaLegendGetListResponse.need_new_guide","needNewGuide",5 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.ninjaLegend.ProtoNinjaLegendInfo")]
      public var protoNinjaLegendInfoList:Array;
      
      private var send_treasure_ninja_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var new_treasure_property_level$field:uint;
      
      private var need_new_guide$field:Boolean;
      
      public function ProtoNinjaLegendGetListResponse()
      {
         this.protoNinjaLegendInfoList = [];
         super();
      }
      
      public function clearSendTreasureNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.send_treasure_ninja_id$field = new uint();
      }
      
      public function get hasSendTreasureNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set sendTreasureNinjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.send_treasure_ninja_id$field = param1;
      }
      
      public function get sendTreasureNinjaId() : uint
      {
         return this.send_treasure_ninja_id$field;
      }
      
      public function clearNewTreasurePropertyLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.new_treasure_property_level$field = new uint();
      }
      
      public function get hasNewTreasurePropertyLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set newTreasurePropertyLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.new_treasure_property_level$field = param1;
      }
      
      public function get newTreasurePropertyLevel() : uint
      {
         return this.new_treasure_property_level$field;
      }
      
      public function clearNeedNewGuide() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.need_new_guide$field = new Boolean();
      }
      
      public function get hasNeedNewGuide() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set needNewGuide(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.need_new_guide$field = param1;
      }
      
      public function get needNewGuide() : Boolean
      {
         return this.need_new_guide$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.protoNinjaLegendInfoList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.protoNinjaLegendInfoList[_loc2_]);
            _loc2_++;
         }
         if(this.hasSendTreasureNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.send_treasure_ninja_id$field);
         }
         if(this.hasNewTreasurePropertyLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.new_treasure_property_level$field);
         }
         if(this.hasNeedNewGuide)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.need_new_guide$field);
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
