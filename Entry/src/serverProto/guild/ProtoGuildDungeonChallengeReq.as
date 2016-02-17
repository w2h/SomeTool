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
   
   public final class ProtoGuildDungeonChallengeReq extends Message
   {
      
      public static const CHAPTER_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChallengeReq.chapter_id","chapterId",1 << 3 | WireType.VARINT);
      
      public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChallengeReq.type","type",2 << 3 | WireType.VARINT);
      
      public static const DIFFICULTY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChallengeReq.difficulty","difficulty",3 << 3 | WireType.VARINT);
       
      private var chapter_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var type$field:uint;
      
      private var difficulty$field:uint;
      
      public function ProtoGuildDungeonChallengeReq()
      {
         super();
      }
      
      public function clearChapterId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.chapter_id$field = new uint();
      }
      
      public function get hasChapterId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set chapterId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.chapter_id$field = param1;
      }
      
      public function get chapterId() : uint
      {
         return this.chapter_id$field;
      }
      
      public function clearType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.type$field = new uint();
      }
      
      public function get hasType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set type(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.type$field = param1;
      }
      
      public function get type() : uint
      {
         return this.type$field;
      }
      
      public function clearDifficulty() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.difficulty$field = new uint();
      }
      
      public function get hasDifficulty() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set difficulty(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.difficulty$field = param1;
      }
      
      public function get difficulty() : uint
      {
         return this.difficulty$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasChapterId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.chapter_id$field);
         }
         if(this.hasType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.type$field);
         }
         if(this.hasDifficulty)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.difficulty$field);
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
