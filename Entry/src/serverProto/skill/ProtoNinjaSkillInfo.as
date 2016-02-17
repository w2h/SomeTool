package serverProto.skill
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaSkillInfo extends Message
   {
      
      public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoNinjaSkillInfo.ninja_seq","ninjaSeq",1 << 3 | WireType.VARINT);
      
      public static const NINJA_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoNinjaSkillInfo.ninja_id","ninjaId",2 << 3 | WireType.VARINT);
      
      public static const CURRENT_LOCATION:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.skill.ProtoNinjaSkillInfo.current_location","currentLocation",3 << 3 | WireType.VARINT);
      
      public static const SKILL_IN_POSITION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoNinjaSkillInfo.skill_in_position","skillInPosition",4 << 3 | WireType.LENGTH_DELIMITED,ProtoSkillInPosition);
       
      public var ninjaSeq:uint;
      
      public var ninjaId:uint;
      
      private var current_location$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.skill.ProtoSkillInPosition")]
      public var skillInPosition:Array;
      
      public function ProtoNinjaSkillInfo()
      {
         this.skillInPosition = [];
         super();
      }
      
      public function clearCurrentLocation() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_location$field = new int();
      }
      
      public function get hasCurrentLocation() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentLocation(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_location$field = param1;
      }
      
      public function get currentLocation() : int
      {
         return this.current_location$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaSeq);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.ninjaId);
         if(this.hasCurrentLocation)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.current_location$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.skillInPosition.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.skillInPosition[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
