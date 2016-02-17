package serverProto.ninjaSystem
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
   
   public final class ProtoGetEatExpLevelInfoResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const NEED_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoResponse.need_num","needNum",2 << 3 | WireType.VARINT);
      
      public static const REAL_REACH_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpLevelInfoResponse.real_reach_level","realReachLevel",3 << 3 | WireType.VARINT);
       
      public var retInfo:ProtoRetInfo;
      
      private var need_num$field:int;
      
      private var hasField$0:uint = 0;
      
      private var real_reach_level$field:int;
      
      public function ProtoGetEatExpLevelInfoResponse()
      {
         super();
      }
      
      public function clearNeedNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_num$field = new int();
      }
      
      public function get hasNeedNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_num$field = param1;
      }
      
      public function get needNum() : int
      {
         return this.need_num$field;
      }
      
      public function clearRealReachLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.real_reach_level$field = new int();
      }
      
      public function get hasRealReachLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set realReachLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.real_reach_level$field = param1;
      }
      
      public function get realReachLevel() : int
      {
         return this.real_reach_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasNeedNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.need_num$field);
         }
         if(this.hasRealReachLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.real_reach_level$field);
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
