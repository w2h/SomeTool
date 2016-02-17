package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoItemInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDailyUseGoldInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyUseGoldInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const USE_GOLD_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyUseGoldInfoRsp.use_gold_state","useGoldState",2 << 3 | WireType.VARINT);
      
      public static const AWARD_STATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyUseGoldInfoRsp.award_state","awardState",3 << 3 | WireType.VARINT);
      
      public static const BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyUseGoldInfoRsp.boxes","boxes",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const AWARD_BOX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyUseGoldInfoRsp.award_box","awardBox",5 << 3 | WireType.VARINT);
      
      public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyUseGoldInfoRsp.award","award",6 << 3 | WireType.LENGTH_DELIMITED,ProtoItemInfo);
       
      private var ret$field:ProtoRetInfo;
      
      private var use_gold_state$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var award_state$field:uint;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var boxes:Array;
      
      private var award_box$field:uint;
      
      [ArrayElementType("serverProto.inc.ProtoItemInfo")]
      public var award:Array;
      
      public function ProtoDailyUseGoldInfoRsp()
      {
         this.boxes = [];
         this.award = [];
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
      
      public function clearUseGoldState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.use_gold_state$field = new uint();
      }
      
      public function get hasUseGoldState() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set useGoldState(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.use_gold_state$field = param1;
      }
      
      public function get useGoldState() : uint
      {
         return this.use_gold_state$field;
      }
      
      public function clearAwardState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_state$field = new uint();
      }
      
      public function get hasAwardState() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardState(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_state$field = param1;
      }
      
      public function get awardState() : uint
      {
         return this.award_state$field;
      }
      
      public function clearAwardBox() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.award_box$field = new uint();
      }
      
      public function get hasAwardBox() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set awardBox(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.award_box$field = param1;
      }
      
      public function get awardBox() : uint
      {
         return this.award_box$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasUseGoldState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.use_gold_state$field);
         }
         if(this.hasAwardState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.award_state$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.boxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.boxes[_loc2_]);
            _loc2_++;
         }
         if(this.hasAwardBox)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.award_box$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.award.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award[_loc3_]);
            _loc3_++;
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
