package serverProto.tactic
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTacticStanceInfo extends Message
   {
      
      public static const POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticStanceInfo.pos","pos",1 << 3 | WireType.VARINT);
      
      public static const ADDITION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.tactic.ProtoTacticStanceInfo.addition_type","additionType",2 << 3 | WireType.VARINT,ProtoTacticAddtionType);
      
      public static const ADDITION_VAL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticStanceInfo.addition_val","additionVal",3 << 3 | WireType.VARINT);
      
      public static const NEXT_LEVEL_ADDITION_VAL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticStanceInfo.next_level_addition_val","nextLevelAdditionVal",4 << 3 | WireType.VARINT);
       
      public var pos:int;
      
      public var additionType:int;
      
      private var addition_val$field:int;
      
      private var hasField$0:uint = 0;
      
      private var next_level_addition_val$field:int;
      
      public function ProtoTacticStanceInfo()
      {
         super();
      }
      
      public function clearAdditionVal() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.addition_val$field = new int();
      }
      
      public function get hasAdditionVal() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set additionVal(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.addition_val$field = param1;
      }
      
      public function get additionVal() : int
      {
         return this.addition_val$field;
      }
      
      public function clearNextLevelAdditionVal() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.next_level_addition_val$field = new int();
      }
      
      public function get hasNextLevelAdditionVal() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set nextLevelAdditionVal(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.next_level_addition_val$field = param1;
      }
      
      public function get nextLevelAdditionVal() : int
      {
         return this.next_level_addition_val$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.pos);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.additionType);
         if(this.hasAdditionVal)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.addition_val$field);
         }
         if(this.hasNextLevelAdditionVal)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.next_level_addition_val$field);
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
