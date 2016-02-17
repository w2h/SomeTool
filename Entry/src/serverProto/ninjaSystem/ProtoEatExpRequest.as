package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEatExpRequest extends Message
   {
      
      public static const EAT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.ninjaSystem.ProtoEatExpRequest.eat_type","eatType",1 << 3 | WireType.VARINT,ProtoEatExpType);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpRequest.item_id","itemId",2 << 3 | WireType.VARINT);
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpRequest.ninja_seq","ninjaSeq",3 << 3 | WireType.VARINT);
      
      public static const ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpRequest.item_num","itemNum",4 << 3 | WireType.VARINT);
      
      public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpRequest.level","level",5 << 3 | WireType.VARINT);
       
      public var eatType:int;
      
      public var itemId:int;
      
      public var ninjaSeq:int;
      
      private var item_num$field:int;
      
      private var hasField$0:uint = 0;
      
      private var level$field:int;
      
      public function ProtoEatExpRequest()
      {
         super();
      }
      
      public function clearItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.item_num$field = new int();
      }
      
      public function get hasItemNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set itemNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.item_num$field = param1;
      }
      
      public function get itemNum() : int
      {
         return this.item_num$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.eatType);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.itemId);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.ninjaSeq);
         if(this.hasItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.item_num$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
