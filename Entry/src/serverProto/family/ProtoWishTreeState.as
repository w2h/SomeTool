package serverProto.family
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoWishTreeState extends Message
   {
      
      public static const TREE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.tree_level","treeLevel",1 << 3 | WireType.VARINT);
      
      public static const TREE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.tree_exp","treeExp",2 << 3 | WireType.VARINT);
      
      public static const GROWTH_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.growth_value","growthValue",3 << 3 | WireType.VARINT);
      
      public static const GROWTH_VALUE_MAX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.growth_value_max","growthValueMax",4 << 3 | WireType.VARINT);
      
      public static const CAN_WATER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.can_water","canWater",5 << 3 | WireType.VARINT);
      
      public static const LEFT_HELP_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.left_help_num","leftHelpNum",6 << 3 | WireType.VARINT);
      
      public static const MAX_TREE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishTreeState.max_tree_exp","maxTreeExp",7 << 3 | WireType.VARINT);
       
      private var tree_level$field:int;
      
      private var hasField$0:uint = 0;
      
      private var tree_exp$field:int;
      
      private var growth_value$field:int;
      
      private var growth_value_max$field:int;
      
      private var can_water$field:int;
      
      private var left_help_num$field:int;
      
      private var max_tree_exp$field:int;
      
      public function ProtoWishTreeState()
      {
         super();
      }
      
      public function clearTreeLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.tree_level$field = new int();
      }
      
      public function get hasTreeLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set treeLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.tree_level$field = param1;
      }
      
      public function get treeLevel() : int
      {
         return this.tree_level$field;
      }
      
      public function clearTreeExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.tree_exp$field = new int();
      }
      
      public function get hasTreeExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set treeExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.tree_exp$field = param1;
      }
      
      public function get treeExp() : int
      {
         return this.tree_exp$field;
      }
      
      public function clearGrowthValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.growth_value$field = new int();
      }
      
      public function get hasGrowthValue() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set growthValue(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.growth_value$field = param1;
      }
      
      public function get growthValue() : int
      {
         return this.growth_value$field;
      }
      
      public function clearGrowthValueMax() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.growth_value_max$field = new int();
      }
      
      public function get hasGrowthValueMax() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set growthValueMax(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.growth_value_max$field = param1;
      }
      
      public function get growthValueMax() : int
      {
         return this.growth_value_max$field;
      }
      
      public function clearCanWater() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967279E9;
         this.can_water$field = new int();
      }
      
      public function get hasCanWater() : Boolean
      {
         return (this.hasField$0 & 16) != 0;
      }
      
      public function set canWater(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 16;
         this.can_water$field = param1;
      }
      
      public function get canWater() : int
      {
         return this.can_water$field;
      }
      
      public function clearLeftHelpNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967263E9;
         this.left_help_num$field = new int();
      }
      
      public function get hasLeftHelpNum() : Boolean
      {
         return (this.hasField$0 & 32) != 0;
      }
      
      public function set leftHelpNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 32;
         this.left_help_num$field = param1;
      }
      
      public function get leftHelpNum() : int
      {
         return this.left_help_num$field;
      }
      
      public function clearMaxTreeExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967231E9;
         this.max_tree_exp$field = new int();
      }
      
      public function get hasMaxTreeExp() : Boolean
      {
         return (this.hasField$0 & 64) != 0;
      }
      
      public function set maxTreeExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 64;
         this.max_tree_exp$field = param1;
      }
      
      public function get maxTreeExp() : int
      {
         return this.max_tree_exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasTreeLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.tree_level$field);
         }
         if(this.hasTreeExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.tree_exp$field);
         }
         if(this.hasGrowthValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.growth_value$field);
         }
         if(this.hasGrowthValueMax)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.growth_value_max$field);
         }
         if(this.hasCanWater)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.can_water$field);
         }
         if(this.hasLeftHelpNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.left_help_num$field);
         }
         if(this.hasMaxTreeExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_INT32(param1,this.max_tree_exp$field);
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
