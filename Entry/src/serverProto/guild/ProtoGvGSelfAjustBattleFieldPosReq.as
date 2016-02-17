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
   
   public final class ProtoGvGSelfAjustBattleFieldPosReq extends Message
   {
      
      public static const PLAYER_POS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGSelfAjustBattleFieldPosReq.player_pos","playerPos",1 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBattleFieldPlayerPos);
       
      private var player_pos$field:serverProto.guild.ProtoGvGBattleFieldPlayerPos;
      
      public function ProtoGvGSelfAjustBattleFieldPosReq()
      {
         super();
      }
      
      public function clearPlayerPos() : void
      {
         this.player_pos$field = null;
      }
      
      public function get hasPlayerPos() : Boolean
      {
         return this.player_pos$field != null;
      }
      
      public function set playerPos(param1:serverProto.guild.ProtoGvGBattleFieldPlayerPos) : void
      {
         this.player_pos$field = param1;
      }
      
      public function get playerPos() : serverProto.guild.ProtoGvGBattleFieldPlayerPos
      {
         return this.player_pos$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerPos)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.player_pos$field);
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
