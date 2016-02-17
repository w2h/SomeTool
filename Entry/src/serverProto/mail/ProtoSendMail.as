package serverProto.mail
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSendMail extends Message
   {
      
      public static const SEND_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoSendMail.send_player_id","sendPlayerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const SEND_PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.send_player_nick","sendPlayerNick",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const RECV_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.mail.ProtoSendMail.recv_player_id","recvPlayerId",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const RECV_PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.recv_player_nick","recvPlayerNick",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const TITLE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.title","title",5 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CONTENT:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.mail.ProtoSendMail.content","content",6 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const SUB_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.mail.ProtoSendMail.sub_type","subType",7 << 3 | WireType.VARINT);
       
      private var send_player_id$field:ProtoPlayerKey;
      
      private var send_player_nick$field:String;
      
      private var recv_player_id$field:ProtoPlayerKey;
      
      private var recv_player_nick$field:String;
      
      private var title$field:String;
      
      private var content$field:String;
      
      private var sub_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoSendMail()
      {
         super();
      }
      
      public function clearSendPlayerId() : void
      {
         this.send_player_id$field = null;
      }
      
      public function get hasSendPlayerId() : Boolean
      {
         return this.send_player_id$field != null;
      }
      
      public function set sendPlayerId(param1:ProtoPlayerKey) : void
      {
         this.send_player_id$field = param1;
      }
      
      public function get sendPlayerId() : ProtoPlayerKey
      {
         return this.send_player_id$field;
      }
      
      public function clearSendPlayerNick() : void
      {
         this.send_player_nick$field = null;
      }
      
      public function get hasSendPlayerNick() : Boolean
      {
         return this.send_player_nick$field != null;
      }
      
      public function set sendPlayerNick(param1:String) : void
      {
         this.send_player_nick$field = param1;
      }
      
      public function get sendPlayerNick() : String
      {
         return this.send_player_nick$field;
      }
      
      public function clearRecvPlayerId() : void
      {
         this.recv_player_id$field = null;
      }
      
      public function get hasRecvPlayerId() : Boolean
      {
         return this.recv_player_id$field != null;
      }
      
      public function set recvPlayerId(param1:ProtoPlayerKey) : void
      {
         this.recv_player_id$field = param1;
      }
      
      public function get recvPlayerId() : ProtoPlayerKey
      {
         return this.recv_player_id$field;
      }
      
      public function clearRecvPlayerNick() : void
      {
         this.recv_player_nick$field = null;
      }
      
      public function get hasRecvPlayerNick() : Boolean
      {
         return this.recv_player_nick$field != null;
      }
      
      public function set recvPlayerNick(param1:String) : void
      {
         this.recv_player_nick$field = param1;
      }
      
      public function get recvPlayerNick() : String
      {
         return this.recv_player_nick$field;
      }
      
      public function clearTitle() : void
      {
         this.title$field = null;
      }
      
      public function get hasTitle() : Boolean
      {
         return this.title$field != null;
      }
      
      public function set title(param1:String) : void
      {
         this.title$field = param1;
      }
      
      public function get title() : String
      {
         return this.title$field;
      }
      
      public function clearContent() : void
      {
         this.content$field = null;
      }
      
      public function get hasContent() : Boolean
      {
         return this.content$field != null;
      }
      
      public function set content(param1:String) : void
      {
         this.content$field = param1;
      }
      
      public function get content() : String
      {
         return this.content$field;
      }
      
      public function clearSubType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.sub_type$field = new uint();
      }
      
      public function get hasSubType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set subType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.sub_type$field = param1;
      }
      
      public function get subType() : uint
      {
         return this.sub_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSendPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.send_player_id$field);
         }
         if(this.hasSendPlayerNick)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.send_player_nick$field);
         }
         if(this.hasRecvPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.recv_player_id$field);
         }
         if(this.hasRecvPlayerNick)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.recv_player_nick$field);
         }
         if(this.hasTitle)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_STRING(param1,this.title$field);
         }
         if(this.hasContent)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_STRING(param1,this.content$field);
         }
         if(this.hasSubType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.sub_type$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
