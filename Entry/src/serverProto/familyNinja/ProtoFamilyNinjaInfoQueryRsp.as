package serverProto.familyNinja
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaInfoQueryRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.familyNinja.ProtoFamilyNinjaInfoQueryRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TOTAL_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoQueryRsp.total_level","totalLevel",2 << 3 | WireType.VARINT);
      
      public static const NINJA_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.familyNinja.ProtoFamilyNinjaInfoQueryRsp.ninja_list","ninjaList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoFamilyNinjaInfoList);
      
      public static const REST_ORDER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfoQueryRsp.rest_order_num","restOrderNum",4 << 3 | WireType.VARINT);
      
      public static const PROTO_FAMILY_NINJA_TOTAL_CONF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.familyNinja.ProtoFamilyNinjaInfoQueryRsp.proto_family_ninja_total_conf","protoFamilyNinjaTotalConf",5 << 3 | WireType.LENGTH_DELIMITED,ProtoFamilyNinjaTotalConf);
       
      public var retInfo:ProtoRetInfo;
      
      private var total_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var ninja_list$field:serverProto.familyNinja.ProtoFamilyNinjaInfoList;
      
      private var rest_order_num$field:uint;
      
      private var proto_family_ninja_total_conf$field:serverProto.familyNinja.ProtoFamilyNinjaTotalConf;
      
      public function ProtoFamilyNinjaInfoQueryRsp()
      {
         super();
      }
      
      public function clearTotalLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_level$field = new uint();
      }
      
      public function get hasTotalLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_level$field = param1;
      }
      
      public function get totalLevel() : uint
      {
         return this.total_level$field;
      }
      
      public function clearNinjaList() : void
      {
         this.ninja_list$field = null;
      }
      
      public function get hasNinjaList() : Boolean
      {
         return this.ninja_list$field != null;
      }
      
      public function set ninjaList(param1:serverProto.familyNinja.ProtoFamilyNinjaInfoList) : void
      {
         this.ninja_list$field = param1;
      }
      
      public function get ninjaList() : serverProto.familyNinja.ProtoFamilyNinjaInfoList
      {
         return this.ninja_list$field;
      }
      
      public function clearRestOrderNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.rest_order_num$field = new uint();
      }
      
      public function get hasRestOrderNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set restOrderNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.rest_order_num$field = param1;
      }
      
      public function get restOrderNum() : uint
      {
         return this.rest_order_num$field;
      }
      
      public function clearProtoFamilyNinjaTotalConf() : void
      {
         this.proto_family_ninja_total_conf$field = null;
      }
      
      public function get hasProtoFamilyNinjaTotalConf() : Boolean
      {
         return this.proto_family_ninja_total_conf$field != null;
      }
      
      public function set protoFamilyNinjaTotalConf(param1:serverProto.familyNinja.ProtoFamilyNinjaTotalConf) : void
      {
         this.proto_family_ninja_total_conf$field = param1;
      }
      
      public function get protoFamilyNinjaTotalConf() : serverProto.familyNinja.ProtoFamilyNinjaTotalConf
      {
         return this.proto_family_ninja_total_conf$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasTotalLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.total_level$field);
         }
         if(this.hasNinjaList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_list$field);
         }
         if(this.hasRestOrderNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_order_num$field);
         }
         if(this.hasProtoFamilyNinjaTotalConf)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_family_ninja_total_conf$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
