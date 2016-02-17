package serverProto.inc
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoUpdateItemInfo extends Message
   {
      
      public static const UPDATE_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoUpdateItemInfo.update_flag","updateFlag",1 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoUpdateItemInfo.index","index",2 << 3 | WireType.VARINT);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoUpdateItemInfo.item_id","itemId",3 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoUpdateItemInfo.num","num",4 << 3 | WireType.VARINT);
       
      private var update_flag$field:int;
      
      private var hasField$0:uint = 0;
      
      private var index$field:int;
      
      public var itemId:int;
      
      public var num:int;
      
      public function ProtoUpdateItemInfo()
      {
         super();
      }
      
      public function clearUpdateFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.update_flag$field = new int();
      }
      
      public function get hasUpdateFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set updateFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.update_flag$field = param1;
      }
      
      public function get updateFlag() : int
      {
         return this.update_flag$field;
      }
      
      public function clearIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.index$field = new int();
      }
      
      public function get hasIndex() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set index(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.index$field = param1;
      }
      
      public function get index() : int
      {
         return this.index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasUpdateFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.update_flag$field);
         }
         if(this.hasIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.index$field);
         }
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_INT32(param1,this.itemId);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.num);
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
