package serverProto.rank
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetRankRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoGetRankRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const RANK_ITEM_INFOS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoGetRankRsp.rank_item_infos","rankItemInfos",2 << 3 | WireType.LENGTH_DELIMITED,ProtoRankItemInfo);
      
      public static const MY_ITEM_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoGetRankRsp.my_item_info","myItemInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoRankItemInfo);
      
      public static const GAP_TO_FORMER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.rank.ProtoGetRankRsp.gap_to_former","gapToFormer",4 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      [ArrayElementType("serverProto.rank.ProtoRankItemInfo")]
      public var rankItemInfos:Array;
      
      private var my_item_info$field:serverProto.rank.ProtoRankItemInfo;
      
      private var gap_to_former$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoGetRankRsp()
      {
         this.rankItemInfos = [];
         super();
      }
      
      public function clearMyItemInfo() : void
      {
         this.my_item_info$field = null;
      }
      
      public function get hasMyItemInfo() : Boolean
      {
         return this.my_item_info$field != null;
      }
      
      public function set myItemInfo(param1:serverProto.rank.ProtoRankItemInfo) : void
      {
         this.my_item_info$field = param1;
      }
      
      public function get myItemInfo() : serverProto.rank.ProtoRankItemInfo
      {
         return this.my_item_info$field;
      }
      
      public function clearGapToFormer() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.gap_to_former$field = new int();
      }
      
      public function get hasGapToFormer() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set gapToFormer(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.gap_to_former$field = param1;
      }
      
      public function get gapToFormer() : int
      {
         return this.gap_to_former$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         var _loc2_:uint = 0;
         while(_loc2_ < this.rankItemInfos.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rankItemInfos[_loc2_]);
            _loc2_++;
         }
         if(this.hasMyItemInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.my_item_info$field);
         }
         if(this.hasGapToFormer)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.gap_to_former$field);
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
