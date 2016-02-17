package serverProto.team
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCreateTeamRequest extends Message
   {
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoCreateTeamRequest.name","name",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const GOAL_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoCreateTeamRequest.goal_type","goalType",2 << 3 | WireType.VARINT,ProtoTeamType);
      
      public static const GOAL_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoCreateTeamRequest.goal_id","goalId",3 << 3 | WireType.VARINT);
       
      public var name:String;
      
      public var goalType:int;
      
      private var goal_id$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoCreateTeamRequest()
      {
         super();
      }
      
      public function clearGoalId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.goal_id$field = new int();
      }
      
      public function get hasGoalId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set goalId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.goal_id$field = param1;
      }
      
      public function get goalId() : int
      {
         return this.goal_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_STRING(param1,this.name);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_ENUM(param1,this.goalType);
         if(this.hasGoalId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.goal_id$field);
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
