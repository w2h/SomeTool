package serverProto.bag
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoBagRuneInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.index","index",2 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.num","num",3 << 3 | WireType.VARINT);
      
      public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.bag.ProtoBagRuneInfo.exp","exp",4 << 3 | WireType.VARINT);
      
      public static const COMPOSE_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagRuneInfo.compose_exp","composeExp",5 << 3 | WireType.VARINT);
      
      public static const LEVEL_UP_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.bag.ProtoBagRuneInfo.level_up_exp","levelUpExp",6 << 3 | WireType.VARINT);
      
      public static const IS_ULTIMATE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.bag.ProtoBagRuneInfo.is_ultimate","isUltimate",7 << 3 | WireType.VARINT);
       
      public var id:uint;
      
      public var index:uint;
      
      public var num:uint;
      
      public var exp:uint;
      
      private var compose_exp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var level_up_exp$field:int;
      
      private var is_ultimate$field:Boolean;
      
      public function ProtoBagRuneInfo()
      {
         super();
      }
      
      public function clearComposeExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.compose_exp$field = new int();
      }
      
      public function get hasComposeExp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set composeExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.compose_exp$field = param1;
      }
      
      public function get composeExp() : int
      {
         return this.compose_exp$field;
      }
      
      public function clearLevelUpExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.level_up_exp$field = new int();
      }
      
      public function get hasLevelUpExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set levelUpExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.level_up_exp$field = param1;
      }
      
      public function get levelUpExp() : int
      {
         return this.level_up_exp$field;
      }
      
      public function clearIsUltimate() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.is_ultimate$field = new Boolean();
      }
      
      public function get hasIsUltimate() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set isUltimate(param1:Boolean) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.is_ultimate$field = param1;
      }
      
      public function get isUltimate() : Boolean
      {
         return this.is_ultimate$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_UINT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_UINT32(param1,this.index);
         WriteUtils.writeTag(param1,WireType.VARINT,3);
         WriteUtils.write$TYPE_UINT32(param1,this.num);
         WriteUtils.writeTag(param1,WireType.VARINT,4);
         WriteUtils.write$TYPE_UINT32(param1,this.exp);
         if(this.hasComposeExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.compose_exp$field);
         }
         if(this.hasLevelUpExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.level_up_exp$field);
         }
         if(this.hasIsUltimate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,7);
            WriteUtils.write$TYPE_BOOL(param1,this.is_ultimate$field);
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
