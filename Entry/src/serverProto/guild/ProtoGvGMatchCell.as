package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGMatchCell extends Message
   {
      
      public static const GUILD_CELL_1:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMatchCell.guild_cell_1","guildCell_1",1 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
      
      public static const GUILD_CELL_2:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGMatchCell.guild_cell_2","guildCell_2",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
      
      public static const WINNER_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGvGMatchCell.winner_seq","winnerSeq",3 << 3 | WireType.VARINT);
       
      private var guild_cell_1$field:serverProto.guild.ProtoGvGGuildCell;
      
      private var guild_cell_2$field:serverProto.guild.ProtoGvGGuildCell;
      
      private var winner_seq$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGvGMatchCell()
      {
         super();
      }
      
      public function clearGuildCell_1() : void
      {
         this.guild_cell_1$field = null;
      }
      
      public function get hasGuildCell_1() : Boolean
      {
         return this.guild_cell_1$field != null;
      }
      
      public function set guildCell_1(param1:serverProto.guild.ProtoGvGGuildCell) : void
      {
         this.guild_cell_1$field = param1;
      }
      
      public function get guildCell_1() : serverProto.guild.ProtoGvGGuildCell
      {
         return this.guild_cell_1$field;
      }
      
      public function clearGuildCell_2() : void
      {
         this.guild_cell_2$field = null;
      }
      
      public function get hasGuildCell_2() : Boolean
      {
         return this.guild_cell_2$field != null;
      }
      
      public function set guildCell_2(param1:serverProto.guild.ProtoGvGGuildCell) : void
      {
         this.guild_cell_2$field = param1;
      }
      
      public function get guildCell_2() : serverProto.guild.ProtoGvGGuildCell
      {
         return this.guild_cell_2$field;
      }
      
      public function clearWinnerSeq() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.winner_seq$field = new uint();
      }
      
      public function get hasWinnerSeq() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set winnerSeq(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.winner_seq$field = param1;
      }
      
      public function get winnerSeq() : uint
      {
         return this.winner_seq$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasGuildCell_1)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.guild_cell_1$field);
         }
         if(this.hasGuildCell_2)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.guild_cell_2$field);
         }
         if(this.hasWinnerSeq)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.winner_seq$field);
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
