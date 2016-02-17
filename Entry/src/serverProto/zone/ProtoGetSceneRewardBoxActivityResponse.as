package serverProto.zone
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetSceneRewardBoxActivityResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.zone.ProtoGetSceneRewardBoxActivityResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SMALL_TOTAL_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.zone.ProtoGetSceneRewardBoxActivityResponse.small_total_count","smallTotalCount",2 << 3 | WireType.VARINT);
      
      public static const SMALL_CURRENT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.zone.ProtoGetSceneRewardBoxActivityResponse.small_current_count","smallCurrentCount",3 << 3 | WireType.VARINT);
      
      public static const BIG_TOTAL_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.zone.ProtoGetSceneRewardBoxActivityResponse.big_total_count","bigTotalCount",4 << 3 | WireType.VARINT);
      
      public static const BIG_CURRENT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.zone.ProtoGetSceneRewardBoxActivityResponse.big_current_count","bigCurrentCount",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var small_total_count$field:int;
      
      private var hasField$0:uint = 0;
      
      private var small_current_count$field:int;
      
      private var big_total_count$field:int;
      
      private var big_current_count$field:int;
      
      public function ProtoGetSceneRewardBoxActivityResponse()
      {
         super();
      }
      
      public function clearSmallTotalCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.small_total_count$field = new int();
      }
      
      public function get hasSmallTotalCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set smallTotalCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.small_total_count$field = param1;
      }
      
      public function get smallTotalCount() : int
      {
         return this.small_total_count$field;
      }
      
      public function clearSmallCurrentCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.small_current_count$field = new int();
      }
      
      public function get hasSmallCurrentCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set smallCurrentCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.small_current_count$field = param1;
      }
      
      public function get smallCurrentCount() : int
      {
         return this.small_current_count$field;
      }
      
      public function clearBigTotalCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.big_total_count$field = new int();
      }
      
      public function get hasBigTotalCount() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set bigTotalCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.big_total_count$field = param1;
      }
      
      public function get bigTotalCount() : int
      {
         return this.big_total_count$field;
      }
      
      public function clearBigCurrentCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.big_current_count$field = new int();
      }
      
      public function get hasBigCurrentCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set bigCurrentCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.big_current_count$field = param1;
      }
      
      public function get bigCurrentCount() : int
      {
         return this.big_current_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSmallTotalCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.small_total_count$field);
         }
         if(this.hasSmallCurrentCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.small_current_count$field);
         }
         if(this.hasBigTotalCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.big_total_count$field);
         }
         if(this.hasBigCurrentCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.big_current_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
