package serverProto.practice
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPracticePayInfo extends Message
   {
      
      public static const RATE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.rate","rate",1 << 3 | WireType.VARINT);
      
      public static const COST_GOLD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.cost_gold","costGold",2 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.exp","exp",3 << 3 | WireType.VARINT);
      
      public static const EXPECT_NINJA_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.practice.ProtoPracticePayInfo.expect_ninja_level","expectNinjaLevel",4 << 3 | WireType.VARINT);
       
      private var rate$field:int;
      
      private var hasField$0:uint = 0;
      
      private var cost_gold$field:int;
      
      private var exp$field:int;
      
      private var expect_ninja_level$field:int;
      
      public function ProtoPracticePayInfo()
      {
         super();
      }
      
      public function clearRate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.rate$field = new int();
      }
      
      public function get hasRate() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set rate(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.rate$field = param1;
      }
      
      public function get rate() : int
      {
         return this.rate$field;
      }
      
      public function clearCostGold() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.cost_gold$field = new int();
      }
      
      public function get hasCostGold() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set costGold(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.cost_gold$field = param1;
      }
      
      public function get costGold() : int
      {
         return this.cost_gold$field;
      }
      
      public function clearExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.exp$field = new int();
      }
      
      public function get hasExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set exp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.exp$field = param1;
      }
      
      public function get exp() : int
      {
         return this.exp$field;
      }
      
      public function clearExpectNinjaLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.expect_ninja_level$field = new int();
      }
      
      public function get hasExpectNinjaLevel() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set expectNinjaLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.expect_ninja_level$field = param1;
      }
      
      public function get expectNinjaLevel() : int
      {
         return this.expect_ninja_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.rate$field);
         }
         if(this.hasCostGold)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.cost_gold$field);
         }
         if(this.hasExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_SINT32(param1,this.exp$field);
         }
         if(this.hasExpectNinjaLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_SINT32(param1,this.expect_ninja_level$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
