package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGvGFinalResult extends Message
   {
      
      public static const QUARTER_FINAL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.quarter_final","quarterFinal",1 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
      
      public static const HALF_FINAL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.half_final","halfFinal",2 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
      
      public static const THE_FINAL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.the_final","theFinal",3 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
      
      public static const WINNER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.winner","winner",4 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
      
      public static const EIGHTH_FINAL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGvGFinalResult.eighth_final","eighthFinal",5 << 3 | WireType.LENGTH_DELIMITED,ProtoGvGGuildCell);
       
      [ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
      public var quarterFinal:Array;
      
      [ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
      public var halfFinal:Array;
      
      [ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
      public var theFinal:Array;
      
      private var winner$field:serverProto.guild.ProtoGvGGuildCell;
      
      [ArrayElementType("serverProto.guild.ProtoGvGGuildCell")]
      public var eighthFinal:Array;
      
      public function ProtoGvGFinalResult()
      {
         this.quarterFinal = [];
         this.halfFinal = [];
         this.theFinal = [];
         this.eighthFinal = [];
         super();
      }
      
      public function clearWinner() : void
      {
         this.winner$field = null;
      }
      
      public function get hasWinner() : Boolean
      {
         return this.winner$field != null;
      }
      
      public function set winner(param1:serverProto.guild.ProtoGvGGuildCell) : void
      {
         this.winner$field = param1;
      }
      
      public function get winner() : serverProto.guild.ProtoGvGGuildCell
      {
         return this.winner$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc6_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.quarterFinal.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.quarterFinal[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.halfFinal.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.halfFinal[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.theFinal.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.theFinal[_loc4_]);
            _loc4_++;
         }
         if(this.hasWinner)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.winner$field);
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.eighthFinal.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.eighthFinal[_loc5_]);
            _loc5_++;
         }
         for(_loc6_ in this)
         {
            super.writeUnknown(param1,_loc6_);
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
