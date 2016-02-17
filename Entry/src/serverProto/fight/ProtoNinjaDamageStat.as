package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.formationBase.ProtoSecondAwakeInfoList;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaDamageStat extends Message
   {
      
      public static const NINJA_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_id","ninjaId",1 << 3 | WireType.VARINT);
      
      public static const NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_level","ninjaLevel",2 << 3 | WireType.VARINT);
      
      public static const NINJA_STAR_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_star_level","ninjaStarLevel",3 << 3 | WireType.VARINT);
      
      public static const MAKE_DAMAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.make_damage","makeDamage",4 << 3 | WireType.VARINT);
      
      public static const AFFORD_DAMAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.afford_damage","affordDamage",5 << 3 | WireType.VARINT);
      
      public static const NINJA_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_awaken_level","ninjaAwakenLevel",6 << 3 | WireType.VARINT);
      
      public static const NINJA_SECOND_AWAKEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoNinjaDamageStat.ninja_second_awaken_level","ninjaSecondAwakenLevel",7 << 3 | WireType.VARINT);
      
      public static const SECOND_AWAKEN_INFO_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoNinjaDamageStat.second_awaken_info_list","secondAwakenInfoList",8 << 3 | WireType.LENGTH_DELIMITED,ProtoSecondAwakeInfoList);
       
      public var ninjaId:int;
      
      private var ninja_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var ninja_star_level$field:int;
      
      private var make_damage$field:int;
      
      private var afford_damage$field:int;
      
      private var ninja_awaken_level$field:int;
      
      private var ninja_second_awaken_level$field:int;
      
      private var second_awaken_info_list$field:ProtoSecondAwakeInfoList;
      
      public function ProtoNinjaDamageStat()
      {
         super();
      }
      
      public function clearNinjaLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.ninja_level$field = new int();
      }
      
      public function get hasNinjaLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set ninjaLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.ninja_level$field = param1;
      }
      
      public function get ninjaLevel() : int
      {
         return this.ninja_level$field;
      }
      
      public function clearNinjaStarLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.ninja_star_level$field = new int();
      }
      
      public function get hasNinjaStarLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set ninjaStarLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.ninja_star_level$field = param1;
      }
      
      public function get ninjaStarLevel() : int
      {
         return this.ninja_star_level$field;
      }
      
      public function clearMakeDamage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.make_damage$field = new int();
      }
      
      public function get hasMakeDamage() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set makeDamage(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.make_damage$field = param1;
      }
      
      public function get makeDamage() : int
      {
         return this.make_damage$field;
      }
      
      public function clearAffordDamage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.afford_damage$field = new int();
      }
      
      public function get hasAffordDamage() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set affordDamage(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.afford_damage$field = param1;
      }
      
      public function get affordDamage() : int
      {
         return this.afford_damage$field;
      }
      
      public function clearNinjaAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.ninja_awaken_level$field = new int();
      }
      
      public function get hasNinjaAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set ninjaAwakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.ninja_awaken_level$field = param1;
      }
      
      public function get ninjaAwakenLevel() : int
      {
         return this.ninja_awaken_level$field;
      }
      
      public function clearNinjaSecondAwakenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.ninja_second_awaken_level$field = new int();
      }
      
      public function get hasNinjaSecondAwakenLevel() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set ninjaSecondAwakenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.ninja_second_awaken_level$field = param1;
      }
      
      public function get ninjaSecondAwakenLevel() : int
      {
         return this.ninja_second_awaken_level$field;
      }
      
      public function clearSecondAwakenInfoList() : void
      {
         this.second_awaken_info_list$field = null;
      }
      
      public function get hasSecondAwakenInfoList() : Boolean
      {
         return this.second_awaken_info_list$field != null;
      }
      
      public function set secondAwakenInfoList(param1:ProtoSecondAwakeInfoList) : void
      {
         this.second_awaken_info_list$field = param1;
      }
      
      public function get secondAwakenInfoList() : ProtoSecondAwakeInfoList
      {
         return this.second_awaken_info_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.ninjaId);
         if(this.hasNinjaLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_level$field);
         }
         if(this.hasNinjaStarLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.ninja_star_level$field);
         }
         if(this.hasMakeDamage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.make_damage$field);
         }
         if(this.hasAffordDamage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.afford_damage$field);
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
         if(this.hasSecondAwakenInfoList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
