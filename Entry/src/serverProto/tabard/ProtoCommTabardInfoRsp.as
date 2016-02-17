package serverProto.tabard
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
   
   public final class ProtoCommTabardInfoRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tabard.ProtoCommTabardInfoRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TABARD_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.tabard.ProtoCommTabardInfoRsp.tabard_info","tabardInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoTabardInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var tabard_info$field:serverProto.tabard.ProtoTabardInfo;
      
      public function ProtoCommTabardInfoRsp()
      {
         super();
      }
      
      public function clearTabardInfo() : void
      {
         this.tabard_info$field = null;
      }
      
      public function get hasTabardInfo() : Boolean
      {
         return this.tabard_info$field != null;
      }
      
      public function set tabardInfo(param1:serverProto.tabard.ProtoTabardInfo) : void
      {
         this.tabard_info$field = param1;
      }
      
      public function get tabardInfo() : serverProto.tabard.ProtoTabardInfo
      {
         return this.tabard_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasTabardInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tabard_info$field);
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
