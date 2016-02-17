package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.WireType;
   import serverProto.team.ProtoDungeonTeamMatchNotify.ProtoDungeonTeamMatchStatus;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDungeonTeamMatchNotify extends Message
   {
      
      public static const MATCH_STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoDungeonTeamMatchNotify.match_status","matchStatus",1 << 3 | WireType.VARINT,ProtoDungeonTeamMatchStatus);
      
      public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoDungeonTeamMatchNotify.dungeon_id","dungeonId",2 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoDungeonTeamMatchNotify.name","name",3 << 3 | WireType.LENGTH_DELIMITED);
       
      private var match_status$field:int;
      
      private var hasField$0:uint = 0;
      
      private var dungeon_id$field:int;
      
      private var name$field:String;
      
      public function ProtoDungeonTeamMatchNotify()
      {
         super();
      }
      
      public function clearMatchStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.match_status$field = new int();
      }
      
      public function get hasMatchStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set matchStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.match_status$field = param1;
      }
      
      public function get matchStatus() : int
      {
         return this.match_status$field;
      }
      
      public function clearDungeonId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.dungeon_id$field = new int();
      }
      
      public function get hasDungeonId() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set dungeonId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.dungeon_id$field = param1;
      }
      
      public function get dungeonId() : int
      {
         return this.dungeon_id$field;
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasMatchStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.match_status$field);
         }
         if(this.hasDungeonId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.dungeon_id$field);
         }
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
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
