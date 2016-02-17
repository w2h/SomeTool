package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGBattleFieldPlayerPos extends Message
   {
      
      public static const BATTLE_FIELD_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldPlayerPos.battle_field_id","battleFieldId",1 << 3 | WireType.VARINT);
      
      public static const BATTLE_FIELD_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGBattleFieldPlayerPos.battle_field_seq","battleFieldSeq",2 << 3 | WireType.VARINT);
       
      private var battle_field_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var battle_field_seq$field:uint;
      
      public function ProtoGvGBattleFieldPlayerPos()
      {
         super();
      }
      
      public function clearBattleFieldId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.battle_field_id$field = new uint();
      }
      
      public function get hasBattleFieldId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set battleFieldId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.battle_field_id$field = param1;
      }
      
      public function get battleFieldId() : uint
      {
         return this.battle_field_id$field;
      }
      
      public function clearBattleFieldSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.battle_field_seq$field = new uint();
      }
      
      public function get hasBattleFieldSeq() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set battleFieldSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.battle_field_seq$field = param1;
      }
      
      public function get battleFieldSeq() : uint
      {
         return this.battle_field_seq$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBattleFieldId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.battle_field_id$field);
         }
         if(this.hasBattleFieldSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.battle_field_seq$field);
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
