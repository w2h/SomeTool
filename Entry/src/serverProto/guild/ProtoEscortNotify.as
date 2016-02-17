package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEscortNotify extends Message
   {
      
      public static const ESCORT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoEscortNotify.escort_info","escortInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoEscortInfo);
       
      private var escort_info$field:serverProto.guild.ProtoEscortInfo;
      
      public function ProtoEscortNotify()
      {
         super();
      }
      
      public function clearEscortInfo() : void
      {
         this.escort_info$field = null;
      }
      
      public function get hasEscortInfo() : Boolean
      {
         return this.escort_info$field != null;
      }
      
      public function set escortInfo(param1:serverProto.guild.ProtoEscortInfo) : void
      {
         this.escort_info$field = param1;
      }
      
      public function get escortInfo() : serverProto.guild.ProtoEscortInfo
      {
         return this.escort_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasEscortInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.escort_info$field);
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
