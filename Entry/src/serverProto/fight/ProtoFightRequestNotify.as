package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFightRequestNotify extends Message
   {
      
      public static const PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightRequestNotify.player","player",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.fight.ProtoFightRequestNotify.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.max_hp","maxHp",3 << 3 | WireType.VARINT);
      
      public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.current_hp","currentHp",4 << 3 | WireType.VARINT);
      
      public static const CHAKRA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.chakra","chakra",5 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoFightRequestNotify.level","level",6 << 3 | WireType.VARINT);
       
      public var player:ProtoPlayerKey;
      
      private var name$field:String;
      
      private var max_hp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var current_hp$field:int;
      
      private var chakra$field:int;
      
      private var level$field:int;
      
      public function ProtoFightRequestNotify()
      {
         super();
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearMaxHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.max_hp$field = new int();
      }
      
      public function get hasMaxHp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set maxHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.max_hp$field = param1;
      }
      
      public function get maxHp() : int
      {
         return this.max_hp$field;
      }
      
      public function clearCurrentHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.current_hp$field = new int();
      }
      
      public function get hasCurrentHp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currentHp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.current_hp$field = param1;
      }
      
      public function get currentHp() : int
      {
         return this.current_hp$field;
      }
      
      public function clearChakra() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.chakra$field = new int();
      }
      
      public function get hasChakra() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set chakra(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.chakra$field = param1;
      }
      
      public function get chakra() : int
      {
         return this.chakra$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.player);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasMaxHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.max_hp$field);
         }
         if(this.hasCurrentHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.current_hp$field);
         }
         if(this.hasChakra)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.chakra$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
