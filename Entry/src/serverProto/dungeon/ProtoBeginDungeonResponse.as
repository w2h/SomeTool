package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoPoint;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBeginDungeonResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBeginDungeonResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoBeginDungeonResponse.dungeon_id","dungeonId",2 << 3 | WireType.VARINT);
      
      public static const DUNGEON_SECTION_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoBeginDungeonResponse.dungeon_section_id","dungeonSectionId",3 << 3 | WireType.VARINT);
      
      public static const BIRTHPLACE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBeginDungeonResponse.birthplace","birthplace",4 << 3 | WireType.LENGTH_DELIMITED,ProtoPoint);
       
      public var ret:ProtoRetInfo;
      
      private var dungeon_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var dungeon_section_id$field:uint;
      
      private var birthplace$field:ProtoPoint;
      
      public function ProtoBeginDungeonResponse()
      {
         super();
      }
      
      public function clearDungeonId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.dungeon_id$field = new uint();
      }
      
      public function get hasDungeonId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set dungeonId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.dungeon_id$field = param1;
      }
      
      public function get dungeonId() : uint
      {
         return this.dungeon_id$field;
      }
      
      public function clearDungeonSectionId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.dungeon_section_id$field = new uint();
      }
      
      public function get hasDungeonSectionId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set dungeonSectionId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.dungeon_section_id$field = param1;
      }
      
      public function get dungeonSectionId() : uint
      {
         return this.dungeon_section_id$field;
      }
      
      public function clearBirthplace() : void
      {
         this.birthplace$field = null;
      }
      
      public function get hasBirthplace() : Boolean
      {
         return this.birthplace$field != null;
      }
      
      public function set birthplace(param1:ProtoPoint) : void
      {
         this.birthplace$field = param1;
      }
      
      public function get birthplace() : ProtoPoint
      {
         return this.birthplace$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasDungeonId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.dungeon_id$field);
         }
         if(this.hasDungeonSectionId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.dungeon_section_id$field);
         }
         if(this.hasBirthplace)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.birthplace$field);
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
