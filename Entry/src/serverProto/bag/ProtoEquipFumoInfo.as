package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEquipFumoInfo extends Message
   {
      
      public static const FUMO_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoInfo.fumo_level","fumoLevel",1 << 3 | WireType.VARINT);
      
      public static const MAX_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoInfo.max_level","maxLevel",2 << 3 | WireType.VARINT);
      
      public static const BLESS_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoInfo.bless_value","blessValue",3 << 3 | WireType.VARINT);
      
      public static const MAX_BLESS_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoInfo.max_bless_value","maxBlessValue",4 << 3 | WireType.VARINT);
      
      public static const LEVEL_ATTR:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipFumoInfo.level_attr","levelAttr",5 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipFumoLevelAttr);
      
      public static const INLAY_INFO_ARY:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.bag.ProtoEquipFumoInfo.inlay_info_ary","inlayInfoAry",6 << 3 | WireType.LENGTH_DELIMITED,ProtoEquipFumoInlayInfo);
      
      public static const TMP_MAX_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoEquipFumoInfo.tmp_max_level","tmpMaxLevel",7 << 3 | WireType.VARINT);
       
      private var fumo_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var max_level$field:uint;
      
      private var bless_value$field:uint;
      
      private var max_bless_value$field:uint;
      
      private var level_attr$field:serverProto.bag.ProtoEquipFumoLevelAttr;
      
      [ArrayElementType("serverProto.bag.ProtoEquipFumoInlayInfo")]
      public var inlayInfoAry:Array;
      
      private var tmp_max_level$field:uint;
      
      public function ProtoEquipFumoInfo()
      {
         this.inlayInfoAry = [];
         super();
      }
      
      public function clearFumoLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.fumo_level$field = new uint();
      }
      
      public function get hasFumoLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fumoLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.fumo_level$field = param1;
      }
      
      public function get fumoLevel() : uint
      {
         return this.fumo_level$field;
      }
      
      public function clearMaxLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.max_level$field = new uint();
      }
      
      public function get hasMaxLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set maxLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.max_level$field = param1;
      }
      
      public function get maxLevel() : uint
      {
         return this.max_level$field;
      }
      
      public function clearBlessValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.bless_value$field = new uint();
      }
      
      public function get hasBlessValue() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set blessValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.bless_value$field = param1;
      }
      
      public function get blessValue() : uint
      {
         return this.bless_value$field;
      }
      
      public function clearMaxBlessValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.max_bless_value$field = new uint();
      }
      
      public function get hasMaxBlessValue() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set maxBlessValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.max_bless_value$field = param1;
      }
      
      public function get maxBlessValue() : uint
      {
         return this.max_bless_value$field;
      }
      
      public function clearLevelAttr() : void
      {
         this.level_attr$field = null;
      }
      
      public function get hasLevelAttr() : Boolean
      {
         return this.level_attr$field != null;
      }
      
      public function set levelAttr(param1:serverProto.bag.ProtoEquipFumoLevelAttr) : void
      {
         this.level_attr$field = param1;
      }
      
      public function get levelAttr() : serverProto.bag.ProtoEquipFumoLevelAttr
      {
         return this.level_attr$field;
      }
      
      public function clearTmpMaxLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.tmp_max_level$field = new uint();
      }
      
      public function get hasTmpMaxLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set tmpMaxLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.tmp_max_level$field = param1;
      }
      
      public function get tmpMaxLevel() : uint
      {
         return this.tmp_max_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasFumoLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.fumo_level$field);
         }
         if(this.hasMaxLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.max_level$field);
         }
         if(this.hasBlessValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.bless_value$field);
         }
         if(this.hasMaxBlessValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.max_bless_value$field);
         }
         if(this.hasLevelAttr)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.level_attr$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.inlayInfoAry.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.inlayInfoAry[_loc2_]);
            _loc2_++;
         }
         if(this.hasTmpMaxLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.tmp_max_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
