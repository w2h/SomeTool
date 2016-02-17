package serverProto.chat
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChatRequest extends Message
   {
      
      public static const CHANNEL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatRequest.channel_type","channelType",1 << 3 | WireType.VARINT,ProtoChatChannelType);
      
      public static const CONTEXT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.chat.ProtoChatRequest.context_type","contextType",2 << 3 | WireType.VARINT,ProtoChatContextType);
      
      public static const CONTEXT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatRequest.context","context",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LISTENER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.chat.ProtoChatRequest.listener_name","listenerName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LISTENER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.chat.ProtoChatRequest.listener_key","listenerKey",5 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      public var channelType:int;
      
      public var contextType:int;
      
      public var context:String;
      
      private var listener_name$field:String;
      
      private var listener_key$field:ProtoPlayerKey;
      
      public function ProtoChatRequest()
      {
         super();
      }
      
      public function clearListenerName() : void
      {
         this.listener_name$field = null;
      }
      
      public function get hasListenerName() : Boolean
      {
         return this.listener_name$field != null;
      }
      
      public function set listenerName(param1:String) : void
      {
         this.listener_name$field = param1;
      }
      
      public function get listenerName() : String
      {
         return this.listener_name$field;
      }
      
      public function clearListenerKey() : void
      {
         this.listener_key$field = null;
      }
      
      public function get hasListenerKey() : Boolean
      {
         return this.listener_key$field != null;
      }
      
      public function set listenerKey(param1:ProtoPlayerKey) : void
      {
         this.listener_key$field = param1;
      }
      
      public function get listenerKey() : ProtoPlayerKey
      {
         return this.listener_key$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.channelType);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.contextType);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
         WriteUtils.write$TYPE_STRING(param1,this.context);
         if(this.hasListenerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.listener_name$field);
         }
         if(this.hasListenerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.listener_key$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
