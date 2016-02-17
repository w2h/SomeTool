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
   
   public final class ProtoGvGQuickAjustBattleFieldPosReq extends Message
   {
      
      public static const FROM_BATTLE_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGQuickAjustBattleFieldPosReq.from_battle_seq","fromBattleSeq",1 << 3 | WireType.VARINT);
      
      public static const TO_BATTLE_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGQuickAjustBattleFieldPosReq.to_battle_seq","toBattleSeq",2 << 3 | WireType.VARINT);
       
      private var from_battle_seq$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var to_battle_seq$field:uint;
      
      public function ProtoGvGQuickAjustBattleFieldPosReq()
      {
         super();
      }
      
      public function clearFromBattleSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.from_battle_seq$field = new uint();
      }
      
      public function get hasFromBattleSeq() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fromBattleSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.from_battle_seq$field = param1;
      }
      
      public function get fromBattleSeq() : uint
      {
         return this.from_battle_seq$field;
      }
      
      public function clearToBattleSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.to_battle_seq$field = new uint();
      }
      
      public function get hasToBattleSeq() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set toBattleSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.to_battle_seq$field = param1;
      }
      
      public function get toBattleSeq() : uint
      {
         return this.to_battle_seq$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFromBattleSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.from_battle_seq$field);
         }
         if(this.hasToBattleSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.to_battle_seq$field);
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
