package serverProto.ninjaexam
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
   
   public final class ProtoGetNinjaExamInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoGetNinjaExamInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const EXAMINFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoGetNinjaExamInfoRsp.examinfo","examinfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaExamInfo);
      
      public static const STAGE_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoGetNinjaExamInfoRsp.stage_item_info","stageItemInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoExamStageItemInfo);
      
      public static const CURR_ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoGetNinjaExamInfoRsp.curr_item_info","currItemInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoExamStageItemInfo);
       
      public var ret:ProtoRetInfo;
      
      public var examinfo:serverProto.ninjaexam.ProtoNinjaExamInfo;
      
      [ArrayElementType("serverProto.ninjaexam.ProtoExamStageItemInfo")]
      public var stageItemInfo:Array;
      
      private var curr_item_info$field:serverProto.ninjaexam.ProtoExamStageItemInfo;
      
      public function ProtoGetNinjaExamInfoRsp()
      {
         this.stageItemInfo = [];
         super();
      }
      
      public function clearCurrItemInfo() : void
      {
         this.curr_item_info$field = null;
      }
      
      public function get hasCurrItemInfo() : Boolean
      {
         return this.curr_item_info$field != null;
      }
      
      public function set currItemInfo(param1:serverProto.ninjaexam.ProtoExamStageItemInfo) : void
      {
         this.curr_item_info$field = param1;
      }
      
      public function get currItemInfo() : serverProto.ninjaexam.ProtoExamStageItemInfo
      {
         return this.curr_item_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
         WriteUtils.write$TYPE_MESSAGE(param1,this.examinfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.stageItemInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stageItemInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasCurrItemInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.curr_item_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
