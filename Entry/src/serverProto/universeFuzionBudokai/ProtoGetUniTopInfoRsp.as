package serverProto.universeFuzionBudokai
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetUniTopInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniTopInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SEASON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.universeFuzionBudokai.ProtoGetUniTopInfoRsp.season","season",2 << 3 | WireType.VARINT);
      
      public static const SHOW_INFOS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.universeFuzionBudokai.ProtoGetUniTopInfoRsp.show_infos","showInfos",3 << 3 | WireType.LENGTH_DELIMITED,ProtoUniUserShowInfo);
       
      public var ret:ProtoRetInfo;
      
      private var season$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.universeFuzionBudokai.ProtoUniUserShowInfo")]
      public var showInfos:Array;
      
      public function ProtoGetUniTopInfoRsp()
      {
         this.showInfos = [];
         super();
      }
      
      public function clearSeason() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.season$field = new uint();
      }
      
      public function get hasSeason() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set season(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.season$field = param1;
      }
      
      public function get season() : uint
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
            WriteUtils.write$TYPE_UINT32(param1,this.season$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.showInfos.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.showInfos[_loc2_]);
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
