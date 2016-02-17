package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFightStartNotify extends Message
   {
      
      public static const FIGHT_RES_TO_LOAD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightStartNotify.fight_res_to_load","fightResToLoad",1 << 3 | WireType.LENGTH_DELIMITED,ProtoFightResToLoad);
      
      public static const INSERT_BATTLE_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoFightStartNotify.insert_battle_flag","insertBattleFlag",2 << 3 | WireType.VARINT);
      
      public static const ROUND_COUNT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartNotify.round_count","roundCount",3 << 3 | WireType.VARINT);
      
      public static const SPEED:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartNotify.speed","speed",4 << 3 | WireType.VARINT);
      
      public static const IS_MAIN:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoFightStartNotify.is_main","isMain",5 << 3 | WireType.VARINT);
       
      private var fight_res_to_load$field:serverProto.fight.ProtoFightResToLoad;
      
      private var insert_battle_flag$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var round_count$field:int;
      
      private var speed$field:int;
      
      private var is_main$field:Boolean;
      
      public function ProtoFightStartNotify()
      {
         super();
      }
      
      public function clearFightResToLoad() : void
      {
         this.fight_res_to_load$field = null;
      }
      
      public function get hasFightResToLoad() : Boolean
      {
         return this.fight_res_to_load$field != null;
      }
      
      public function set fightResToLoad(param1:serverProto.fight.ProtoFightResToLoad) : void
      {
         this.fight_res_to_load$field = param1;
      }
      
      public function get fightResToLoad() : serverProto.fight.ProtoFightResToLoad
      {
         return this.fight_res_to_load$field;
      }
      
      public function clearInsertBattleFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.insert_battle_flag$field = new uint();
      }
      
      public function get hasInsertBattleFlag() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set insertBattleFlag(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.insert_battle_flag$field = param1;
      }
      
      public function get insertBattleFlag() : uint
      {
         return this.insert_battle_flag$field;
      }
      
      public function clearRoundCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.round_count$field = new int();
      }
      
      public function get hasRoundCount() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set roundCount(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.round_count$field = param1;
      }
      
      public function get roundCount() : int
      {
         return this.round_count$field;
      }
      
      public function clearSpeed() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.speed$field = new int();
      }
      
      public function get hasSpeed() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set speed(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.speed$field = param1;
      }
      
      public function get speed() : int
      {
         return this.speed$field;
      }
      
      public function clearIsMain() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.is_main$field = new Boolean();
      }
      
      public function get hasIsMain() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set isMain(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.is_main$field = param1;
      }
      
      public function get isMain() : Boolean
      {
         return this.is_main$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasFightResToLoad)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.fight_res_to_load$field);
         }
         if(this.hasInsertBattleFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.insert_battle_flag$field);
         }
         if(this.hasRoundCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.round_count$field);
         }
         if(this.hasSpeed)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.speed$field);
         }
         if(this.hasIsMain)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_BOOL(param1,this.is_main$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
