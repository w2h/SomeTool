package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildDungeonChapter extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChapter.id","id",1 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonChapter.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const SUBJECT_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChapter.subject_id","subjectId",3 << 3 | WireType.VARINT);
      
      public static const SUBJECT_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildDungeonChapter.subject_name","subjectName",4 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const CHAPTER_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.chapter_open_level","chapterOpenLevel",5 << 3 | WireType.VARINT);
      
      public static const SINGLE_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.single_open_level","singleOpenLevel",6 << 3 | WireType.VARINT);
      
      public static const TEAM_OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.team_open_level","teamOpenLevel",7 << 3 | WireType.VARINT);
      
      public static const TEAM_DIFFICULTY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChapter.team_difficulty","teamDifficulty",8 << 3 | WireType.VARINT);
      
      public static const RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonChapter.rank","rank",9 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDungeonRank);
      
      public static const SINGLE_ULIMIT_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.single_ulimit_level","singleUlimitLevel",10 << 3 | WireType.VARINT);
      
      public static const TEAM_ULIMIT_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.guild.ProtoGuildDungeonChapter.team_ulimit_level","teamUlimitLevel",11 << 3 | WireType.VARINT);
      
      public static const AWARDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildDungeonChapter.awards","awards",12 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildDungeonAward);
       
      private var id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var name$field:String;
      
      private var subject_id$field:uint;
      
      private var subject_name$field:String;
      
      private var chapter_open_level$field:int;
      
      private var single_open_level$field:int;
      
      private var team_open_level$field:int;
      
      private var team_difficulty$field:uint;
      
      [ArrayElementType("serverProto.guild.ProtoGuildDungeonRank")]
      public var rank:Array;
      
      private var single_ulimit_level$field:int;
      
      private var team_ulimit_level$field:int;
      
      [ArrayElementType("serverProto.guild.ProtoGuildDungeonAward")]
      public var awards:Array;
      
      public function ProtoGuildDungeonChapter()
      {
         this.rank = [];
         this.awards = [];
         super();
      }
      
      public function clearId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.id$field = new uint();
      }
      
      public function get hasId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set id(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.id$field = param1;
      }
      
      public function get id() : uint
      {
         return this.id$field;
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearSubjectId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.subject_id$field = new uint();
      }
      
      public function get hasSubjectId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set subjectId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.subject_id$field = param1;
      }
      
      public function get subjectId() : uint
      {
         return this.subject_id$field;
      }
      
      public function clearSubjectName() : void
      {
         this.subject_name$field = null;
      }
      
      public function get hasSubjectName() : Boolean
      {
         return this.subject_name$field != null;
      }
      
      public function set subjectName(param1:String) : void
      {
         this.subject_name$field = param1;
      }
      
      public function get subjectName() : String
      {
         return this.subject_name$field;
      }
      
      public function clearChapterOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.chapter_open_level$field = new int();
      }
      
      public function get hasChapterOpenLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set chapterOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.chapter_open_level$field = param1;
      }
      
      public function get chapterOpenLevel() : int
      {
         return this.chapter_open_level$field;
      }
      
      public function clearSingleOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.single_open_level$field = new int();
      }
      
      public function get hasSingleOpenLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set singleOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.single_open_level$field = param1;
      }
      
      public function get singleOpenLevel() : int
      {
         return this.single_open_level$field;
      }
      
      public function clearTeamOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.team_open_level$field = new int();
      }
      
      public function get hasTeamOpenLevel() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set teamOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.team_open_level$field = param1;
      }
      
      public function get teamOpenLevel() : int
      {
         return this.team_open_level$field;
      }
      
      public function clearTeamDifficulty() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.team_difficulty$field = new uint();
      }
      
      public function get hasTeamDifficulty() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set teamDifficulty(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.team_difficulty$field = param1;
      }
      
      public function get teamDifficulty() : uint
      {
         return this.team_difficulty$field;
      }
      
      public function clearSingleUlimitLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.single_ulimit_level$field = new int();
      }
      
      public function get hasSingleUlimitLevel() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set singleUlimitLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.single_ulimit_level$field = param1;
      }
      
      public function get singleUlimitLevel() : int
      {
         return this.single_ulimit_level$field;
      }
      
      public function clearTeamUlimitLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.team_ulimit_level$field = new int();
      }
      
      public function get hasTeamUlimitLevel() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set teamUlimitLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.team_ulimit_level$field = param1;
      }
      
      public function get teamUlimitLevel() : int
      {
         return this.team_ulimit_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.id$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasSubjectId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.subject_id$field);
         }
         if(this.hasSubjectName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_STRING(param1,this.subject_name$field);
         }
         if(this.hasChapterOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.chapter_open_level$field);
         }
         if(this.hasSingleOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.single_open_level$field);
         }
         if(this.hasTeamOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.team_open_level$field);
         }
         if(this.hasTeamDifficulty)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.team_difficulty$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.rank.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,9);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rank[_loc2_]);
            _loc2_++;
         }
         if(this.hasSingleUlimitLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,10);
            WriteUtils.write$TYPE_INT32(param1,this.single_ulimit_level$field);
         }
         if(this.hasTeamUlimitLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.team_ulimit_level$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.awards.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,12);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awards[_loc3_]);
            _loc3_++;
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
