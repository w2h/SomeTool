package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDungeonFinishResponse extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const DUNGEON_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonFinishResponse.dungeon_status","dungeonStatus",2 << 3 | WireType.VARINT);
      
      public static const BASE_INCOME:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.base_income","baseIncome",3 << 3 | WireType.LENGTH_DELIMITED,ProtoBaseIncome);
      
      public static const DUNGEON_EVALUATE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.dungeon_evaluate","dungeonEvaluate",4 << 3 | WireType.LENGTH_DELIMITED,ProtoDungeonEvaluate);
      
      public static const DEATH_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoDungeonFinishResponse.death_info","deathInfo",5 << 3 | WireType.LENGTH_DELIMITED,ProtoDungeonDeathInfo);
       
      public var ret:ProtoRetInfo;
      
      private var dungeon_status$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var base_income$field:serverProto.dungeon.ProtoBaseIncome;
      
      private var dungeon_evaluate$field:serverProto.dungeon.ProtoDungeonEvaluate;
      
      private var death_info$field:serverProto.dungeon.ProtoDungeonDeathInfo;
      
      public function ProtoDungeonFinishResponse()
      {
         super();
      }
      
      public function clearDungeonStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.dungeon_status$field = new uint();
      }
      
      public function get hasDungeonStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set dungeonStatus(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.dungeon_status$field = param1;
      }
      
      public function get dungeonStatus() : uint
      {
         return this.dungeon_status$field;
      }
      
      public function clearBaseIncome() : void
      {
         this.base_income$field = null;
      }
      
      public function get hasBaseIncome() : Boolean
      {
         return this.base_income$field != null;
      }
      
      public function set baseIncome(param1:serverProto.dungeon.ProtoBaseIncome) : void
      {
         this.base_income$field = param1;
      }
      
      public function get baseIncome() : serverProto.dungeon.ProtoBaseIncome
      {
         return this.base_income$field;
      }
      
      public function clearDungeonEvaluate() : void
      {
         this.dungeon_evaluate$field = null;
      }
      
      public function get hasDungeonEvaluate() : Boolean
      {
         return this.dungeon_evaluate$field != null;
      }
      
      public function set dungeonEvaluate(param1:serverProto.dungeon.ProtoDungeonEvaluate) : void
      {
         this.dungeon_evaluate$field = param1;
      }
      
      public function get dungeonEvaluate() : serverProto.dungeon.ProtoDungeonEvaluate
      {
         return this.dungeon_evaluate$field;
      }
      
      public function clearDeathInfo() : void
      {
         this.death_info$field = null;
      }
      
      public function get hasDeathInfo() : Boolean
      {
         return this.death_info$field != null;
      }
      
      public function set deathInfo(param1:serverProto.dungeon.ProtoDungeonDeathInfo) : void
      {
         this.death_info$field = param1;
      }
      
      public function get deathInfo() : serverProto.dungeon.ProtoDungeonDeathInfo
      {
         return this.death_info$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasDungeonStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.dungeon_status$field);
         }
         if(this.hasBaseIncome)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.base_income$field);
         }
         if(this.hasDungeonEvaluate)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.dungeon_evaluate$field);
         }
         if(this.hasDeathInfo)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.death_info$field);
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
