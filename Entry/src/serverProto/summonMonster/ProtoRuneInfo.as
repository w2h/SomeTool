package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRuneInfo extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoRuneInfo.index","index",1 << 3 | WireType.VARINT);
      
      public static const RUNE_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoRuneInfo.rune_id","runeId",2 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoRuneInfo.exp","exp",3 << 3 | WireType.VARINT);
      
      public static const BASE_PROPERTY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoRuneInfo.base_property_info","basePropertyInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
       
      private var index$field:int;
      
      private var hasField$0:uint = 0;
      
      private var rune_id$field:int;
      
      private var exp$field:int;
      
      private var base_property_info$field:ProtoNaurtoAllPropertyInfo;
      
      public function ProtoRuneInfo()
      {
         super();
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.index$field = new int();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set index(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.index$field = param1;
      }
      
      public function get index() : int
      {
         return this.index$field;
      }
      
      public function clearRuneId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.rune_id$field = new int();
      }
      
      public function get hasRuneId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set runeId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.rune_id$field = param1;
      }
      
      public function get runeId() : int
      {
         return this.rune_id$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.exp$field = new int();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set exp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.exp$field = param1;
      }
      
      public function get exp() : int
      {
         return this.exp$field;
      }
      
      public function clearBasePropertyInfo() : void
      {
         this.base_property_info$field = null;
      }
      
      public function get hasBasePropertyInfo() : Boolean
      {
         return this.base_property_info$field != null;
      }
      
      public function set basePropertyInfo(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.base_property_info$field = param1;
      }
      
      public function get basePropertyInfo() : ProtoNaurtoAllPropertyInfo
      {
         return this.base_property_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.index$field);
         }
         if(this.hasRuneId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.rune_id$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.exp$field);
         }
         if(this.hasBasePropertyInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_property_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
