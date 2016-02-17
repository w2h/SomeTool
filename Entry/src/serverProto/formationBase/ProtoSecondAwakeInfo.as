package serverProto.formationBase
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSecondAwakeInfo extends Message
   {
      
      public static const NEED_ITEM_ID:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoSecondAwakeInfo.need_item_id","needItemId",1 << 3 | WireType.VARINT);
      
      public static const NEED_ITEM_NUM:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoSecondAwakeInfo.need_item_num","needItemNum",2 << 3 | WireType.VARINT);
      
      public static const HAVE_ITEM_NUM:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoSecondAwakeInfo.have_item_num","haveItemNum",3 << 3 | WireType.VARINT);
      
      public static const CUR_SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoSecondAwakeInfo.cur_skill_id","curSkillId",4 << 3 | WireType.VARINT);
      
      public static const SECOND_AWAKEN_SKILL_GRADE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoSecondAwakeInfo.second_awaken_skill_grade","secondAwakenSkillGrade",5 << 3 | WireType.VARINT);
      
      public static const ALL_SKILL_ID:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.formationBase.ProtoSecondAwakeInfo.all_skill_id","allSkillId",6 << 3 | WireType.VARINT);
       
      [ArrayElementType("uint")]
      public var needItemId:Array;
      
      [ArrayElementType("uint")]
      public var needItemNum:Array;
      
      [ArrayElementType("uint")]
      public var haveItemNum:Array;
      
      private var cur_skill_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var second_awaken_skill_grade$field:uint;
      
      [ArrayElementType("uint")]
      public var allSkillId:Array;
      
      public function ProtoSecondAwakeInfo()
      {
         this.needItemId = [];
         this.needItemNum = [];
         this.haveItemNum = [];
         this.allSkillId = [];
         super();
      }
      
      public function clearCurSkillId() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.cur_skill_id$field = new uint();
      }
      
      public function get hasCurSkillId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set curSkillId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.cur_skill_id$field = param1;
      }
      
      public function get curSkillId() : uint
      {
         return this.cur_skill_id$field;
      }
      
      public function clearSecondAwakenSkillGrade() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.second_awaken_skill_grade$field = new uint();
      }
      
      public function get hasSecondAwakenSkillGrade() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set secondAwakenSkillGrade(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.second_awaken_skill_grade$field = param1;
      }
      
      public function get secondAwakenSkillGrade() : uint
      {
         return this.second_awaken_skill_grade$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc6_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.needItemId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.needItemId[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.needItemNum.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.needItemNum[_loc3_]);
            _loc3_++;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < this.haveItemNum.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.haveItemNum[_loc4_]);
            _loc4_++;
         }
         if(this.hasCurSkillId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_skill_id$field);
         }
         if(this.hasSecondAwakenSkillGrade)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.second_awaken_skill_grade$field);
         }
         var _loc5_:uint = 0;
         while(_loc5_ < this.allSkillId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.allSkillId[_loc5_]);
            _loc5_++;
         }
         for(_loc6_ in this)
         {
            super.writeUnknown(param1,_loc6_);
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
