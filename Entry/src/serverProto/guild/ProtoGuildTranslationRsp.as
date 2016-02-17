package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildTranslationRsp extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildTranslationRsp.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildTranslationRsp.award_list","awardList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
      
      public static const TRAN_INFOS_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildTranslationRsp.tran_infos_list","tranInfosList",3 << 3 | WireType.LENGTH_DELIMITED,ProtoGuildTranslationInfoList);
       
      public var retInfo:ProtoRetInfo;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var awardList:Array;
      
      private var tran_infos_list$field:serverProto.guild.ProtoGuildTranslationInfoList;
      
      public function ProtoGuildTranslationRsp()
      {
         this.awardList = [];
         super();
      }
      
      public function clearTranInfosList() : void
      {
         this.tran_infos_list$field = null;
      }
      
      public function get hasTranInfosList() : Boolean
      {
         return this.tran_infos_list$field != null;
      }
      
      public function set tranInfosList(param1:serverProto.guild.ProtoGuildTranslationInfoList) : void
      {
         this.tran_infos_list$field = param1;
      }
      
      public function get tranInfosList() : serverProto.guild.ProtoGuildTranslationInfoList
      {
         return this.tran_infos_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         var _loc2_:uint = 0;
         while(_loc2_ < this.awardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awardList[_loc2_]);
            _loc2_++;
         }
         if(this.hasTranInfosList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.tran_infos_list$field);
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
