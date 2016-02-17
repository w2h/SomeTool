package serverProto.expedition
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
   
   public final class ProtoGetExpeditionNinjaListResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionNinjaListResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NINJA_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionNinjaListResp.ninja_info","ninjaInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionNinjaListInfo);
       
      public var ret:ProtoRetInfo;
      
      private var ninja_info$field:serverProto.expedition.ProtoExpeditionNinjaListInfo;
      
      public function ProtoGetExpeditionNinjaListResp()
      {
         super();
      }
      
      public function clearNinjaInfo() : void
      {
         this.ninja_info$field = null;
      }
      
      public function get hasNinjaInfo() : Boolean
      {
         return this.ninja_info$field != null;
      }
      
      public function set ninjaInfo(param1:serverProto.expedition.ProtoExpeditionNinjaListInfo) : void
      {
         this.ninja_info$field = param1;
      }
      
      public function get ninjaInfo() : serverProto.expedition.ProtoExpeditionNinjaListInfo
      {
         return this.ninja_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasNinjaInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninja_info$field);
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
