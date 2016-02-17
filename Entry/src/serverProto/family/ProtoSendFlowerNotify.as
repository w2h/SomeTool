package serverProto.family
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
   
   public final class ProtoSendFlowerNotify extends Message
   {
      
      public static const SEND_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerNotify.send_player_id","sendPlayerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const SEND_PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerNotify.send_player_name","sendPlayerName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const RECEIVE_PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerNotify.receive_player_id","receivePlayerId",3 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const RECEIVE_PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerNotify.receive_player_name","receivePlayerName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const FLOWER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerNotify.flower_count","flowerCount",5 << 3 | WireType.VARINT);
      
      public static const FLOWER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerNotify.flower_name","flowerName",6 << 3 | WireType.LENGTH_DELIMITED);
       
      private var send_player_id$field:ProtoPlayerKey;
      
      private var send_player_name$field:String;
      
      private var receive_player_id$field:ProtoPlayerKey;
      
      private var receive_player_name$field:String;
      
      private var flower_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var flower_name$field:String;
      
      public function ProtoSendFlowerNotify()
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
      
      public function clearSendPlayerName() : void
      {
         this.send_player_name$field = null;
      }
      
      public function get hasSendPlayerName() : Boolean
      {
         return this.send_player_name$field != null;
      }
      
      public function set sendPlayerName(param1:String) : void
      {
         this.send_player_name$field = param1;
      }
      
      public function get sendPlayerName() : String
      {
         return this.send_player_name$field;
      }
      
      public function clearReceivePlayerId() : void
      {
         this.receive_player_id$field = null;
      }
      
      public function get hasReceivePlayerId() : Boolean
      {
         return this.receive_player_id$field != null;
      }
      
      public function set receivePlayerId(param1:ProtoPlayerKey) : void
      {
         this.receive_player_id$field = param1;
      }
      
      public function get receivePlayerId() : ProtoPlayerKey
      {
         return this.receive_player_id$field;
      }
      
      public function clearReceivePlayerName() : void
      {
         this.receive_player_name$field = null;
      }
      
      public function get hasReceivePlayerName() : Boolean
      {
         return this.receive_player_name$field != null;
      }
      
      public function set receivePlayerName(param1:String) : void
      {
         this.receive_player_name$field = param1;
      }
      
      public function get receivePlayerName() : String
      {
         return this.receive_player_name$field;
      }
      
      public function clearFlowerCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.flower_count$field = new uint();
      }
      
      public function get hasFlowerCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set flowerCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.flower_count$field = param1;
      }
      
      public function get flowerCount() : uint
      {
         return this.flower_count$field;
      }
      
      public function clearFlowerName() : void
      {
         this.flower_name$field = null;
      }
      
      public function get hasFlowerName() : Boolean
      {
         return this.flower_name$field != null;
      }
      
      public function set flowerName(param1:String) : void
      {
         this.flower_name$field = param1;
      }
      
      public function get flowerName() : String
      {
         return this.flower_name$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSendPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.send_player_id$field);
         }
         if(this.hasSendPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.send_player_name$field);
         }
         if(this.hasReceivePlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.receive_player_id$field);
         }
         if(this.hasReceivePlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.receive_player_name$field);
         }
         if(this.hasFlowerCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.flower_count$field);
         }
         if(this.hasFlowerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_STRING(param1,this.flower_name$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
