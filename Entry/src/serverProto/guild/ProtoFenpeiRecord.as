package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.GuildMemberIdentity;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFenpeiRecord extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoFenpeiRecord.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoFenpeiRecord.player_name","playerName",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoFenpeiRecord.identity","identity",3 << 3 | WireType.VARINT,GuildMemberIdentity);
      
      public static const JOIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoFenpeiRecord.join_count","joinCount",4 << 3 | WireType.VARINT);
      
      public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoFenpeiRecord.item_id","itemId",5 << 3 | WireType.VARINT);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var player_name$field:String;
      
      private var identity$field:int;
      
      private var hasField$0:uint = 0;
      
      private var join_count$field:uint;
      
      private var item_id$field:uint;
      
      public function ProtoFenpeiRecord()
      {
         super();
      }
      
      public function clearPlayerId() : void
      {
         this.player_id$field = null;
      }
      
      public function get hasPlayerId() : Boolean
      {
         return this.player_id$field != null;
      }
      
      public function set playerId(param1:ProtoPlayerKey) : void
      {
         this.player_id$field = param1;
      }
      
      public function get playerId() : ProtoPlayerKey
      {
         return this.player_id$field;
      }
      
      public function clearPlayerName() : void
      {
         this.player_name$field = null;
      }
      
      public function get hasPlayerName() : Boolean
      {
         return this.player_name$field != null;
      }
      
      public function set playerName(param1:String) : void
      {
         this.player_name$field = param1;
      }
      
      public function get playerName() : String
      {
         return this.player_name$field;
      }
      
      public function clearIdentity() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.identity$field = new int();
      }
      
      public function get hasIdentity() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set identity(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.identity$field = param1;
      }
      
      public function get identity() : int
      {
         return this.identity$field;
      }
      
      public function clearJoinCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.join_count$field = new uint();
      }
      
      public function get hasJoinCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set joinCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.join_count$field = param1;
      }
      
      public function get joinCount() : uint
      {
         return this.join_count$field;
      }
      
      public function clearItemId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.item_id$field = new uint();
      }
      
      public function get hasItemId() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set itemId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.item_id$field = param1;
      }
      
      public function get itemId() : uint
      {
         return this.item_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasPlayerName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.player_name$field);
         }
         if(this.hasIdentity)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.identity$field);
         }
         if(this.hasJoinCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.join_count$field);
         }
         if(this.hasItemId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.item_id$field);
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
