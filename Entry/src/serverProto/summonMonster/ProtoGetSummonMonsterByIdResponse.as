package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetSummonMonsterByIdResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterByIdResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SUMMON_MONSTER_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterByIdResponse.summon_monster_info","summonMonsterInfo",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSummonMonsterInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var summon_monster_info$field:serverProto.summonMonster.ProtoSummonMonsterInfo;
      
      public function ProtoGetSummonMonsterByIdResponse()
      {
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
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasSummonMonsterInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.summon_monster_info$field);
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
