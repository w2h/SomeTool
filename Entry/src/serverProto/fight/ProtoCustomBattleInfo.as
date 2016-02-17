package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoCustomBattleInfo extends Message
   {
      
      public static const CUSTOM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoCustomBattleInfo.custom_id","customId",1 << 3 | WireType.VARINT);
      
      public static const SECTION_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoCustomBattleInfo.section_id","sectionId",2 << 3 | WireType.VARINT);
      
      public static const CURRENT_BATTLE_WAVE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoCustomBattleInfo.current_battle_wave","currentBattleWave",3 << 3 | WireType.VARINT);
      
      public static const TOTAL_BATTLE_WAVE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoCustomBattleInfo.total_battle_wave","totalBattleWave",4 << 3 | WireType.VARINT);
       
      public var customId:uint;
      
      public var sectionId:uint;
      
      private var current_battle_wave$field:int;
      
      private var hasField$0:uint = 0;
      
      private var total_battle_wave$field:int;
      
      public function ProtoCustomBattleInfo()
      {
         super();
      }
      
      public function clearCurrentBattleWave() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_battle_wave$field = new int();
      }
      
      public function get hasCurrentBattleWave() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentBattleWave(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_battle_wave$field = param1;
      }
      
      public function get currentBattleWave() : int
      {
         return this.current_battle_wave$field;
      }
      
      public function clearTotalBattleWave() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.total_battle_wave$field = new int();
      }
      
      public function get hasTotalBattleWave() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set totalBattleWave(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.total_battle_wave$field = param1;
      }
      
      public function get totalBattleWave() : int
      {
         return this.total_battle_wave$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.customId);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.sectionId);
         if(this.hasCurrentBattleWave)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.current_battle_wave$field);
         }
         if(this.hasTotalBattleWave)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.total_battle_wave$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
