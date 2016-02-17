package serverProto.user
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTransfigurationInfo extends Message
   {
      
      public static const IS_TRANSFIGURATION:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoTransfigurationInfo.is_transfiguration","isTransfiguration",1 << 3 | WireType.VARINT);
      
      public static const REMAINDER_NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationInfo.remainder_ninja_id","remainderNinjaId",2 << 3 | WireType.VARINT);
      
      public static const REMAINDER_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationInfo.remainder_time","remainderTime",3 << 3 | WireType.VARINT);
      
      public static const TRANSFIGURATION_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationInfo.transfiguration_item_num","transfigurationItemNum",4 << 3 | WireType.VARINT);
       
      private var is_transfiguration$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var remainder_ninja_id$field:int;
      
      private var remainder_time$field:int;
      
      private var transfiguration_item_num$field:int;
      
      public function ProtoTransfigurationInfo()
      {
         super();
      }
      
      public function clearIsTransfiguration() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.is_transfiguration$field = new Boolean();
      }
      
      public function get hasIsTransfiguration() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set isTransfiguration(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.is_transfiguration$field = param1;
      }
      
      public function get isTransfiguration() : Boolean
      {
         return this.is_transfiguration$field;
      }
      
      public function clearRemainderNinjaId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remainder_ninja_id$field = new int();
      }
      
      public function get hasRemainderNinjaId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainderNinjaId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remainder_ninja_id$field = param1;
      }
      
      public function get remainderNinjaId() : int
      {
         return this.remainder_ninja_id$field;
      }
      
      public function clearRemainderTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.remainder_time$field = new int();
      }
      
      public function get hasRemainderTime() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set remainderTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.remainder_time$field = param1;
      }
      
      public function get remainderTime() : int
      {
         return this.remainder_time$field;
      }
      
      public function clearTransfigurationItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.transfiguration_item_num$field = new int();
      }
      
      public function get hasTransfigurationItemNum() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set transfigurationItemNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.transfiguration_item_num$field = param1;
      }
      
      public function get transfigurationItemNum() : int
      {
         return this.transfiguration_item_num$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasIsTransfiguration)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.is_transfiguration$field);
         }
         if(this.hasRemainderNinjaId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_ninja_id$field);
         }
         if(this.hasRemainderTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_time$field);
         }
         if(this.hasTransfigurationItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.transfiguration_item_num$field);
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
