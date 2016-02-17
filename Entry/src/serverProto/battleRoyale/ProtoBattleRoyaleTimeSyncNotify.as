package serverProto.battleRoyale
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBattleRoyaleTimeSyncNotify extends Message
   {
      
      public static const NOW:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleTimeSyncNotify.now","now",1 << 3 | WireType.VARINT);
      
      public static const SIGN_UP_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleTimeSyncNotify.sign_up_time","signUpTime",2 << 3 | WireType.VARINT);
      
      public static const ACTIVITY_OVER_TIME:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.battleRoyale.ProtoBattleRoyaleTimeSyncNotify.activity_over_time","activityOverTime",3 << 3 | WireType.VARINT);
       
      public var now:UInt64;
      
      private var sign_up_time$field:UInt64;
      
      private var activity_over_time$field:UInt64;
      
      public function ProtoBattleRoyaleTimeSyncNotify()
      {
         super();
      }
      
      public function clearSignUpTime() : void
      {
         this.sign_up_time$field = null;
      }
      
      public function get hasSignUpTime() : Boolean
      {
         return this.sign_up_time$field != null;
      }
      
      public function set signUpTime(param1:UInt64) : void
      {
         this.sign_up_time$field = param1;
      }
      
      public function get signUpTime() : UInt64
      {
         return this.sign_up_time$field;
      }
      
      public function clearActivityOverTime() : void
      {
         this.activity_over_time$field = null;
      }
      
      public function get hasActivityOverTime() : Boolean
      {
         return this.activity_over_time$field != null;
      }
      
      public function set activityOverTime(param1:UInt64) : void
      {
         this.activity_over_time$field = param1;
      }
      
      public function get activityOverTime() : UInt64
      {
         return this.activity_over_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT64(param1,this.now);
         if(this.hasSignUpTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT64(param1,this.sign_up_time$field);
         }
         if(this.hasActivityOverTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT64(param1,this.activity_over_time$field);
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
