package serverProto.bath
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBuyBathTimesResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.bath.ProtoBuyBathTimesResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REST_HELP_BATH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBuyBathTimesResp.rest_help_bath_times","restHelpBathTimes",2 << 3 | WireType.VARINT);
      
      public static const REST_BUY_BATH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bath.ProtoBuyBathTimesResp.rest_buy_bath_times","restBuyBathTimes",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var rest_help_bath_times$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var rest_buy_bath_times$field:uint;
      
      public function ProtoBuyBathTimesResp()
      {
         super();
      }
      
      public function clearRestHelpBathTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rest_help_bath_times$field = new uint();
      }
      
      public function get hasRestHelpBathTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set restHelpBathTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rest_help_bath_times$field = param1;
      }
      
      public function get restHelpBathTimes() : uint
      {
         return this.rest_help_bath_times$field;
      }
      
      public function clearRestBuyBathTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.rest_buy_bath_times$field = new uint();
      }
      
      public function get hasRestBuyBathTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set restBuyBathTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.rest_buy_bath_times$field = param1;
      }
      
      public function get restBuyBathTimes() : uint
      {
         return this.rest_buy_bath_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRestHelpBathTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_help_bath_times$field);
         }
         if(this.hasRestBuyBathTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.rest_buy_bath_times$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
