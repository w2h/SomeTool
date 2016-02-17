package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBuffAction extends Message
   {
      
      public static const ACTION_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoBuffAction.action_type","actionType",1 << 3 | WireType.VARINT,BuffActionType);
      
      public static const BUFF:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoBuffAction.buff","buff",2 << 3 | WireType.LENGTH_DELIMITED,ProtoBuffInfo);
      
      public static const BUFF_ACTION_TIME:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoBuffAction.buff_action_time","buffActionTime",3 << 3 | WireType.VARINT,BuffActionTime);
      
      public static const ADD_BUFF_TYPE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.add_buff_type","addBuffType",4 << 3 | WireType.VARINT);
      
      public static const WANTED_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.wanted_pos","wantedPos",5 << 3 | WireType.VARINT);
      
      public static const REAL_POS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.real_pos","realPos",6 << 3 | WireType.VARINT);
      
      public static const HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.hp","hp",7 << 3 | WireType.VARINT);
      
      public static const TEAM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffAction.team_id","teamId",8 << 3 | WireType.VARINT);
      
      public static const KATHA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoBuffAction.katha","katha",9 << 3 | WireType.VARINT);
      
      public static const HINT_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoBuffAction.hint_info","hintInfo",10 << 3 | WireType.LENGTH_DELIMITED,ProtoHintInfo);
      
      public static const OLD_BUFF_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.old_buff_id","oldBuffId",11 << 3 | WireType.VARINT);
      
      public static const MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoBuffAction.money","money",12 << 3 | WireType.VARINT);
       
      public var actionType:int;
      
      private var buff$field:serverProto.fight.ProtoBuffInfo;
      
      private var buff_action_time$field:int;
      
      private var hasField$0:uint = 0;
      
      private var add_buff_type$field:int;
      
      private var wanted_pos$field:int;
      
      private var real_pos$field:int;
      
      private var hp$field:int;
      
      private var team_id$field:uint;
      
      private var katha$field:uint;
      
      [ArrayElementType("serverProto.fight.ProtoHintInfo")]
      public var hintInfo:Array;
      
      private var old_buff_id$field:int;
      
      private var money$field:int;
      
      public function ProtoBuffAction()
      {
         this.hintInfo = [];
         super();
      }
      
      public function clearBuff() : void
      {
         this.buff$field = null;
      }
      
      public function get hasBuff() : Boolean
      {
         return this.buff$field != null;
      }
      
      public function set buff(param1:serverProto.fight.ProtoBuffInfo) : void
      {
         this.buff$field = param1;
      }
      
      public function get buff() : serverProto.fight.ProtoBuffInfo
      {
         return this.buff$field;
      }
      
      public function clearBuffActionTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.buff_action_time$field = new int();
      }
      
      public function get hasBuffActionTime() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set buffActionTime(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.buff_action_time$field = param1;
      }
      
      public function get buffActionTime() : int
      {
         return this.buff_action_time$field;
      }
      
      public function clearAddBuffType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.add_buff_type$field = new int();
      }
      
      public function get hasAddBuffType() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set addBuffType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.add_buff_type$field = param1;
      }
      
      public function get addBuffType() : int
      {
         return this.add_buff_type$field;
      }
      
      public function clearWantedPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.wanted_pos$field = new int();
      }
      
      public function get hasWantedPos() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set wantedPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.wanted_pos$field = param1;
      }
      
      public function get wantedPos() : int
      {
         return this.wanted_pos$field;
      }
      
      public function clearRealPos() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.real_pos$field = new int();
      }
      
      public function get hasRealPos() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set realPos(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.real_pos$field = param1;
      }
      
      public function get realPos() : int
      {
         return this.real_pos$field;
      }
      
      public function clearHp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.hp$field = new int();
      }
      
      public function get hasHp() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set hp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.hp$field = param1;
      }
      
      public function get hp() : int
      {
         return this.hp$field;
      }
      
      public function clearTeamId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.team_id$field = new uint();
      }
      
      public function get hasTeamId() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set teamId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.team_id$field = param1;
      }
      
      public function get teamId() : uint
      {
         return this.team_id$field;
      }
      
      public function clearKatha() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.katha$field = new uint();
      }
      
      public function get hasKatha() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set katha(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.katha$field = param1;
      }
      
      public function get katha() : uint
      {
         return this.katha$field;
      }
      
      public function clearOldBuffId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.old_buff_id$field = new int();
      }
      
      public function get hasOldBuffId() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set oldBuffId(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.old_buff_id$field = param1;
      }
      
      public function get oldBuffId() : int
      {
         return this.old_buff_id$field;
      }
      
      public function clearMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967039E9;
         this.money$field = new int();
      }
      
      public function get hasMoney() : Boolean
      {
         return (this.hasField$0 & 256) != 0;
      }
      
      public function set money(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 256;
         this.money$field = param1;
      }
      
      public function get money() : int
      {
         return this.money$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_ENUM(param1,this.actionType);
         if(this.hasBuff)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.buff$field);
         }
         if(this.hasBuffActionTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_ENUM(param1,this.buff_action_time$field);
         }
         if(this.hasAddBuffType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.add_buff_type$field);
         }
         if(this.hasWantedPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.wanted_pos$field);
         }
         if(this.hasRealPos)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.real_pos$field);
         }
         if(this.hasHp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.hp$field);
         }
         if(this.hasTeamId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.team_id$field);
         }
         if(this.hasKatha)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,9);
            WriteUtils.write$TYPE_UINT32(param1,this.katha$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.hintInfo.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,10);
            WriteUtils.write$TYPE_MESSAGE(param1,this.hintInfo[_loc2_]);
            _loc2_++;
         }
         if(this.hasOldBuffId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,11);
            WriteUtils.write$TYPE_INT32(param1,this.old_buff_id$field);
         }
         if(this.hasMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,12);
            WriteUtils.write$TYPE_INT32(param1,this.money$field);
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
          * Error type: IndexOutOfBoundsException (Index: 12, Size: 12)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
