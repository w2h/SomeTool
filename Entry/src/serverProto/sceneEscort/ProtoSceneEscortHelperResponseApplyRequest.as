package serverProto.sceneEscort
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSceneEscortHelperResponseApplyRequest extends Message
   {
      
      public static const RESPONSE_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyRequest.response_list","responseList",1 << 3 | WireType.LENGTH_DELIMITED,ProtoSceneEscortHelperResponseApplyInfo);
       
      private var response_list$field:serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyInfo;
      
      public function ProtoSceneEscortHelperResponseApplyRequest()
      {
         super();
      }
      
      public function clearResponseList() : void
      {
         this.response_list$field = null;
      }
      
      public function get hasResponseList() : Boolean
      {
         return this.response_list$field != null;
      }
      
      public function set responseList(param1:serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyInfo) : void
      {
         this.response_list$field = param1;
      }
      
      public function get responseList() : serverProto.sceneEscort.ProtoSceneEscortHelperResponseApplyInfo
      {
         return this.response_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasResponseList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.response_list$field);
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
