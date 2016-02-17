package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBeginDungeonRequest extends Message
   {
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoBeginDungeonRequest.dungeon_id","dungeonId",1 << 3 | WireType.VARINT);
      
      public static const DIFFICULTY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.dungeon.ProtoBeginDungeonRequest.difficulty_type","difficultyType",2 << 3 | WireType.VARINT,ProtoDungeonDifficultyType);
       
      public var dungeonId:uint;
      
      private var difficulty_type$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoBeginDungeonRequest()
      {
         super();
      }
      
      public function clearDifficultyType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.difficulty_type$field = new int();
      }
      
      public function get hasDifficultyType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set difficultyType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.difficulty_type$field = param1;
      }
      
      public function get difficultyType() : int
      {
         return this.difficulty_type$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.dungeonId);
         if(this.hasDifficultyType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.difficulty_type$field);
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
