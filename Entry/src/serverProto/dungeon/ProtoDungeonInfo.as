package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDungeonInfo extends Message
   {
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.dungeon_id","dungeonId",1 << 3 | WireType.VARINT);
      
      public static const NEED_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.need_power","needPower",2 << 3 | WireType.VARINT);
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.open_level","openLevel",3 << 3 | WireType.VARINT);
      
      public static const PASS_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.pass_times","passTimes",4 << 3 | WireType.VARINT);
      
      public static const PASS_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.pass_ulimit","passUlimit",5 << 3 | WireType.VARINT);
      
      public static const BEST_EVALUATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.best_evaluate","bestEvaluate",6 << 3 | WireType.VARINT);
       
      public var dungeonId:uint;
      
      private var need_power$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var open_level$field:uint;
      
      private var pass_times$field:uint;
      
      private var pass_ulimit$field:uint;
      
      private var best_evaluate$field:uint;
      
      public function ProtoDungeonInfo()
      {
         super();
      }
      
      public function clearNeedPower() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_power$field = new uint();
      }
      
      public function get hasNeedPower() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needPower(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_power$field = param1;
      }
      
      public function get needPower() : uint
      {
         return this.need_power$field;
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.open_level$field = new uint();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set openLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : uint
      {
         return this.open_level$field;
      }
      
      public function clearPassTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.pass_times$field = new uint();
      }
      
      public function get hasPassTimes() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set passTimes(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.pass_times$field = param1;
      }
      
      public function get passTimes() : uint
      {
         return this.pass_times$field;
      }
      
      public function clearPassUlimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.pass_ulimit$field = new uint();
      }
      
      public function get hasPassUlimit() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set passUlimit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.pass_ulimit$field = param1;
      }
      
      public function get passUlimit() : uint
      {
         return this.pass_ulimit$field;
      }
      
      public function clearBestEvaluate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.best_evaluate$field = new uint();
      }
      
      public function get hasBestEvaluate() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set bestEvaluate(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.best_evaluate$field = param1;
      }
      
      public function get bestEvaluate() : uint
      {
         return this.best_evaluate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.dungeonId);
         if(this.hasNeedPower)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.need_power$field);
         }
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.open_level$field);
         }
         if(this.hasPassTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.pass_times$field);
         }
         if(this.hasPassUlimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.pass_ulimit$field);
         }
         if(this.hasBestEvaluate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.best_evaluate$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
