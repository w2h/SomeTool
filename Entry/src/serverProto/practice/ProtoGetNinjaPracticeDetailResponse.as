package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetNinjaPracticeDetailResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PRACTICE_TIME:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailResponse.practice_time","practiceTime",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPracticeTimeInfo);
      
      public static const SPARRING_FRIEND:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoGetNinjaPracticeDetailResponse.sparring_friend","sparringFriend",8 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.practice.ProtoPracticeTimeInfo")]
      public var practiceTime:Array;
      
      private var sparring_friend$field:ProtoPlayerKey;
      
      public function ProtoGetNinjaPracticeDetailResponse()
      {
         this.practiceTime = [];
         super();
      }
      
      public function clearSparringFriend() : void
      {
         this.sparring_friend$field = null;
      }
      
      public function get hasSparringFriend() : Boolean
      {
         return this.sparring_friend$field != null;
      }
      
      public function set sparringFriend(param1:ProtoPlayerKey) : void
      {
         this.sparring_friend$field = param1;
      }
      
      public function get sparringFriend() : ProtoPlayerKey
      {
         return this.sparring_friend$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.practiceTime.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.practiceTime[_loc2_]);
            _loc2_++;
         }
         if(this.hasSparringFriend)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.sparring_friend$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
