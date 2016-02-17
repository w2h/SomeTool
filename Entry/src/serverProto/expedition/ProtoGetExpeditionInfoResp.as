package serverProto.expedition
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetExpeditionInfoResp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const EXPEDITION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.expedition_info","expeditionInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoExpeditionInfo);
      
      public static const AWARD_EXPEDITION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.award_expedition_info","awardExpeditionInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardExpeditionInfo);
      
      public static const AWARD_BOX_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.expedition.ProtoGetExpeditionInfoResp.award_box_info","awardBoxInfo",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardBoxInfo);
      
      public static const AWARD_OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoGetExpeditionInfoResp.award_open_level","awardOpenLevel",5 << 3 | WireType.VARINT);
      
      public static const AWARD_OPEN_STAGE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.expedition.ProtoGetExpeditionInfoResp.award_open_stage","awardOpenStage",6 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var expedition_info$field:serverProto.expedition.ProtoExpeditionInfo;
      
      private var award_expedition_info$field:serverProto.expedition.ProtoAwardExpeditionInfo;
      
      private var award_box_info$field:serverProto.expedition.ProtoAwardBoxInfo;
      
      private var award_open_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var award_open_stage$field:int;
      
      public function ProtoGetExpeditionInfoResp()
      {
         super();
      }
      
      public function clearExpeditionInfo() : void
      {
         this.expedition_info$field = null;
      }
      
      public function get hasExpeditionInfo() : Boolean
      {
         return this.expedition_info$field != null;
      }
      
      public function set expeditionInfo(param1:serverProto.expedition.ProtoExpeditionInfo) : void
      {
         this.expedition_info$field = param1;
      }
      
      public function get expeditionInfo() : serverProto.expedition.ProtoExpeditionInfo
      {
         return this.expedition_info$field;
      }
      
      public function clearAwardExpeditionInfo() : void
      {
         this.award_expedition_info$field = null;
      }
      
      public function get hasAwardExpeditionInfo() : Boolean
      {
         return this.award_expedition_info$field != null;
      }
      
      public function set awardExpeditionInfo(param1:serverProto.expedition.ProtoAwardExpeditionInfo) : void
      {
         this.award_expedition_info$field = param1;
      }
      
      public function get awardExpeditionInfo() : serverProto.expedition.ProtoAwardExpeditionInfo
      {
         return this.award_expedition_info$field;
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
      
      public function clearAwardOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.award_open_level$field = new int();
      }
      
      public function get hasAwardOpenLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set awardOpenLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.award_open_level$field = param1;
      }
      
      public function get awardOpenLevel() : int
      {
         return this.award_open_level$field;
      }
      
      public function clearAwardOpenStage() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.award_open_stage$field = new int();
      }
      
      public function get hasAwardOpenStage() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set awardOpenStage(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.award_open_stage$field = param1;
      }
      
      public function get awardOpenStage() : int
      {
         return this.award_open_stage$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasExpeditionInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.expedition_info$field);
         }
         if(this.hasAwardExpeditionInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award_expedition_info$field);
         }
         if(this.hasAwardBoxInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.award_box_info$field);
         }
         if(this.hasAwardOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.award_open_level$field);
         }
         if(this.hasAwardOpenStage)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_SINT32(param1,this.award_open_stage$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
