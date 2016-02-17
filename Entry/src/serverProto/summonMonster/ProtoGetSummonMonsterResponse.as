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
   
   public final class ProtoGetSummonMonsterResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const SUMMON_MONSTER_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoGetSummonMonsterResponse.summon_monster_list","summonMonsterList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoSummonMonsterList);
       
      public var ret:ProtoRetInfo;
      
      private var summon_monster_list$field:serverProto.summonMonster.ProtoSummonMonsterList;
      
      public function ProtoGetSummonMonsterResponse()
      {
         super();
      }
      
      public function clearSummonMonsterList() : void
      {
         this.summon_monster_list$field = null;
      }
      
      public function get hasSummonMonsterList() : Boolean
      {
         return this.summon_monster_list$field != null;
      }
      
      public function set summonMonsterList(param1:serverProto.summonMonster.ProtoSummonMonsterList) : void
      {
         this.summon_monster_list$field = param1;
      }
      
      public function get summonMonsterList() : serverProto.summonMonster.ProtoSummonMonsterList
      {
         return this.summon_monster_list$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasSummonMonsterList)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.summon_monster_list$field);
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
