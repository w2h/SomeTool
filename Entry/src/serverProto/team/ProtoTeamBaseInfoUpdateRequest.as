package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTeamBaseInfoUpdateRequest extends Message
   {
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoTeamBaseInfoUpdateRequest.name","name",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const ALLOW_AUTO_JOIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.team.ProtoTeamBaseInfoUpdateRequest.allow_auto_join","allowAutoJoin",2 << 3 | WireType.VARINT);
      
      public static const AUTO_JOIN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoTeamBaseInfoUpdateRequest.auto_join_level","autoJoinLevel",3 << 3 | WireType.VARINT);
      
      public static const GOAL_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoTeamBaseInfoUpdateRequest.goal_type","goalType",4 << 3 | WireType.VARINT);
      
      public static const GOAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoTeamBaseInfoUpdateRequest.goal_id","goalId",5 << 3 | WireType.VARINT);
       
      private var name$field:String;
      
      private var allow_auto_join$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var auto_join_level$field:uint;
      
      private var goal_type$field:uint;
      
      private var goal_id$field:uint;
      
      public function ProtoTeamBaseInfoUpdateRequest()
      {
         super();
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
      
      public function clearAllowAutoJoin() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.allow_auto_join$field = new Boolean();
      }
      
      public function get hasAllowAutoJoin() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set allowAutoJoin(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.allow_auto_join$field = param1;
      }
      
      public function get allowAutoJoin() : Boolean
      {
         return this.allow_auto_join$field;
      }
      
      public function clearAutoJoinLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.auto_join_level$field = new uint();
      }
      
      public function get hasAutoJoinLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set autoJoinLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.auto_join_level$field = param1;
      }
      
      public function get autoJoinLevel() : uint
      {
         return this.auto_join_level$field;
      }
      
      public function clearGoalType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.goal_type$field = new uint();
      }
      
      public function get hasGoalType() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set goalType(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.goal_type$field = param1;
      }
      
      public function get goalType() : uint
      {
         return this.goal_type$field;
      }
      
      public function clearGoalId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.goal_id$field = new uint();
      }
      
      public function get hasGoalId() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set goalId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.goal_id$field = param1;
      }
      
      public function get goalId() : uint
      {
         return this.goal_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasAllowAutoJoin)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.allow_auto_join$field);
         }
         if(this.hasAutoJoinLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.auto_join_level$field);
         }
         if(this.hasGoalType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.goal_type$field);
         }
         if(this.hasGoalId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.goal_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
