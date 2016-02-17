package serverProto.findBack
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoFindBackInfo extends Message
   {
      
      public static const EVERYDAY_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.everyday_task_exp","everydayTaskExp",1 << 3 | WireType.VARINT);
      
      public static const EVERYDAY_TASK_MONEY_TONGBI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.everyday_task_money_tongbi","everydayTaskMoneyTongbi",2 << 3 | WireType.VARINT);
      
      public static const EVERYDAY_TASK_MONEY_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.everyday_task_money_yuanbao","everydayTaskMoneyYuanbao",3 << 3 | WireType.VARINT);
      
      public static const EVERYDAY_TASK_ALL_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.everyday_task_all_yuanbao","everydayTaskAllYuanbao",4 << 3 | WireType.VARINT);
      
      public static const WEEKLY_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.weekly_task_exp","weeklyTaskExp",5 << 3 | WireType.VARINT);
      
      public static const WEEKLY_TASK_EXP_TONGBI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.weekly_task_exp_tongbi","weeklyTaskExpTongbi",6 << 3 | WireType.VARINT);
      
      public static const WEEKLY_TASK_EXP_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.weekly_task_exp_yuanbao","weeklyTaskExpYuanbao",7 << 3 | WireType.VARINT);
      
      public static const WEEKLY_TASK_ALL_YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.findBack.ProtoFindBackInfo.weekly_task_all_yuanbao","weeklyTaskAllYuanbao",8 << 3 | WireType.VARINT);
       
      private var everyday_task_exp$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var everyday_task_money_tongbi$field:uint;
      
      private var everyday_task_money_yuanbao$field:uint;
      
      private var everyday_task_all_yuanbao$field:uint;
      
      private var weekly_task_exp$field:uint;
      
      private var weekly_task_exp_tongbi$field:uint;
      
      private var weekly_task_exp_yuanbao$field:uint;
      
      private var weekly_task_all_yuanbao$field:uint;
      
      public function ProtoFindBackInfo()
      {
         super();
      }
      
      public function clearEverydayTaskExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.everyday_task_exp$field = new uint();
      }
      
      public function get hasEverydayTaskExp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set everydayTaskExp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.everyday_task_exp$field = param1;
      }
      
      public function get everydayTaskExp() : uint
      {
         return this.everyday_task_exp$field;
      }
      
      public function clearEverydayTaskMoneyTongbi() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.everyday_task_money_tongbi$field = new uint();
      }
      
      public function get hasEverydayTaskMoneyTongbi() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set everydayTaskMoneyTongbi(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.everyday_task_money_tongbi$field = param1;
      }
      
      public function get everydayTaskMoneyTongbi() : uint
      {
         return this.everyday_task_money_tongbi$field;
      }
      
      public function clearEverydayTaskMoneyYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.everyday_task_money_yuanbao$field = new uint();
      }
      
      public function get hasEverydayTaskMoneyYuanbao() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set everydayTaskMoneyYuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.everyday_task_money_yuanbao$field = param1;
      }
      
      public function get everydayTaskMoneyYuanbao() : uint
      {
         return this.everyday_task_money_yuanbao$field;
      }
      
      public function clearEverydayTaskAllYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.everyday_task_all_yuanbao$field = new uint();
      }
      
      public function get hasEverydayTaskAllYuanbao() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set everydayTaskAllYuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.everyday_task_all_yuanbao$field = param1;
      }
      
      public function get everydayTaskAllYuanbao() : uint
      {
         return this.everyday_task_all_yuanbao$field;
      }
      
      public function clearWeeklyTaskExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.weekly_task_exp$field = new uint();
      }
      
      public function get hasWeeklyTaskExp() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set weeklyTaskExp(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.weekly_task_exp$field = param1;
      }
      
      public function get weeklyTaskExp() : uint
      {
         return this.weekly_task_exp$field;
      }
      
      public function clearWeeklyTaskExpTongbi() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.weekly_task_exp_tongbi$field = new uint();
      }
      
      public function get hasWeeklyTaskExpTongbi() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set weeklyTaskExpTongbi(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.weekly_task_exp_tongbi$field = param1;
      }
      
      public function get weeklyTaskExpTongbi() : uint
      {
         return this.weekly_task_exp_tongbi$field;
      }
      
      public function clearWeeklyTaskExpYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.weekly_task_exp_yuanbao$field = new uint();
      }
      
      public function get hasWeeklyTaskExpYuanbao() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set weeklyTaskExpYuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.weekly_task_exp_yuanbao$field = param1;
      }
      
      public function get weeklyTaskExpYuanbao() : uint
      {
         return this.weekly_task_exp_yuanbao$field;
      }
      
      public function clearWeeklyTaskAllYuanbao() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967167E9;
         this.weekly_task_all_yuanbao$field = new uint();
      }
      
      public function get hasWeeklyTaskAllYuanbao() : Boolean
      {
         return (this.hasField$0 & 128) != 0;
      }
      
      public function set weeklyTaskAllYuanbao(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 128;
         this.weekly_task_all_yuanbao$field = param1;
      }
      
      public function get weeklyTaskAllYuanbao() : uint
      {
         return this.weekly_task_all_yuanbao$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasEverydayTaskExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.everyday_task_exp$field);
         }
         if(this.hasEverydayTaskMoneyTongbi)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.everyday_task_money_tongbi$field);
         }
         if(this.hasEverydayTaskMoneyYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.everyday_task_money_yuanbao$field);
         }
         if(this.hasEverydayTaskAllYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT32(param1,this.everyday_task_all_yuanbao$field);
         }
         if(this.hasWeeklyTaskExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_UINT32(param1,this.weekly_task_exp$field);
         }
         if(this.hasWeeklyTaskExpTongbi)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_UINT32(param1,this.weekly_task_exp_tongbi$field);
         }
         if(this.hasWeeklyTaskExpYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_UINT32(param1,this.weekly_task_exp_yuanbao$field);
         }
         if(this.hasWeeklyTaskAllYuanbao)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,8);
            WriteUtils.write$TYPE_UINT32(param1,this.weekly_task_all_yuanbao$field);
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
          * Error type: IndexOutOfBoundsException (Index: 8, Size: 8)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
