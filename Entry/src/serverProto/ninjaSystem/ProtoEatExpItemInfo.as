package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoEatExpItemInfo extends Message
   {
      
      public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpItemInfo.num","num",1 << 3 | WireType.VARINT);
      
      public static const REACH_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpItemInfo.reach_level","reachLevel",2 << 3 | WireType.VARINT);
      
      public static const ADD_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoEatExpItemInfo.add_exp","addExp",3 << 3 | WireType.VARINT);
       
      private var num$field:int;
      
      private var hasField$0:uint = 0;
      
      private var reach_level$field:int;
      
      private var add_exp$field:int;
      
      public function ProtoEatExpItemInfo()
      {
         super();
      }
      
      public function clearNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.num$field = new int();
      }
      
      public function get hasNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set num(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.num$field = param1;
      }
      
      public function get num() : int
      {
         return this.num$field;
      }
      
      public function clearReachLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.reach_level$field = new int();
      }
      
      public function get hasReachLevel() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set reachLevel(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.reach_level$field = param1;
      }
      
      public function get reachLevel() : int
      {
         return this.reach_level$field;
      }
      
      public function clearAddExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.add_exp$field = new int();
      }
      
      public function get hasAddExp() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set addExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.add_exp$field = param1;
      }
      
      public function get addExp() : int
      {
         return this.add_exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.num$field);
         }
         if(this.hasReachLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.reach_level$field);
         }
         if(this.hasAddExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.add_exp$field);
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
