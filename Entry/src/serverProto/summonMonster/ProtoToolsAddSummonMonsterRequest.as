package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoToolsAddSummonMonsterRequest extends Message
   {
      
      public static const SUMMON_MONSTER_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoToolsAddSummonMonsterRequest.summon_monster_id","summonMonsterId",1 << 3 | WireType.VARINT);
       
      private var summon_monster_id$field:int;
      
      private var hasField$0:uint = 0;
      
      public function ProtoToolsAddSummonMonsterRequest()
      {
         super();
      }
      
      public function clearSummonMonsterId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.summon_monster_id$field = new int();
      }
      
      public function get hasSummonMonsterId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set summonMonsterId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.summon_monster_id$field = param1;
      }
      
      public function get summonMonsterId() : int
      {
         return this.summon_monster_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasSummonMonsterId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.summon_monster_id$field);
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
          * Error type: IndexOutOfBoundsException (Index: 1, Size: 1)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
