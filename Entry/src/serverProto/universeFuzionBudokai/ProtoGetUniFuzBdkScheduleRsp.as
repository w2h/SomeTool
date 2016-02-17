package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetUniFuzBdkScheduleRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkScheduleRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SEASON:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkScheduleRsp.season","season",2 << 3 | WireType.VARINT);
      
      public static const WAR_SCHEDULE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniFuzBdkScheduleRsp.war_schedule","warSchedule",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUniFuzBdkWarSchedule);
       
      public var ret:ProtoRetInfo;
      
      private var season$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.universeFuzionBudokai.ProtoUniFuzBdkWarSchedule")]
      public var warSchedule:Array;
      
      public function ProtoGetUniFuzBdkScheduleRsp()
      {
         this.warSchedule = [];
         super();
      }
      
      public function clearSeason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.season$field = new int();
      }
      
      public function get hasSeason() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set season(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.season$field = param1;
      }
      
      public function get season() : int
      {
         return this.season$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSeason)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.season$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.warSchedule.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.warSchedule[_loc2_]);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
