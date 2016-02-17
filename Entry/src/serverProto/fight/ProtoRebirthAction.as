package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoRebirthAction extends Message
   {
      
      public static const REBIRTH_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoRebirthAction.rebirth_type","rebirthType",1 << 3 | WireType.VARINT);
      
      public static const REBIRTH_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoRebirthAction.rebirth_skill","rebirthSkill",2 << 3 | WireType.VARINT);
      
      public static const REBIRTH_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.rebirth_ninja","rebirthNinja",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNinja);
      
      public static const KILL_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.kill_ninja","killNinja",4 << 3 | WireType.LENGTH_DELIMITED,ProtoNinja);
      
      public static const ACTIVE_NINJA:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.active_ninja","activeNinja",5 << 3 | WireType.LENGTH_DELIMITED,ProtoActiveNinjaInfo);
      
      public static const NINJA_HP_CHANGE:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoRebirthAction.ninja_hp_change","ninjaHpChange",6 << 3 | WireType.LENGTH_DELIMITED,ProtoNinjaHpChange);
       
      public var rebirthType:uint;
      
      public var rebirthSkill:uint;
      
      private var rebirth_ninja$field:serverProto.fight.ProtoNinja;
      
      private var kill_ninja$field:serverProto.fight.ProtoNinja;
      
      private var active_ninja$field:serverProto.fight.ProtoActiveNinjaInfo;
      
      [ArrayElementType("serverProto.fight.ProtoNinjaHpChange")]
      public var ninjaHpChange:Array;
      
      public function ProtoRebirthAction()
      {
         this.ninjaHpChange = [];
         super();
      }
      
      public function clearRebirthNinja() : void
      {
         this.rebirth_ninja$field = null;
      }
      
      public function get hasRebirthNinja() : Boolean
      {
         return this.rebirth_ninja$field != null;
      }
      
      public function set rebirthNinja(param1:serverProto.fight.ProtoNinja) : void
      {
         this.rebirth_ninja$field = param1;
      }
      
      public function get rebirthNinja() : serverProto.fight.ProtoNinja
      {
         return this.rebirth_ninja$field;
      }
      
      public function clearKillNinja() : void
      {
         this.kill_ninja$field = null;
      }
      
      public function get hasKillNinja() : Boolean
      {
         return this.kill_ninja$field != null;
      }
      
      public function set killNinja(param1:serverProto.fight.ProtoNinja) : void
      {
         this.kill_ninja$field = param1;
      }
      
      public function get killNinja() : serverProto.fight.ProtoNinja
      {
         return this.kill_ninja$field;
      }
      
      public function clearActiveNinja() : void
      {
         this.active_ninja$field = null;
      }
      
      public function get hasActiveNinja() : Boolean
      {
         return this.active_ninja$field != null;
      }
      
      public function set activeNinja(param1:serverProto.fight.ProtoActiveNinjaInfo) : void
      {
         this.active_ninja$field = param1;
      }
      
      public function get activeNinja() : serverProto.fight.ProtoActiveNinjaInfo
      {
         return this.active_ninja$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.rebirthType);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.rebirthSkill);
         if(this.hasRebirthNinja)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.rebirth_ninja$field);
         }
         if(this.hasKillNinja)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.kill_ninja$field);
         }
         if(this.hasActiveNinja)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.active_ninja$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.ninjaHpChange.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ninjaHpChange[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
