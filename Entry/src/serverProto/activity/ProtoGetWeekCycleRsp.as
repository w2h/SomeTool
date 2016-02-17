package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.weekCycle.ProtoModId;
   import serverProto.weekCycle.ProtoModAdditionInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetWeekCycleRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGetWeekCycleRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const ACTIVITY_MOD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activity.ProtoGetWeekCycleRsp.activity_mod_id","activityModId",2 << 3 | WireType.VARINT,ProtoModId);
      
      public static const MOD_ADDITION_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGetWeekCycleRsp.mod_addition_info","modAdditionInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoModAdditionInfo);
       
      private var ret$field:ProtoRetInfo;
      
      private var activity_mod_id$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.weekCycle.ProtoModAdditionInfo")]
      public var modAdditionInfo:Array;
      
      public function ProtoGetWeekCycleRsp()
      {
         this.modAdditionInfo = [];
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearActivityModId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.activity_mod_id$field = new int();
      }
      
      public function get hasActivityModId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set activityModId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.activity_mod_id$field = param1;
      }
      
      public function get activityModId() : int
      {
         return this.activity_mod_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasActivityModId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_ENUM(param1,this.activity_mod_id$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.modAdditionInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.modAdditionInfo[_loc2_]);
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
