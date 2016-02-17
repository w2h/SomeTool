package serverProto.expedition
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
   
   public final class ProtoOpenExpeditionChestResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoOpenExpeditionChestResp.copper","copper",2 << 3 | WireType.VARINT);
      
      public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoOpenExpeditionChestResp.score","score",3 << 3 | WireType.VARINT);
      
      public static const AWARD_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.award_list","awardList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionAwardItem);
      
      public static const EXTRA_VIP_COPPER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoOpenExpeditionChestResp.extra_vip_copper","extraVipCopper",5 << 3 | WireType.VARINT);
      
      public static const AWARD_BOX:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.award_box","awardBox",6 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionAwardItem);
      
      public static const AWARD_BOX_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoOpenExpeditionChestResp.award_box_info","awardBoxInfo",7 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardBoxInfo);
       
      public var ret:ProtoRetInfo;
      
      private var copper$field:int;
      
      private var hasField$0:uint = 0;
      
      private var score$field:int;
      
      [ArrayElementType("serverProto.expedition.ProtoExpeditionAwardItem")]
      public var awardList:Array;
      
      private var extra_vip_copper$field:int;
      
      private var award_box$field:serverProto.expedition.ProtoExpeditionAwardItem;
      
      private var award_box_info$field:serverProto.expedition.ProtoAwardBoxInfo;
      
      public function ProtoOpenExpeditionChestResp()
      {
         this.awardList = [];
         super();
      }
      
      public function clearCopper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.copper$field = new int();
      }
      
      public function get hasCopper() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set copper(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.copper$field = param1;
      }
      
      public function get copper() : int
      {
         return this.copper$field;
      }
      
      public function clearScore() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.score$field = new int();
      }
      
      public function get hasScore() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set score(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.score$field = param1;
      }
      
      public function get score() : int
      {
         return this.score$field;
      }
      
      public function clearExtraVipCopper() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.extra_vip_copper$field = new int();
      }
      
      public function get hasExtraVipCopper() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set extraVipCopper(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.extra_vip_copper$field = param1;
      }
      
      public function get extraVipCopper() : int
      {
         return this.extra_vip_copper$field;
      }
      
      public function clearAwardBox() : void
      {
         this.award_box$field = null;
      }
      
      public function get hasAwardBox() : Boolean
      {
         return this.award_box$field != null;
      }
      
      public function set awardBox(param1:serverProto.expedition.ProtoExpeditionAwardItem) : void
      {
         this.award_box$field = param1;
      }
      
      public function get awardBox() : serverProto.expedition.ProtoExpeditionAwardItem
      {
         return this.award_box$field;
      }
      
      public function clearAwardBoxInfo() : void
      {
         this.award_box_info$field = null;
      }
      
      public function get hasAwardBoxInfo() : Boolean
      {
         return this.award_box_info$field != null;
      }
      
      public function set awardBoxInfo(param1:serverProto.expedition.ProtoAwardBoxInfo) : void
      {
         this.award_box_info$field = param1;
      }
      
      public function get awardBoxInfo() : serverProto.expedition.ProtoAwardBoxInfo
      {
         return this.award_box_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasCopper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.copper$field);
         }
         if(this.hasScore)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.score$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.awardList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.awardList[_loc2_]);
            _loc2_++;
         }
         if(this.hasExtraVipCopper)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.extra_vip_copper$field);
         }
         if(this.hasAwardBox)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award_box$field);
         }
         if(this.hasAwardBoxInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award_box_info$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
