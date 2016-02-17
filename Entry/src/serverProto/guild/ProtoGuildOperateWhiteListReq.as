package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoPlayerKey;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildOperateWhiteListReq extends Message
   {
      
      public static const YES_OR_NO:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.guild.ProtoGuildOperateWhiteListReq.yes_or_no","yesOrNo",1 << 3 | WireType.VARINT);
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildOperateWhiteListReq.player_id","playerId",2 << 3 | WireType.LENGTH_DELIMITED,ProtoPlayerKey);
       
      private var yes_or_no$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var player_id$field:ProtoPlayerKey;
      
      public function ProtoGuildOperateWhiteListReq()
      {
         super();
      }
      
      public function clearYesOrNo() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.yes_or_no$field = new Boolean();
      }
      
      public function get hasYesOrNo() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set yesOrNo(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.yes_or_no$field = param1;
      }
      
      public function get yesOrNo() : Boolean
      {
         return this.yes_or_no$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasYesOrNo)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.yes_or_no$field);
         }
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_id$field);
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
