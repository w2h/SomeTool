package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetTeamListRequest extends Message
   {
      
      public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoGetTeamListRequest.type","type",1 << 3 | WireType.VARINT,ProtoTeamType);
      
      public static const GOAL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoGetTeamListRequest.goal_id","goalId",2 << 3 | WireType.VARINT);
      
      public static const LOW_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoGetTeamListRequest.low_level","lowLevel",3 << 3 | WireType.VARINT);
      
      public static const UP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.team.ProtoGetTeamListRequest.up_level","upLevel",4 << 3 | WireType.VARINT);
       
      public var type:int;
      
      private var goal_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var low_level$field:uint;
      
      private var up_level$field:uint;
      
      public function ProtoGetTeamListRequest()
      {
         super();
      }
      
      public function clearGoalId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.goal_id$field = new uint();
      }
      
      public function get hasGoalId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set goalId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.goal_id$field = param1;
      }
      
      public function get goalId() : uint
      {
         return this.goal_id$field;
      }
      
      public function clearLowLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.low_level$field = new uint();
      }
      
      public function get hasLowLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set lowLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.low_level$field = param1;
      }
      
      public function get lowLevel() : uint
      {
         return this.low_level$field;
      }
      
      public function clearUpLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.up_level$field = new uint();
      }
      
      public function get hasUpLevel() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set upLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.up_level$field = param1;
      }
      
      public function get upLevel() : uint
      {
         return this.up_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.type);
         if(this.hasGoalId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.goal_id$field);
         }
         if(this.hasLowLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.low_level$field);
         }
         if(this.hasUpLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.up_level$field);
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
