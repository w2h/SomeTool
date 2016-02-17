package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMysticChestOpenReq extends Message
   {
      
      public static const AUTO_BUY:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activity.ProtoMysticChestOpenReq.auto_buy","autoBuy",1 << 3 | WireType.VARINT);
       
      private var auto_buy$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      public function ProtoMysticChestOpenReq()
      {
         super();
      }
      
      public function clearAutoBuy() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.auto_buy$field = new Boolean();
      }
      
      public function get hasAutoBuy() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set autoBuy(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.auto_buy$field = param1;
      }
      
      public function get autoBuy() : Boolean
      {
         return this.auto_buy$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasAutoBuy)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.auto_buy$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
