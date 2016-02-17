package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import serverProto.inc.GuildMemberIdentity;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildMemberIdentityReq extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMemberIdentityReq.player_id","playerId",1 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
      
      public static const OPER_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberIdentityReq.oper_type","operType",2 << 3 | WireType.VARINT);
      
      public static const IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildMemberIdentityReq.identity","identity",3 << 3 | WireType.VARINT,GuildMemberIdentity);
       
      private var player_id$field:ProtoPlayerKey;
      
      private var oper_type$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var identity$field:int;
      
      public function ProtoGuildMemberIdentityReq()
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
      
      public function clearOperType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.oper_type$field = new uint();
      }
      
      public function get hasOperType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set operType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.oper_type$field = param1;
      }
      
      public function get operType() : uint
      {
         return this.oper_type$field;
      }
      
      public function clearIdentity() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.identity$field = new int();
      }
      
      public function get hasIdentity() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set identity(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.identity$field = param1;
      }
      
      public function get identity() : int
      {
         return this.identity$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
         }
         if(this.hasOperType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.oper_type$field);
         }
         if(this.hasIdentity)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.identity$field);
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
