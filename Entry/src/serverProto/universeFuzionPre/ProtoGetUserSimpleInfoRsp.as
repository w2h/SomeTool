package serverProto.universeFuzionPre
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetUserSimpleInfoRsp extends Message
   {
      
      public static const USER_INFOS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionPre.ProtoGetUserSimpleInfoRsp.user_infos","userInfos",1 << 3 | WireType.LENGTH_DELIMITED,ProtoSimpleUserInfo);
       
      private var user_infos$field:serverProto.universeFuzionPre.ProtoSimpleUserInfo;
      
      public function ProtoGetUserSimpleInfoRsp()
      {
         super();
      }
      
      public function clearUserInfos() : void
      {
         this.user_infos$field = null;
      }
      
      public function get hasUserInfos() : Boolean
      {
         return this.user_infos$field != null;
      }
      
      public function set userInfos(param1:serverProto.universeFuzionPre.ProtoSimpleUserInfo) : void
      {
         this.user_infos$field = param1;
      }
      
      public function get userInfos() : serverProto.universeFuzionPre.ProtoSimpleUserInfo
      {
         return this.user_infos$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasUserInfos)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.user_infos$field);
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
