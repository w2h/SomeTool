package serverProto.baseInfo
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
   
   public final class ProtoRefreshMoodResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoRefreshMoodResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_MOOD_DETAIL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoRefreshMoodResponse.ninja_mood_detail_info","ninjaMoodDetailInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaMoodDetailInfo);
      
      public static const REFRESH_TARGET_SCCUESS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoRefreshMoodResponse.refresh_target_sccuess","refreshTargetSccuess",3 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_mood_detail_info$field:serverProto.baseInfo.ProtoNinjaMoodDetailInfo;
      
      private var refresh_target_sccuess$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoRefreshMoodResponse()
      {
         super();
      }
      
      public function clearNinjaMoodDetailInfo() : void
      {
         this.ninja_mood_detail_info$field = null;
      }
      
      public function get hasNinjaMoodDetailInfo() : Boolean
      {
         return this.ninja_mood_detail_info$field != null;
      }
      
      public function set ninjaMoodDetailInfo(param1:serverProto.baseInfo.ProtoNinjaMoodDetailInfo) : void
      {
         this.ninja_mood_detail_info$field = param1;
      }
      
      public function get ninjaMoodDetailInfo() : serverProto.baseInfo.ProtoNinjaMoodDetailInfo
      {
         return this.ninja_mood_detail_info$field;
      }
      
      public function clearRefreshTargetSccuess() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.refresh_target_sccuess$field = new int();
      }
      
      public function get hasRefreshTargetSccuess() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set refreshTargetSccuess(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.refresh_target_sccuess$field = param1;
      }
      
      public function get refreshTargetSccuess() : int
      {
         return this.refresh_target_sccuess$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaMoodDetailInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_mood_detail_info$field);
         }
         if(this.hasRefreshTargetSccuess)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.refresh_target_sccuess$field);
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
