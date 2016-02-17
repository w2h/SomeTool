package serverProto.equipment
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetEquipForgePropertyRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoGetEquipForgePropertyRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const LEVEL_ATTR:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.equipment.ProtoGetEquipForgePropertyRsp.level_attr","levelAttr",2 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipForgeLevelAttr);
      
      public static const BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.bless_value","blessValue",3 << 3 | WireType.VARINT);
      
      public static const MAX_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.max_bless_value","maxBlessValue",4 << 3 | WireType.VARINT);
      
      public static const FORGE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.forge_level","forgeLevel",5 << 3 | WireType.VARINT);
      
      public static const MAX_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.max_level","maxLevel",6 << 3 | WireType.VARINT);
      
      public static const LIMIT_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.limit_bless_value","limitBlessValue",7 << 3 | WireType.VARINT);
      
      public static const FORMER_BLESS_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.equipment.ProtoGetEquipForgePropertyRsp.former_bless_value","formerBlessValue",8 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var level_attr$field:serverProto.equipment.ProtoEquipForgeLevelAttr;
      
      private var bless_value$field:int;
      
      private var hasField$0:uint = 0;
      
      private var max_bless_value$field:int;
      
      private var forge_level$field:int;
      
      private var max_level$field:int;
      
      private var limit_bless_value$field:int;
      
      private var former_bless_value$field:int;
      
      public function ProtoGetEquipForgePropertyRsp()
      {
         super();
      }
      
      public function clearLevelAttr() : void
      {
         this.level_attr$field = null;
      }
      
      public function get hasLevelAttr() : Boolean
      {
         return this.level_attr$field != null;
      }
      
      public function set levelAttr(param1:serverProto.equipment.ProtoEquipForgeLevelAttr) : void
      {
         this.level_attr$field = param1;
      }
      
      public function get levelAttr() : serverProto.equipment.ProtoEquipForgeLevelAttr
      {
         return this.level_attr$field;
      }
      
      public function clearBlessValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.bless_value$field = new int();
      }
      
      public function get hasBlessValue() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set blessValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.bless_value$field = param1;
      }
      
      public function get blessValue() : int
      {
         return this.bless_value$field;
      }
      
      public function clearMaxBlessValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.max_bless_value$field = new int();
      }
      
      public function get hasMaxBlessValue() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set maxBlessValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.max_bless_value$field = param1;
      }
      
      public function get maxBlessValue() : int
      {
         return this.max_bless_value$field;
      }
      
      public function clearForgeLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.forge_level$field = new int();
      }
      
      public function get hasForgeLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set forgeLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.forge_level$field = param1;
      }
      
      public function get forgeLevel() : int
      {
         return this.forge_level$field;
      }
      
      public function clearMaxLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_level$field = new int();
      }
      
      public function get hasMaxLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_level$field = param1;
      }
      
      public function get maxLevel() : int
      {
         return this.max_level$field;
      }
      
      public function clearLimitBlessValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.limit_bless_value$field = new int();
      }
      
      public function get hasLimitBlessValue() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set limitBlessValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.limit_bless_value$field = param1;
      }
      
      public function get limitBlessValue() : int
      {
         return this.limit_bless_value$field;
      }
      
      public function clearFormerBlessValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.former_bless_value$field = new int();
      }
      
      public function get hasFormerBlessValue() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set formerBlessValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.former_bless_value$field = param1;
      }
      
      public function get formerBlessValue() : int
      {
         return this.former_bless_value$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasLevelAttr)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.level_attr$field);
         }
         if(this.hasBlessValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.bless_value$field);
         }
         if(this.hasMaxBlessValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.max_bless_value$field);
         }
         if(this.hasForgeLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.forge_level$field);
         }
         if(this.hasMaxLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.max_level$field);
         }
         if(this.hasLimitBlessValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.limit_bless_value$field);
         }
         if(this.hasFormerBlessValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_INT32(param1,this.former_bless_value$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
