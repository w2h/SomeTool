package serverProto.fight
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_ENUM;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoHpChangeDescribe extends Message
   {
      
      public static const HINT_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoHpChangeDescribe.hint_type","hintType",1 << 3 | WireType.VARINT,HintType);
      
      public static const HP_CHANGE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.fight.ProtoHpChangeDescribe.hp_change","hpChange",2 << 3 | WireType.VARINT);
       
      private var hint_type$field:int;
      
      private var hasField$0:uint = 0;
      
      private var hp_change$field:int;
      
      public function ProtoHpChangeDescribe()
      {
         super();
      }
      
      public function clearHintType() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.hint_type$field = new int();
      }
      
      public function get hasHintType() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set hintType(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.hint_type$field = param1;
      }
      
      public function get hintType() : int
      {
         return this.hint_type$field;
      }
      
      public function clearHpChange() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.hp_change$field = new int();
      }
      
      public function get hasHpChange() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set hpChange(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.hp_change$field = param1;
      }
      
      public function get hpChange() : int
      {
         return this.hp_change$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasHintType)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_ENUM(param1,this.hint_type$field);
         }
         if(this.hasHpChange)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.hp_change$field);
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
