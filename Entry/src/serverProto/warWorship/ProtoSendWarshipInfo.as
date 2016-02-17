package serverProto.warWorship
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSendWarshipInfo extends Message
   {
      
      public static const NINJA_SEQ:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.warWorship.ProtoSendWarshipInfo.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const WIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.warWorship.ProtoSendWarshipInfo.win","win",2 << 3 | WireType.VARINT);
      
      public static const KILL_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.warWorship.ProtoSendWarshipInfo.kill_count","killCount",3 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.warWorship.ProtoSendWarshipInfo.type","type",4 << 3 | WireType.VARINT);
      
      public static const STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.warWorship.ProtoSendWarshipInfo.status","status",5 << 3 | WireType.VARINT);
       
      [ArrayElementType("int")]
      public var ninjaSeq:Array;
      
      private var win$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var kill_count$field:int;
      
      private var type$field:int;
      
      private var status$field:int;
      
      public function ProtoSendWarshipInfo()
      {
         this.ninjaSeq = [];
         super();
      }
      
      public function clearWin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.win$field = new Boolean();
      }
      
      public function get hasWin() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set win(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.win$field = param1;
      }
      
      public function get win() : Boolean
      {
         return this.win$field;
      }
      
      public function clearKillCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.kill_count$field = new int();
      }
      
      public function get hasKillCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set killCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.kill_count$field = param1;
      }
      
      public function get killCount() : int
      {
         return this.kill_count$field;
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.type$field = new int();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set type(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.type$field = param1;
      }
      
      public function get type() : int
      {
         return this.type$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.status$field = new int();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set status(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.status$field = param1;
      }
      
      public function get status() : int
      {
         return this.status$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaSeq.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.ninjaSeq[_loc2_]);
            _loc2_++;
         }
         if(this.hasWin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.win$field);
         }
         if(this.hasKillCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.kill_count$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.type$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.status$field);
         }
         for(_loc3_ in this)
         {
            super.writeUnknown(param1,_loc3_);
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
