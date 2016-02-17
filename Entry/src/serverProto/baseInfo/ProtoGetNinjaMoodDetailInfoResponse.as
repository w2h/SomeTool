package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetNinjaMoodDetailInfoResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetNinjaMoodDetailInfoResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_MOOD_DETAIL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetNinjaMoodDetailInfoResponse.ninja_mood_detail_info","ninjaMoodDetailInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaMoodDetailInfo);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_mood_detail_info$field:serverProto.baseInfo.ProtoNinjaMoodDetailInfo;
      
      public function ProtoGetNinjaMoodDetailInfoResponse()
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
