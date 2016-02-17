package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTinyRoundTimeReport extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTinyRoundTimeReport.id","id",1 << 3 | WireType.VARINT);
      
      public static const ACTION_TIME_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoTinyRoundTimeReport.action_time_info","actionTimeInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoActionTimeDetailInfo);
      
      public static const FRAME_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoTinyRoundTimeReport.frame_count","frameCount",3 << 3 | WireType.VARINT);
       
      public var id:int;
      
      [ArrayElementType("serverProto.fight.ProtoActionTimeDetailInfo")]
      public var actionTimeInfo:Array;
      
      private var frame_count$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoTinyRoundTimeReport()
      {
         this.actionTimeInfo = [];
         super();
      }
      
      public function clearFrameCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.frame_count$field = new int();
      }
      
      public function get hasFrameCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set frameCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.frame_count$field = param1;
      }
      
      public function get frameCount() : int
      {
         return this.frame_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.id);
         var _loc2_:uint = 0;
         while(_loc2_ < this.actionTimeInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.actionTimeInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasFrameCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.frame_count$field);
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
