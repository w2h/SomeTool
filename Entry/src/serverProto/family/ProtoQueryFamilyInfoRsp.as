package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQueryFamilyInfoRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoQueryFamilyInfoRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const WISH_TREE_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.wish_tree_status","wishTreeStatus",2 << 3 | WireType.VARINT);
      
      public static const TREE_GROWTH_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.tree_growth_value","treeGrowthValue",3 << 3 | WireType.VARINT);
      
      public static const TREE_GROWTH_VALUE_MAX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.tree_growth_value_max","treeGrowthValueMax",4 << 3 | WireType.VARINT);
      
      public static const DISPATCH_STATUS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.dispatch_status","dispatchStatus",5 << 3 | WireType.VARINT);
      
      public static const HAS_BATH:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.has_bath","hasBath",6 << 3 | WireType.VARINT);
      
      public static const FAMILY_NINJA_TASK_STATS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoQueryFamilyInfoRsp.family_ninja_task_stats","familyNinjaTaskStats",7 << 3 | WireType.VARINT);
       
      public var ret:ProtoRetInfo;
      
      private var wish_tree_status$field:int;
      
      private var hasField$0:uint = 0;
      
      private var tree_growth_value$field:int;
      
      private var tree_growth_value_max$field:int;
      
      private var dispatch_status$field:int;
      
      private var has_bath$field:int;
      
      private var family_ninja_task_stats$field:int;
      
      public function ProtoQueryFamilyInfoRsp()
      {
         super();
      }
      
      public function clearWishTreeStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.wish_tree_status$field = new int();
      }
      
      public function get hasWishTreeStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set wishTreeStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.wish_tree_status$field = param1;
      }
      
      public function get wishTreeStatus() : int
      {
         return this.wish_tree_status$field;
      }
      
      public function clearTreeGrowthValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.tree_growth_value$field = new int();
      }
      
      public function get hasTreeGrowthValue() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set treeGrowthValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.tree_growth_value$field = param1;
      }
      
      public function get treeGrowthValue() : int
      {
         return this.tree_growth_value$field;
      }
      
      public function clearTreeGrowthValueMax() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.tree_growth_value_max$field = new int();
      }
      
      public function get hasTreeGrowthValueMax() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set treeGrowthValueMax(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.tree_growth_value_max$field = param1;
      }
      
      public function get treeGrowthValueMax() : int
      {
         return this.tree_growth_value_max$field;
      }
      
      public function clearDispatchStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.dispatch_status$field = new int();
      }
      
      public function get hasDispatchStatus() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set dispatchStatus(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.dispatch_status$field = param1;
      }
      
      public function get dispatchStatus() : int
      {
         return this.dispatch_status$field;
      }
      
      public function clearHasBath() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.has_bath$field = new int();
      }
      
      public function get hasHasBath() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set hasBath(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.has_bath$field = param1;
      }
      
      public function get hasBath() : int
      {
         return this.has_bath$field;
      }
      
      public function clearFamilyNinjaTaskStats() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.family_ninja_task_stats$field = new int();
      }
      
      public function get hasFamilyNinjaTaskStats() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set familyNinjaTaskStats(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.family_ninja_task_stats$field = param1;
      }
      
      public function get familyNinjaTaskStats() : int
      {
         return this.family_ninja_task_stats$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.ret);
         if(this.hasWishTreeStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.wish_tree_status$field);
         }
         if(this.hasTreeGrowthValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.tree_growth_value$field);
         }
         if(this.hasTreeGrowthValueMax)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.tree_growth_value_max$field);
         }
         if(this.hasDispatchStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.dispatch_status$field);
         }
         if(this.hasHasBath)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.has_bath$field);
         }
         if(this.hasFamilyNinjaTaskStats)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.family_ninja_task_stats$field);
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
          * Error type: IndexOutOfBoundsException (Index: 7, Size: 7)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
