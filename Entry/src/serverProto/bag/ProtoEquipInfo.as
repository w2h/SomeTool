package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.num","num",2 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.level","level",3 << 3 | WireType.VARINT);
      
      public static const INLAY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipInfo.inlay","inlay",4 << 3 | WireType.LENGTH_DELIMITED,ProtoJadeInfo);
      
      public static const SEQUENCE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.bag.ProtoEquipInfo.sequence","sequence",5 << 3 | WireType.VARINT);
      
      public static const FORGE_ATTR:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.bag.ProtoEquipInfo.forge_attr","forgeAttr",6 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipInfo.index","index",7 << 3 | WireType.VARINT);
      
      public static const FORGE_QUALITY_ATTR:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.bag.ProtoEquipInfo.forge_quality_attr","forgeQualityAttr",8 << 3 | WireType.VARINT);
      
      public static const FORGE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoEquipInfo.forge_level","forgeLevel",9 << 3 | WireType.VARINT);
      
      public static const INLAY_STONE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipInfo.inlay_stone","inlayStone",10 << 3 | WireType.LENGTH_DELIMITED,ProtoBagStoneInfo);
      
      public static const FORGE_SURMOUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoEquipInfo.forge_surmount","forgeSurmount",11 << 3 | WireType.VARINT);
      
      public static const PROTO_FUMO_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipInfo.proto_fumo_info","protoFumoInfo",12 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipFumoInfo);
       
      public var id:uint;
      
      public var num:uint;
      
      public var level:uint;
      
      [ArrayElementType("serverProto.bag.ProtoJadeInfo")]
      public var inlay:Array;
      
      private var sequence$field:UInt64;
      
      [ArrayElementType("int")]
      public var forgeAttr:Array;
      
      public var index:uint;
      
      [ArrayElementType("int")]
      public var forgeQualityAttr:Array;
      
      private var forge_level$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.bag.ProtoBagStoneInfo")]
      public var inlayStone:Array;
      
      private var forge_surmount$field:int;
      
      private var proto_fumo_info$field:serverProto.bag.ProtoEquipFumoInfo;
      
      public function ProtoEquipInfo()
      {
         this.inlay = [];
         this.forgeAttr = [];
         this.forgeQualityAttr = [];
         this.inlayStone = [];
         super();
      }
      
      public function clearSequence() : void
      {
         this.sequence$field = null;
      }
      
      public function get hasSequence() : Boolean
      {
         return this.sequence$field != null;
      }
      
      public function set sequence(param1:UInt64) : void
      {
         this.sequence$field = param1;
      }
      
      public function get sequence() : UInt64
      {
         return this.sequence$field;
      }
      
      public function clearForgeLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.forge_level$field = new int();
      }
      
      public function get hasForgeLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set forgeLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.forge_level$field = param1;
      }
      
      public function get forgeLevel() : int
      {
         return this.forge_level$field;
      }
      
      public function clearForgeSurmount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.forge_surmount$field = new int();
      }
      
      public function get hasForgeSurmount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set forgeSurmount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.forge_surmount$field = param1;
      }
      
      public function get forgeSurmount() : int
      {
         return this.forge_surmount$field;
      }
      
      public function clearProtoFumoInfo() : void
      {
         this.proto_fumo_info$field = null;
      }
      
      public function get hasProtoFumoInfo() : Boolean
      {
         return this.proto_fumo_info$field != null;
      }
      
      public function set protoFumoInfo(param1:serverProto.bag.ProtoEquipFumoInfo) : void
      {
         this.proto_fumo_info$field = param1;
      }
      
      public function get protoFumoInfo() : serverProto.bag.ProtoEquipFumoInfo
      {
         return this.proto_fumo_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc6_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.num);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.level);
         var _loc2_:uint = 0;
         while(_loc2_ < this.inlay.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.inlay[_loc2_]);
            _loc2_++;
         }
         if(this.hasSequence)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT64(param1,this.sequence$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.forgeAttr.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.forgeAttr[_loc3_]);
            _loc3_++;
         }
         WriteUtils.writeTag(param1,WireType.VARINT,7);
         WriteUtils.write$TYPE_UINT32(param1,this.index);
         var _loc4_:uint = 0;
         while(_loc4_ < this.forgeQualityAttr.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.forgeQualityAttr[_loc4_]);
            _loc4_++;
         }
         if(this.hasForgeLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_INT32(param1,this.forge_level$field);
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.inlayStone.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.inlayStone[_loc5_]);
            _loc5_++;
         }
         if(this.hasForgeSurmount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.forge_surmount$field);
         }
         if(this.hasProtoFumoInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.proto_fumo_info$field);
         }
         for(_loc6_ in this)
         {
            super.writeUnknown(param1,_loc6_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
