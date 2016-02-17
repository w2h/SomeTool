package serverProto.baseInfo
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRoleMoodList extends Message
   {
      
      public static const MOOD_LIST:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoRoleMoodList.mood_list","moodList",1 << 3 | WireType.VARINT);
      
      public static const CURRENT_MOOD_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoRoleMoodList.current_mood_index","currentMoodIndex",2 << 3 | WireType.VARINT);
       
      [ArrayElementType("uint")]
      public var moodList:Array;
      
      private var current_mood_index$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoRoleMoodList()
      {
         this.moodList = [];
         super();
      }
      
      public function clearCurrentMoodIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_mood_index$field = new uint();
      }
      
      public function get hasCurrentMoodIndex() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentMoodIndex(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_mood_index$field = param1;
      }
      
      public function get currentMoodIndex() : uint
      {
         return this.current_mood_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.moodList.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.moodList[_loc2_]);
            _loc2_++;
         }
         if(this.hasCurrentMoodIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.current_mood_index$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
