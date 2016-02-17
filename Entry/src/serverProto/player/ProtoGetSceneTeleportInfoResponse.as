package serverProto.player
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
   
   public final class ProtoGetSceneTeleportInfoResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetSceneTeleportInfoResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TIMES_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoGetSceneTeleportInfoResponse.times_info","timesInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSceneTeleportTimesInfo);
       
      private var ret_info$field:ProtoRetInfo;
      
      private var times_info$field:serverProto.player.ProtoSceneTeleportTimesInfo;
      
      public function ProtoGetSceneTeleportInfoResponse()
      {
         super();
      }
      
      public function clearRetInfo() : void
      {
         this.ret_info$field = null;
      }
      
      public function get hasRetInfo() : Boolean
      {
         return this.ret_info$field != null;
      }
      
      public function set retInfo(param1:ProtoRetInfo) : void
      {
         this.ret_info$field = param1;
      }
      
      public function get retInfo() : ProtoRetInfo
      {
         return this.ret_info$field;
      }
      
      public function clearTimesInfo() : void
      {
         this.times_info$field = null;
      }
      
      public function get hasTimesInfo() : Boolean
      {
         return this.times_info$field != null;
      }
      
      public function set timesInfo(param1:serverProto.player.ProtoSceneTeleportTimesInfo) : void
      {
         this.times_info$field = param1;
      }
      
      public function get timesInfo() : serverProto.player.ProtoSceneTeleportTimesInfo
      {
         return this.times_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRetInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret_info$field);
         }
         if(this.hasTimesInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.times_info$field);
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
