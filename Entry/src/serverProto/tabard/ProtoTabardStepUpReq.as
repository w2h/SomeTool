package serverProto.tabard
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTabardStepUpReq extends Message
   {
      
      public static const FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardStepUpReq.flag","flag",1 << 3 | WireType.VARINT);
      
      public static const AUTO_BUY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardStepUpReq.auto_buy_flag","autoBuyFlag",2 << 3 | WireType.VARINT);
       
      private var flag$field:int;
      
      private var hasField$0:uint = 0;
      
      private var auto_buy_flag$field:int;
      
      public function ProtoTabardStepUpReq()
      {
         super();
      }
      
      public function clearFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.flag$field = new int();
      }
      
      public function get hasFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set flag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.flag$field = param1;
      }
      
      public function get flag() : int
      {
         return this.flag$field;
      }
      
      public function clearAutoBuyFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.auto_buy_flag$field = new int();
      }
      
      public function get hasAutoBuyFlag() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set autoBuyFlag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.auto_buy_flag$field = param1;
      }
      
      public function get autoBuyFlag() : int
      {
         return this.auto_buy_flag$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.flag$field);
         }
         if(this.hasAutoBuyFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.auto_buy_flag$field);
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
