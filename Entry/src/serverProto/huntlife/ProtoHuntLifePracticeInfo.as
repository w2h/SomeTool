package serverProto.huntlife
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHuntLifePracticeInfo extends Message
   {
      
      public static const BLANK_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifePracticeInfo.blank_info","blankInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoChakraBlankInfo);
      
      public static const NPC_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoHuntLifePracticeInfo.npc_info","npcInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNpcInfo);
       
      private var blank_info$field:serverProto.huntlife.ProtoChakraBlankInfo;
      
      [ArrayElementType("serverProto.huntlife.ProtoNpcInfo")]
      public var npcInfo:Array;
      
      public function ProtoHuntLifePracticeInfo()
      {
         this.npcInfo = [];
         super();
      }
      
      public function clearBlankInfo() : void
      {
         this.blank_info$field = null;
      }
      
      public function get hasBlankInfo() : Boolean
      {
         return this.blank_info$field != null;
      }
      
      public function set blankInfo(param1:serverProto.huntlife.ProtoChakraBlankInfo) : void
      {
         this.blank_info$field = param1;
      }
      
      public function get blankInfo() : serverProto.huntlife.ProtoChakraBlankInfo
      {
         return this.blank_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasBlankInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.blank_info$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.npcInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.npcInfo[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
