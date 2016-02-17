package serverProto.ninjaexam
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaExamFightNotify extends Message
   {
      
      public static const EXAMINFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoNinjaExamFightNotify.examinfo","examinfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaExamInfo);
      
      public static const CURR_ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaexam.ProtoNinjaExamFightNotify.curr_item_info","currItemInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoExamStageItemInfo);
       
      public var examinfo:serverProto.ninjaexam.ProtoNinjaExamInfo;
      
      private var curr_item_info$field:serverProto.ninjaexam.ProtoExamStageItemInfo;
      
      public function ProtoNinjaExamFightNotify()
      {
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
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.examinfo);
         if(this.hasCurrItemInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.curr_item_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
