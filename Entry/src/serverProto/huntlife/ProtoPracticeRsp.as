package serverProto.huntlife
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPracticeRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoPracticeRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const PRACTICE_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoPracticeRsp.practice_info","practiceInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoHuntLifePracticeInfo);
      
      public static const HUNT_LIFE_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.huntlife.ProtoPracticeRsp.hunt_life_info","huntLifeInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoHuntLifeInfo);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.huntlife.ProtoHuntLifePracticeInfo")]
      public var practiceInfo:Array;
      
      private var hunt_life_info$field:serverProto.huntlife.ProtoHuntLifeInfo;
      
      public function ProtoPracticeRsp()
      {
         this.practiceInfo = [];
         super();
      }
      
      public function clearHuntLifeInfo() : void
      {
         this.hunt_life_info$field = null;
      }
      
      public function get hasHuntLifeInfo() : Boolean
      {
         return this.hunt_life_info$field != null;
      }
      
      public function set huntLifeInfo(param1:serverProto.huntlife.ProtoHuntLifeInfo) : void
      {
         this.hunt_life_info$field = param1;
      }
      
      public function get huntLifeInfo() : serverProto.huntlife.ProtoHuntLifeInfo
      {
         return this.hunt_life_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.practiceInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.practiceInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasHuntLifeInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.hunt_life_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
