package serverProto.dungeon
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDungeonEvaluate extends Message
   {
      
      public static const COMPLETE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonEvaluate.complete","complete",1 << 3 | WireType.VARINT);
      
      public static const ALL_MONSTER_DEATH:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonEvaluate.all_monster_death","allMonsterDeath",2 << 3 | WireType.VARINT);
      
      public static const NOT_DEATH:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.dungeon.ProtoDungeonEvaluate.not_death","notDeath",3 << 3 | WireType.VARINT);
       
      private var complete$field:Boolean;
      
      private var hasField$0:uint = 0;
      
      private var all_monster_death$field:Boolean;
      
      private var not_death$field:Boolean;
      
      public function ProtoDungeonEvaluate()
      {
         super();
      }
      
      public function clearComplete() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.complete$field = new Boolean();
      }
      
      public function get hasComplete() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set complete(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.complete$field = param1;
      }
      
      public function get complete() : Boolean
      {
         return this.complete$field;
      }
      
      public function clearAllMonsterDeath() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.all_monster_death$field = new Boolean();
      }
      
      public function get hasAllMonsterDeath() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set allMonsterDeath(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.all_monster_death$field = param1;
      }
      
      public function get allMonsterDeath() : Boolean
      {
         return this.all_monster_death$field;
      }
      
      public function clearNotDeath() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.not_death$field = new Boolean();
      }
      
      public function get hasNotDeath() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set notDeath(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.not_death$field = param1;
      }
      
      public function get notDeath() : Boolean
      {
         return this.not_death$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasComplete)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_BOOL(param1,this.complete$field);
         }
         if(this.hasAllMonsterDeath)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_BOOL(param1,this.all_monster_death$field);
         }
         if(this.hasNotDeath)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.not_death$field);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
