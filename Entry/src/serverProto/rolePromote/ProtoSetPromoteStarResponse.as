package serverProto.rolePromote
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSetPromoteStarResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rolePromote.ProtoSetPromoteStarResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const REMAIN_STAR:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoSetPromoteStarResponse.remain_star","remainStar",2 << 3 | WireType.VARINT);
      
      public static const PREV_START:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.rolePromote.ProtoSetPromoteStarResponse.prev_start","prevStart",3 << 3 | WireType.VARINT);
      
      public static const ATTR_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rolePromote.ProtoSetPromoteStarResponse.attr_info","attrInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPromoteAttrInfo);
       
      public var ret:ProtoRetInfo;
      
      private var remain_star$field:int;
      
      private var hasField$0:uint = 0;
      
      private var prev_start$field:int;
      
      private var attr_info$field:serverProto.rolePromote.ProtoPromoteAttrInfo;
      
      public function ProtoSetPromoteStarResponse()
      {
         super();
      }
      
      public function clearRemainStar() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.remain_star$field = new int();
      }
      
      public function get hasRemainStar() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set remainStar(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.remain_star$field = param1;
      }
      
      public function get remainStar() : int
      {
         return this.remain_star$field;
      }
      
      public function clearPrevStart() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.prev_start$field = new int();
      }
      
      public function get hasPrevStart() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set prevStart(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.prev_start$field = param1;
      }
      
      public function get prevStart() : int
      {
         return this.prev_start$field;
      }
      
      public function clearAttrInfo() : void
      {
         this.attr_info$field = null;
      }
      
      public function get hasAttrInfo() : Boolean
      {
         return this.attr_info$field != null;
      }
      
      public function set attrInfo(param1:serverProto.rolePromote.ProtoPromoteAttrInfo) : void
      {
         this.attr_info$field = param1;
      }
      
      public function get attrInfo() : serverProto.rolePromote.ProtoPromoteAttrInfo
      {
         return this.attr_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasRemainStar)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.remain_star$field);
         }
         if(this.hasPrevStart)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.prev_start$field);
         }
         if(this.hasAttrInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.attr_info$field);
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
