package serverProto.ninjaexam
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDifficultyInfo extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoDifficultyInfo.index","index",1 << 3 | WireType.VARINT);
      
      public static const PASS_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoDifficultyInfo.pass_count","passCount",2 << 3 | WireType.VARINT);
      
      public static const PASS_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoDifficultyInfo.pass_time","passTime",3 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaexam.ProtoDifficultyInfo.state","state",4 << 3 | WireType.VARINT);
      
      public static const FIRST_PASS_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoDifficultyInfo.first_pass_time","firstPassTime",5 << 3 | WireType.VARINT);
      
      public static const CURR_PASS_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.ninjaexam.ProtoDifficultyInfo.curr_pass_count","currPassCount",6 << 3 | WireType.VARINT);
       
      public var index:int;
      
      public var passCount:int;
      
      public var passTime:uint;
      
      public var state:int;
      
      private var first_pass_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var curr_pass_count$field:uint;
      
      public function ProtoDifficultyInfo()
      {
         super();
      }
      
      public function clearFirstPassTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.first_pass_time$field = new uint();
      }
      
      public function get hasFirstPassTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set firstPassTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.first_pass_time$field = param1;
      }
      
      public function get firstPassTime() : uint
      {
         return this.first_pass_time$field;
      }
      
      public function clearCurrPassCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.curr_pass_count$field = new uint();
      }
      
      public function get hasCurrPassCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currPassCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.curr_pass_count$field = param1;
      }
      
      public function get currPassCount() : uint
      {
         return this.curr_pass_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.index);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.passCount);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.passTime);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_INT32(param1,this.state);
         if(this.hasFirstPassTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.first_pass_time$field);
         }
         if(this.hasCurrPassCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.curr_pass_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
