package serverProto.formationBase
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaArrange extends Message
   {
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoNinjaArrange.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const LOCATION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.location","location",2 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.ninja_id","ninjaId",3 << 3 | WireType.VARINT);
      
      public static const HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.hp","hp",4 << 3 | WireType.VARINT);
      
      public static const ULIMIT_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.ulimit_hp","ulimitHp",5 << 3 | WireType.VARINT);
      
      public static const POS_QUEUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.pos_queue","posQueue",6 << 3 | WireType.VARINT);
      
      public static const STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.star_level","starLevel",7 << 3 | WireType.VARINT);
      
      public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.ninja_level","ninjaLevel",8 << 3 | WireType.VARINT);
      
      public static const AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.formationBase.ProtoNinjaArrange.awaken_level","awakenLevel",9 << 3 | WireType.VARINT);
      
      public static const SECOND_AWAKEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoNinjaArrange.second_awaken_level","secondAwakenLevel",10 << 3 | WireType.VARINT);
      
      public static const SECOND_AWAKEN_INFO_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.formationBase.ProtoNinjaArrange.second_awaken_info_list","secondAwakenInfoList",11 << 3 | WireType.LENGTH_DELIMITED,ProtoSecondAwakeInfoList);
       
      public var ninjaSeq:uint;
      
      public var location:int;
      
      private var ninja_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var hp$field:int;
      
      private var ulimit_hp$field:int;
      
      private var pos_queue$field:int;
      
      private var star_level$field:int;
      
      private var ninja_level$field:int;
      
      private var awaken_level$field:int;
      
      private var second_awaken_level$field:uint;
      
      private var second_awaken_info_list$field:serverProto.formationBase.ProtoSecondAwakeInfoList;
      
      public function ProtoNinjaArrange()
      {
         super();
      }
      
      public function clearNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_id$field = new int();
      }
      
      public function get hasNinjaId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_id$field = param1;
      }
      
      public function get ninjaId() : int
      {
         return this.ninja_id$field;
      }
      
      public function clearHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.hp$field = new int();
      }
      
      public function get hasHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set hp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.hp$field = param1;
      }
      
      public function get hp() : int
      {
         return this.hp$field;
      }
      
      public function clearUlimitHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.ulimit_hp$field = new int();
      }
      
      public function get hasUlimitHp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set ulimitHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.ulimit_hp$field = param1;
      }
      
      public function get ulimitHp() : int
      {
         return this.ulimit_hp$field;
      }
      
      public function clearPosQueue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.pos_queue$field = new int();
      }
      
      public function get hasPosQueue() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set posQueue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.pos_queue$field = param1;
      }
      
      public function get posQueue() : int
      {
         return this.pos_queue$field;
      }
      
      public function clearStarLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.star_level$field = new int();
      }
      
      public function get hasStarLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set starLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.star_level$field = param1;
      }
      
      public function get starLevel() : int
      {
         return this.star_level$field;
      }
      
      public function clearNinjaLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.ninja_level$field = new int();
      }
      
      public function get hasNinjaLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set ninjaLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.ninja_level$field = param1;
      }
      
      public function get ninjaLevel() : int
      {
         return this.ninja_level$field;
      }
      
      public function clearAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.awaken_level$field = new int();
      }
      
      public function get hasAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set awakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.awaken_level$field = param1;
      }
      
      public function get awakenLevel() : int
      {
         return this.awaken_level$field;
      }
      
      public function clearSecondAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.second_awaken_level$field = new uint();
      }
      
      public function get hasSecondAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set secondAwakenLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.second_awaken_level$field = param1;
      }
      
      public function get secondAwakenLevel() : uint
      {
         return this.second_awaken_level$field;
      }
      
      public function clearSecondAwakenInfoList() : void
      {
         this.second_awaken_info_list$field = null;
      }
      
      public function get hasSecondAwakenInfoList() : Boolean
      {
         return this.second_awaken_info_list$field != null;
      }
      
      public function set secondAwakenInfoList(param1:serverProto.formationBase.ProtoSecondAwakeInfoList) : void
      {
         this.second_awaken_info_list$field = param1;
      }
      
      public function get secondAwakenInfoList() : serverProto.formationBase.ProtoSecondAwakeInfoList
      {
         return this.second_awaken_info_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaSeq);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_SINT32(param1,this.location);
         if(this.hasNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_id$field);
         }
         if(this.hasHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.hp$field);
         }
         if(this.hasUlimitHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.ulimit_hp$field);
         }
         if(this.hasPosQueue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.pos_queue$field);
         }
         if(this.hasStarLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.star_level$field);
         }
         if(this.hasNinjaLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_level$field);
         }
         if(this.hasAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_SINT32(param1,this.awaken_level$field);
         }
         if(this.hasSecondAwakenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_UINT32(param1,this.second_awaken_level$field);
         }
         if(this.hasSecondAwakenInfoList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,11);
            WriteUtils.write$TYPE_MESSAGE(param1,this.second_awaken_info_list$field);
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
          * Error type: IndexOutOfBoundsException (Index: 11, Size: 11)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
