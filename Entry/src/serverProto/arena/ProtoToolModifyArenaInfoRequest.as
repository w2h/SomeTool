package serverProto.arena
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoToolModifyArenaInfoRequest extends Message
   {
      
      public static const CMD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.cmd","cmd",1 << 3 | WireType.VARINT);
      
      public static const ARENA_TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.arena_type","arenaType",2 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.score","score",3 << 3 | WireType.VARINT);
      
      public static const CONTINUOUS_RECORD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.continuous_record","continuousRecord",4 << 3 | WireType.VARINT);
       
      public var cmd:uint;
      
      private var arena_type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var score$field:int;
      
      private var continuous_record$field:int;
      
      public function ProtoToolModifyArenaInfoRequest()
      {
         super();
      }
      
      public function clearArenaType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.arena_type$field = new int();
      }
      
      public function get hasArenaType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set arenaType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.arena_type$field = param1;
      }
      
      public function get arenaType() : int
      {
         return this.arena_type$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.score$field = new int();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set score(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.score$field = param1;
      }
      
      public function get score() : int
      {
         return this.score$field;
      }
      
      public function clearContinuousRecord() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.continuous_record$field = new int();
      }
      
      public function get hasContinuousRecord() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set continuousRecord(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.continuous_record$field = param1;
      }
      
      public function get continuousRecord() : int
      {
         return this.continuous_record$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.cmd);
         if(this.hasArenaType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.arena_type$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.score$field);
         }
         if(this.hasContinuousRecord)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.continuous_record$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
