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
   
   public final class ProtoGvGManagerAjustBattleFieldPosReq extends Message
   {
      
      public static const FROM_POS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGManagerAjustBattleFieldPosReq.from_pos","fromPos",1 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBattleFieldPlayerPos);
      
      public static const TO_POS:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGManagerAjustBattleFieldPosReq.to_pos","toPos",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGBattleFieldPlayerPos);
       
      private var from_pos$field:serverProto.guild.ProtoGvGBattleFieldPlayerPos;
      
      private var to_pos$field:serverProto.guild.ProtoGvGBattleFieldPlayerPos;
      
      public function ProtoGvGManagerAjustBattleFieldPosReq()
      {
         super();
      }
      
      public function clearFromPos() : void
      {
         this.from_pos$field = null;
      }
      
      public function get hasFromPos() : Boolean
      {
         return this.from_pos$field != null;
      }
      
      public function set fromPos(param1:serverProto.guild.ProtoGvGBattleFieldPlayerPos) : void
      {
         this.from_pos$field = param1;
      }
      
      public function get fromPos() : serverProto.guild.ProtoGvGBattleFieldPlayerPos
      {
         return this.from_pos$field;
      }
      
      public function clearToPos() : void
      {
         this.to_pos$field = null;
      }
      
      public function get hasToPos() : Boolean
      {
         return this.to_pos$field != null;
      }
      
      public function set toPos(param1:serverProto.guild.ProtoGvGBattleFieldPlayerPos) : void
      {
         this.to_pos$field = param1;
      }
      
      public function get toPos() : serverProto.guild.ProtoGvGBattleFieldPlayerPos
      {
         return this.to_pos$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFromPos)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.from_pos$field);
         }
         if(this.hasToPos)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.to_pos$field);
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
