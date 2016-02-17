package serverProto.basePvp
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBasePvpMatchingResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBasePvpMatchingResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const BASE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoBasePvpMatchingResponse.base_info","baseInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseInfo);
      
      public static const NEXT_MATCH_COST:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBasePvpMatchingResponse.next_match_cost","nextMatchCost",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var base_info$field:serverProto.basePvp.ProtoBaseInfo;
      
      private var next_match_cost$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoBasePvpMatchingResponse()
      {
         super();
      }
      
      public function clearBaseInfo() : void
      {
         this.base_info$field = null;
      }
      
      public function get hasBaseInfo() : Boolean
      {
         return this.base_info$field != null;
      }
      
      public function set baseInfo(param1:serverProto.basePvp.ProtoBaseInfo) : void
      {
         this.base_info$field = param1;
      }
      
      public function get baseInfo() : serverProto.basePvp.ProtoBaseInfo
      {
         return this.base_info$field;
      }
      
      public function clearNextMatchCost() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.next_match_cost$field = new int();
      }
      
      public function get hasNextMatchCost() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set nextMatchCost(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.next_match_cost$field = param1;
      }
      
      public function get nextMatchCost() : int
      {
         return this.next_match_cost$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasBaseInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_info$field);
         }
         if(this.hasNextMatchCost)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.next_match_cost$field);
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
