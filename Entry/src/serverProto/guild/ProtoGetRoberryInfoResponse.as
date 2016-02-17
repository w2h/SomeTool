package serverProto.guild
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
   
   public final class ProtoGetRoberryInfoResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetRoberryInfoResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const TOTAL_ROBERRY_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGetRoberryInfoResponse.total_roberry_times","totalRoberryTimes",2 << 3 | WireType.VARINT);
      
      public static const CURRENT_ROBERRY_TIMES:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGetRoberryInfoResponse.current_roberry_times","currentRoberryTimes",3 << 3 | WireType.VARINT);
      
      public static const ROBERRY_INFO_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGetRoberryInfoResponse.roberry_info_list","roberryInfoList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoRoberryInfo);
      
      public static const AUTO_CHOOSE_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGetRoberryInfoResponse.auto_choose_index","autoChooseIndex",5 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var total_roberry_times$field:int;
      
      private var hasField$0:uint = 0;
      
      private var current_roberry_times$field:int;
      
      [ArrayElementType("serverProto.guild.ProtoRoberryInfo")]
      public var roberryInfoList:Array;
      
      private var auto_choose_index$field:int;
      
      public function ProtoGetRoberryInfoResponse()
      {
         this.roberryInfoList = [];
         super();
      }
      
      public function clearTotalRoberryTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_roberry_times$field = new int();
      }
      
      public function get hasTotalRoberryTimes() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalRoberryTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_roberry_times$field = param1;
      }
      
      public function get totalRoberryTimes() : int
      {
         return this.total_roberry_times$field;
      }
      
      public function clearCurrentRoberryTimes() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.current_roberry_times$field = new int();
      }
      
      public function get hasCurrentRoberryTimes() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set currentRoberryTimes(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.current_roberry_times$field = param1;
      }
      
      public function get currentRoberryTimes() : int
      {
         return this.current_roberry_times$field;
      }
      
      public function clearAutoChooseIndex() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.auto_choose_index$field = new int();
      }
      
      public function get hasAutoChooseIndex() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set autoChooseIndex(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.auto_choose_index$field = param1;
      }
      
      public function get autoChooseIndex() : int
      {
         return this.auto_choose_index$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasTotalRoberryTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.total_roberry_times$field);
         }
         if(this.hasCurrentRoberryTimes)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.current_roberry_times$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.roberryInfoList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.roberryInfoList[_loc2_]);
            _loc2_++;
         }
         if(this.hasAutoChooseIndex)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.auto_choose_index$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
