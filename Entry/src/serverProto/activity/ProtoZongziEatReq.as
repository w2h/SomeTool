package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoZongziEatReq extends Message
   {
      
      public static const EAT_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziEatReq.eat_type","eatType",1 << 3 | WireType.VARINT);
      
      public static const EAT_ALL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activity.ProtoZongziEatReq.eat_all","eatAll",2 << 3 | WireType.VARINT);
       
      private var eat_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var eat_all$field:Boolean;
      
      public function ProtoZongziEatReq()
      {
         super();
      }
      
      public function clearEatType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.eat_type$field = new uint();
      }
      
      public function get hasEatType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set eatType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.eat_type$field = param1;
      }
      
      public function get eatType() : uint
      {
         return this.eat_type$field;
      }
      
      public function clearEatAll() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.eat_all$field = new Boolean();
      }
      
      public function get hasEatAll() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set eatAll(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.eat_all$field = param1;
      }
      
      public function get eatAll() : Boolean
      {
         if(!this.hasEatAll)
         {
            return true;
         }
         return this.eat_all$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasEatType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.eat_type$field);
         }
         if(this.hasEatAll)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.eat_all$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
