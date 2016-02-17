package serverProto.activity
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
   
   public final class ProtoOnlineGiftAwardRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOnlineGiftAwardRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const LEFT_AWARD_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoOnlineGiftAwardRsp.left_award_time","leftAwardTime",2 << 3 | WireType.VARINT);
      
      public static const AWARD_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOnlineGiftAwardRsp.award_list","awardList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardList);
       
      private var ret$field:ProtoRetInfo;
      
      private var left_award_time$field:int;
      
      private var hasField$0:uint = 0;
      
      private var award_list$field:serverProto.activity.ProtoAwardList;
      
      public function ProtoOnlineGiftAwardRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearLeftAwardTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.left_award_time$field = new int();
      }
      
      public function get hasLeftAwardTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set leftAwardTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.left_award_time$field = param1;
      }
      
      public function get leftAwardTime() : int
      {
         return this.left_award_time$field;
      }
      
      public function clearAwardList() : void
      {
         this.award_list$field = null;
      }
      
      public function get hasAwardList() : Boolean
      {
         return this.award_list$field != null;
      }
      
      public function set awardList(param1:serverProto.activity.ProtoAwardList) : void
      {
         this.award_list$field = param1;
      }
      
      public function get awardList() : serverProto.activity.ProtoAwardList
      {
         return this.award_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasLeftAwardTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.left_award_time$field);
         }
         if(this.hasAwardList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award_list$field);
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
