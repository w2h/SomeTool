package serverProto.familyNinja
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFamilyNinjaInfo extends Message
   {
      
      public static const CLASS_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.familyNinja.ProtoFamilyNinjaInfo.class_id","classId",1 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfo.level","level",2 << 3 | WireType.VARINT);
      
      public static const FAVOUR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfo.favour","favour",3 << 3 | WireType.VARINT);
      
      public static const ORDER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.familyNinja.ProtoFamilyNinjaInfo.order_time","orderTime",4 << 3 | WireType.VARINT);
      
      public static const REFRESH_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.familyNinja.ProtoFamilyNinjaInfo.refresh_flag","refreshFlag",5 << 3 | WireType.VARINT);
      
      public static const CHAT_FLAG:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.familyNinja.ProtoFamilyNinjaInfo.chat_flag","chatFlag",6 << 3 | WireType.VARINT);
      
      public static const LOCATE_X:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.familyNinja.ProtoFamilyNinjaInfo.locate_x","locateX",7 << 3 | WireType.VARINT);
      
      public static const LOCATE_Y:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.familyNinja.ProtoFamilyNinjaInfo.locate_y","locateY",8 << 3 | WireType.VARINT);
      
      public static const PROTO_FAMILY_NINJA_CONF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.familyNinja.ProtoFamilyNinjaInfo.proto_family_ninja_conf","protoFamilyNinjaConf",9 << 3 | WireType.LENGTH_DELIMITED,ProtoFamilyNinjaConf);
       
      public var classId:int;
      
      public var level:uint;
      
      public var favour:uint;
      
      public var orderTime:uint;
      
      public var refreshFlag:Boolean;
      
      public var chatFlag:Boolean;
      
      private var locate_x$field:int;
      
      private var hasField$0:uint = 0;
      
      private var locate_y$field:int;
      
      private var proto_family_ninja_conf$field:serverProto.familyNinja.ProtoFamilyNinjaConf;
      
      public function ProtoFamilyNinjaInfo()
      {
         super();
      }
      
      public function clearLocateX() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.locate_x$field = new int();
      }
      
      public function get hasLocateX() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set locateX(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.locate_x$field = param1;
      }
      
      public function get locateX() : int
      {
         return this.locate_x$field;
      }
      
      public function clearLocateY() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.locate_y$field = new int();
      }
      
      public function get hasLocateY() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set locateY(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.locate_y$field = param1;
      }
      
      public function get locateY() : int
      {
         return this.locate_y$field;
      }
      
      public function clearProtoFamilyNinjaConf() : void
      {
         this.proto_family_ninja_conf$field = null;
      }
      
      public function get hasProtoFamilyNinjaConf() : Boolean
      {
         return this.proto_family_ninja_conf$field != null;
      }
      
      public function set protoFamilyNinjaConf(param1:serverProto.familyNinja.ProtoFamilyNinjaConf) : void
      {
         this.proto_family_ninja_conf$field = param1;
      }
      
      public function get protoFamilyNinjaConf() : serverProto.familyNinja.ProtoFamilyNinjaConf
      {
         return this.proto_family_ninja_conf$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.classId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.level);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.favour);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.orderTime);
         WriteUtils.writeTag(param1,WireType.VARINT,5);
         WriteUtils.write$TYPE_BOOL(param1,this.refreshFlag);
         WriteUtils.writeTag(param1,WireType.VARINT,6);
         WriteUtils.write$TYPE_BOOL(param1,this.chatFlag);
         if(this.hasLocateX)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.locate_x$field);
         }
         if(this.hasLocateY)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.locate_y$field);
         }
         if(this.hasProtoFamilyNinjaConf)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_family_ninja_conf$field);
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
          * Error type: IndexOutOfBoundsException (Index: 9, Size: 9)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
