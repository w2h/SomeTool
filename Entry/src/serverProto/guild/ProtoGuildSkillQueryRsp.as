package serverProto.guild
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGuildSkillQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildSkillQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CURRENT_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildSkillQueryRsp.current_contri","currentContri",2 << 3 | WireType.VARINT);
      
      public static const SKILL_LVL_LIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildSkillQueryRsp.skill_lvl_limit","skillLvlLimit",3 << 3 | WireType.VARINT);
      
      public static const LAST_LEARN_IDX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.guild.ProtoGuildSkillQueryRsp.last_learn_idx","lastLearnIdx",4 << 3 | WireType.VARINT);
      
      public static const REMAIN_CD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildSkillQueryRsp.remain_cd","remainCd",5 << 3 | WireType.VARINT);
      
      public static const SKILL_PARAM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildSkillQueryRsp.skill_param","skillParam",6 << 3 | WireType.LENGTH_DELIMITED,GuildSkillParam);
       
      private var ret$field:ProtoRetInfo;
      
      private var current_contri$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var skill_lvl_limit$field:uint;
      
      private var last_learn_idx$field:int;
      
      private var remain_cd$field:uint;
      
      [ArrayElementType("serverProto.guild.GuildSkillParam")]
      public var skillParam:Array;
      
      public function ProtoGuildSkillQueryRsp()
      {
         this.skillParam = [];
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearCurrentContri() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_contri$field = new uint();
      }
      
      public function get hasCurrentContri() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentContri(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_contri$field = param1;
      }
      
      public function get currentContri() : uint
      {
         return this.current_contri$field;
      }
      
      public function clearSkillLvlLimit() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.skill_lvl_limit$field = new uint();
      }
      
      public function get hasSkillLvlLimit() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set skillLvlLimit(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.skill_lvl_limit$field = param1;
      }
      
      public function get skillLvlLimit() : uint
      {
         return this.skill_lvl_limit$field;
      }
      
      public function clearLastLearnIdx() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.last_learn_idx$field = new int();
      }
      
      public function get hasLastLearnIdx() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set lastLearnIdx(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.last_learn_idx$field = param1;
      }
      
      public function get lastLearnIdx() : int
      {
         return this.last_learn_idx$field;
      }
      
      public function clearRemainCd() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.remain_cd$field = new uint();
      }
      
      public function get hasRemainCd() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set remainCd(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.remain_cd$field = param1;
      }
      
      public function get remainCd() : uint
      {
         return this.remain_cd$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasCurrentContri)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.current_contri$field);
         }
         if(this.hasSkillLvlLimit)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.skill_lvl_limit$field);
         }
         if(this.hasLastLearnIdx)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.last_learn_idx$field);
         }
         if(this.hasRemainCd)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.remain_cd$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.skillParam.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.skillParam[_loc2_]);
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
