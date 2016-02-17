package serverProto.tactic
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoTacticInfo extends Message
   {
      
      public static const INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.index","index",1 << 3 | WireType.VARINT);
      
      public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.tactic.ProtoTacticInfo.name","name",2 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.level","level",3 << 3 | WireType.VARINT);
      
      public static const STANCE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.tactic.ProtoTacticInfo.stance_list","stanceList",4 << 3 | WireType.LENGTH_DELIMITED,ProtoTacticStanceInfo);
      
      public static const LEVEL_UP_NEED_REEL_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.level_up_need_reel_count","levelUpNeedReelCount",5 << 3 | WireType.VARINT);
      
      public static const CAN_LEVEL_UP:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.tactic.ProtoTacticInfo.can_level_up","canLevelUp",6 << 3 | WireType.VARINT);
      
      public static const ITEM_ID_LIST:RepeatedFieldDescriptor$TYPE_SINT32 = new RepeatedFieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.item_id_list","itemIdList",7 << 3 | WireType.VARINT);
      
      public static const LEVEL_UP_HAVE_REEL_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.tactic.ProtoTacticInfo.level_up_have_reel_count","levelUpHaveReelCount",8 << 3 | WireType.VARINT);
       
      public var index:int;
      
      private var name$field:String;
      
      private var level$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.tactic.ProtoTacticStanceInfo")]
      public var stanceList:Array;
      
      private var level_up_need_reel_count$field:int;
      
      private var can_level_up$field:Boolean;
      
      [ArrayElementType("int")]
      public var itemIdList:Array;
      
      private var level_up_have_reel_count$field:int;
      
      public function ProtoTacticInfo()
      {
         this.stanceList = [];
         this.itemIdList = [];
         super();
      }
      
      public function clearName() : void
      {
         this.name$field = null;
      }
      
      public function get hasName() : Boolean
      {
         return this.name$field != null;
      }
      
      public function set name(param1:String) : void
      {
         this.name$field = param1;
      }
      
      public function get name() : String
      {
         return this.name$field;
      }
      
      public function clearLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.level$field = new int();
      }
      
      public function get hasLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set level(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.level$field = param1;
      }
      
      public function get level() : int
      {
         return this.level$field;
      }
      
      public function clearLevelUpNeedReelCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.level_up_need_reel_count$field = new int();
      }
      
      public function get hasLevelUpNeedReelCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set levelUpNeedReelCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.level_up_need_reel_count$field = param1;
      }
      
      public function get levelUpNeedReelCount() : int
      {
         return this.level_up_need_reel_count$field;
      }
      
      public function clearCanLevelUp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.can_level_up$field = new Boolean();
      }
      
      public function get hasCanLevelUp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set canLevelUp(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.can_level_up$field = param1;
      }
      
      public function get canLevelUp() : Boolean
      {
         return this.can_level_up$field;
      }
      
      public function clearLevelUpHaveReelCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.level_up_have_reel_count$field = new int();
      }
      
      public function get hasLevelUpHaveReelCount() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set levelUpHaveReelCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.level_up_have_reel_count$field = param1;
      }
      
      public function get levelUpHaveReelCount() : int
      {
         return this.level_up_have_reel_count$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.index);
         if(this.hasName)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_STRING(param1,this.name$field);
         }
         if(this.hasLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.level$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.stanceList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.stanceList[_loc2_]);
            _loc2_++;
         }
         if(this.hasLevelUpNeedReelCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.level_up_need_reel_count$field);
         }
         if(this.hasCanLevelUp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_BOOL(param1,this.can_level_up$field);
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.itemIdList.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_SINT32(param1,this.itemIdList[_loc3_]);
            _loc3_++;
         }
         if(this.hasLevelUpHaveReelCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_SINT32(param1,this.level_up_have_reel_count$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
