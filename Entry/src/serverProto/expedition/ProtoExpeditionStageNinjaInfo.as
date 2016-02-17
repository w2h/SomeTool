package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoExpeditionStageNinjaInfo extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.ninja_level","ninjaLevel",2 << 3 | WireType.VARINT);
      
      public static const NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.ninja_hp","ninjaHp",3 << 3 | WireType.VARINT);
      
      public static const MAX_NINJA_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.max_ninja_hp","maxNinjaHp",4 << 3 | WireType.VARINT);
      
      public static const STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.star_level","starLevel",5 << 3 | WireType.VARINT);
      
      public static const AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.awaken_level","awakenLevel",6 << 3 | WireType.VARINT);
      
      public static const SECOND_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoExpeditionStageNinjaInfo.second_awaken_level","secondAwakenLevel",7 << 3 | WireType.VARINT);
       
      public var ninjaId:int;
      
      public var ninjaLevel:int;
      
      private var ninja_hp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var max_ninja_hp$field:int;
      
      private var star_level$field:int;
      
      private var awaken_level$field:int;
      
      private var second_awaken_level$field:int;
      
      public function ProtoExpeditionStageNinjaInfo()
      {
         super();
      }
      
      public function clearNinjaHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_hp$field = new int();
      }
      
      public function get hasNinjaHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_hp$field = param1;
      }
      
      public function get ninjaHp() : int
      {
         return this.ninja_hp$field;
      }
      
      public function clearMaxNinjaHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.max_ninja_hp$field = new int();
      }
      
      public function get hasMaxNinjaHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set maxNinjaHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.max_ninja_hp$field = param1;
      }
      
      public function get maxNinjaHp() : int
      {
         return this.max_ninja_hp$field;
      }
      
      public function clearStarLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.star_level$field = new int();
      }
      
      public function get hasStarLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set starLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.star_level$field = param1;
      }
      
      public function get starLevel() : int
      {
         return this.star_level$field;
      }
      
      public function clearAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.awaken_level$field = new int();
      }
      
      public function get hasAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set awakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.awaken_level$field = param1;
      }
      
      public function get awakenLevel() : int
      {
         return this.awaken_level$field;
      }
      
      public function clearSecondAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.second_awaken_level$field = new int();
      }
      
      public function get hasSecondAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set secondAwakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.second_awaken_level$field = param1;
      }
      
      public function get secondAwakenLevel() : int
      {
         return this.second_awaken_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.ninjaId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.ninjaLevel);
         if(this.hasNinjaHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_hp$field);
         }
         if(this.hasMaxNinjaHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.max_ninja_hp$field);
         }
         if(this.hasStarLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.star_level$field);
         }
         if(this.hasAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.awaken_level$field);
         }
         if(this.hasSecondAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.second_awaken_level$field);
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
