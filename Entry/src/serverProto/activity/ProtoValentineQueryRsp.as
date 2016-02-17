package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoValentineQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoValentineQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineQueryRsp.end_time","endTime",2 << 3 | WireType.VARINT);
      
      public static const ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineQueryRsp.item_num","itemNum",3 << 3 | WireType.VARINT);
      
      public static const VOTES:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineQueryRsp.votes","votes",4 << 3 | WireType.VARINT);
      
      public static const RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoValentineQueryRsp.rank","rank",5 << 3 | WireType.LENGTH_DELIMITED,ProtoValentineRank);
      
      public static const BOX:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoValentineQueryRsp.box","box",6 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var ret$field:ProtoRetInfo;
      
      private var end_time$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var item_num$field:uint;
      
      [ArrayElementType("uint")]
      public var votes:Array;
      
      [ArrayElementType("serverProto.activity.ProtoValentineRank")]
      public var rank:Array;
      
      private var box$field:serverProto.activity.ProtoAwardPackageBox;
      
      public function ProtoValentineQueryRsp()
      {
         this.votes = [];
         this.rank = [];
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearEndTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.end_time$field = new uint();
      }
      
      public function get hasEndTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set endTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.end_time$field = param1;
      }
      
      public function get endTime() : uint
      {
         return this.end_time$field;
      }
      
      public function clearItemNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.item_num$field = new uint();
      }
      
      public function get hasItemNum() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set itemNum(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.item_num$field = param1;
      }
      
      public function get itemNum() : uint
      {
         return this.item_num$field;
      }
      
      public function clearBox() : void
      {
         this.box$field = null;
      }
      
      public function get hasBox() : Boolean
      {
         return this.box$field != null;
      }
      
      public function set box(param1:serverProto.activity.ProtoAwardPackageBox) : void
      {
         this.box$field = param1;
      }
      
      public function get box() : serverProto.activity.ProtoAwardPackageBox
      {
         return this.box$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasEndTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.end_time$field);
         }
         if(this.hasItemNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.item_num$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.votes.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.votes[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.rank.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rank[_loc3_]);
            _loc3_++;
         }
         if(this.hasBox)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.box$field);
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
