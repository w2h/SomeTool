package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBefallDungeonInfo extends Message
   {
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBefallDungeonInfo.dungeon_id","dungeonId",1 << 3 | WireType.VARINT);
      
      public static const REMAINDER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBefallDungeonInfo.remainder_times","remainderTimes",2 << 3 | WireType.VARINT);
      
      public static const DIFFICULTY_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBefallDungeonInfo.difficulty_list","difficultyList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoBefallDifficultyInfo);
       
      private var dungeon_id$field:int;
      
      private var hasField$0:uint = 0;
      
      private var remainder_times$field:int;
      
      [ArrayElementType("serverProto.dungeon.ProtoBefallDifficultyInfo")]
      public var difficultyList:Array;
      
      public function ProtoBefallDungeonInfo()
      {
         this.difficultyList = [];
         super();
      }
      
      public function clearDungeonId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.dungeon_id$field = new int();
      }
      
      public function get hasDungeonId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set dungeonId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.dungeon_id$field = param1;
      }
      
      public function get dungeonId() : int
      {
         return this.dungeon_id$field;
      }
      
      public function clearRemainderTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.remainder_times$field = new int();
      }
      
      public function get hasRemainderTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set remainderTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.remainder_times$field = param1;
      }
      
      public function get remainderTimes() : int
      {
         return this.remainder_times$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasDungeonId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.dungeon_id$field);
         }
         if(this.hasRemainderTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.remainder_times$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.difficultyList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.difficultyList[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
