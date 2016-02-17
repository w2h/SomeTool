package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.bag.ProtoBagRuneInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoContractInfo extends Message
   {
      
      public static const CONTRACT_POS:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoContractInfo.contract_pos","contractPos",1 << 3 | WireType.VARINT);
      
      public static const RUNE_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoContractInfo.rune_list","runeList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBagRuneInfo);
      
      public static const SUMMON_MONSTER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoContractInfo.summon_monster_info","summonMonsterInfo",3 << 3 | WireType.LENGTH_DELIMITED,ProtoSummonMonsterInfo);
      
      public static const OPEN:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoContractInfo.open","open",4 << 3 | WireType.VARINT);
      
      public static const OPEN_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoContractInfo.open_level","openLevel",5 << 3 | WireType.VARINT);
       
      public var contractPos:int;
      
      [ArrayElementType("serverProto.bag.ProtoBagRuneInfo")]
      public var runeList:Array;
      
      private var summon_monster_info$field:serverProto.summonMonster.ProtoSummonMonsterInfo;
      
      private var open$field:int;
      
      private var hasField$0:uint = 0;
      
      private var open_level$field:int;
      
      public function ProtoContractInfo()
      {
         this.runeList = [];
         super();
      }
      
      public function clearSummonMonsterInfo() : void
      {
         this.summon_monster_info$field = null;
      }
      
      public function get hasSummonMonsterInfo() : Boolean
      {
         return this.summon_monster_info$field != null;
      }
      
      public function set summonMonsterInfo(param1:serverProto.summonMonster.ProtoSummonMonsterInfo) : void
      {
         this.summon_monster_info$field = param1;
      }
      
      public function get summonMonsterInfo() : serverProto.summonMonster.ProtoSummonMonsterInfo
      {
         return this.summon_monster_info$field;
      }
      
      public function clearOpen() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.open$field = new int();
      }
      
      public function get hasOpen() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set open(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.open$field = param1;
      }
      
      public function get open() : int
      {
         return this.open$field;
      }
      
      public function clearOpenLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.open_level$field = new int();
      }
      
      public function get hasOpenLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set openLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.open_level$field = param1;
      }
      
      public function get openLevel() : int
      {
         return this.open_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_SINT32(param1,this.contractPos);
         var _loc2_:uint = 0;
         while(_loc2_ < this.runeList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.runeList[_loc2_]);
            _loc2_++;
         }
         if(this.hasSummonMonsterInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.summon_monster_info$field);
         }
         if(this.hasOpen)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.open$field);
         }
         if(this.hasOpenLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_SINT32(param1,this.open_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
