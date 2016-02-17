package serverProto.friend
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
   
   public final class ProtoAddFriendRequest extends Message
   {
      
      public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.friend.ProtoAddFriendRequest.player_key","playerKey",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.friend.ProtoAddFriendRequest.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CHANNEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.friend.ProtoAddFriendRequest.channel","channel",3 << 3 | WireType.VARINT);
       
      private var player_key$field:ProtoPlayerKey;
      
      private var name$field:String;
      
      private var channel$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoAddFriendRequest()
      {
         super();
      }
      
      public function clearPlayerKey() : void
      {
         this.player_key$field = null;
      }
      
      public function get hasPlayerKey() : Boolean
      {
         return this.player_key$field != null;
      }
      
      public function set playerKey(param1:ProtoPlayerKey) : void
      {
         this.player_key$field = param1;
      }
      
      public function get playerKey() : ProtoPlayerKey
      {
         return this.player_key$field;
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearChannel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.channel$field = new uint();
      }
      
      public function get hasChannel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set channel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.channel$field = param1;
      }
      
      public function get channel() : uint
      {
         return this.channel$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerKey)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_key$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasChannel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.channel$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
