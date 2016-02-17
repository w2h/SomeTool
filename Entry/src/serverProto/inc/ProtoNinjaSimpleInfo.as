package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaSimpleInfo extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const NINJA_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_level","ninjaLevel",2 << 3 | WireType.VARINT);
      
      public static const NINJA_STAR_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_star_level","ninjaStarLevel",3 << 3 | WireType.VARINT);
      
      public static const NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_hp","ninjaHp",4 << 3 | WireType.VARINT);
      
      public static const MAX_NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNinjaSimpleInfo.max_ninja_hp","maxNinjaHp",5 << 3 | WireType.VARINT);
      
      public static const NINJA_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_awaken_level","ninjaAwakenLevel",6 << 3 | WireType.VARINT);
      
      public static const NINJA_SECOND_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNinjaSimpleInfo.ninja_second_awaken_level","ninjaSecondAwakenLevel",7 << 3 | WireType.VARINT);
       
      private var ninja_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var ninja_level$field:uint;
      
      private var ninja_star_level$field:uint;
      
      private var ninja_hp$field:int;
      
      private var max_ninja_hp$field:int;
      
      private var ninja_awaken_level$field:int;
      
      private var ninja_second_awaken_level$field:int;
      
      public function ProtoNinjaSimpleInfo()
      {
         super();
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_id$field = new uint();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : uint
      {
         return this.ninja_id$field;
      }
      
      public function clearNinjaLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninja_level$field = new uint();
      }
      
      public function get hasNinjaLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjaLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninja_level$field = param1;
      }
      
      public function get ninjaLevel() : uint
      {
         return this.ninja_level$field;
      }
      
      public function clearNinjaStarLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ninja_star_level$field = new uint();
      }
      
      public function get hasNinjaStarLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ninjaStarLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ninja_star_level$field = param1;
      }
      
      public function get ninjaStarLevel() : uint
      {
         return this.ninja_star_level$field;
      }
      
      public function clearNinjaHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.ninja_hp$field = new int();
      }
      
      public function get hasNinjaHp() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set ninjaHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.ninja_hp$field = param1;
      }
      
      public function get ninjaHp() : int
      {
         return this.ninja_hp$field;
      }
      
      public function clearMaxNinjaHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.max_ninja_hp$field = new int();
      }
      
      public function get hasMaxNinjaHp() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set maxNinjaHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.max_ninja_hp$field = param1;
      }
      
      public function get maxNinjaHp() : int
      {
         return this.max_ninja_hp$field;
      }
      
      public function clearNinjaAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.ninja_awaken_level$field = new int();
      }
      
      public function get hasNinjaAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set ninjaAwakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.ninja_awaken_level$field = param1;
      }
      
      public function get ninjaAwakenLevel() : int
      {
         return this.ninja_awaken_level$field;
      }
      
      public function clearNinjaSecondAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.ninja_second_awaken_level$field = new int();
      }
      
      public function get hasNinjaSecondAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set ninjaSecondAwakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.ninja_second_awaken_level$field = param1;
      }
      
      public function get ninjaSecondAwakenLevel() : int
      {
         return this.ninja_second_awaken_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_id$field);
         }
         if(this.hasNinjaLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_level$field);
         }
         if(this.hasNinjaStarLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.ninja_star_level$field);
         }
         if(this.hasNinjaHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_hp$field);
         }
         if(this.hasMaxNinjaHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.max_ninja_hp$field);
         }
         if(this.hasNinjaAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_awaken_level$field);
         }
         if(this.hasNinjaSecondAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_second_awaken_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
