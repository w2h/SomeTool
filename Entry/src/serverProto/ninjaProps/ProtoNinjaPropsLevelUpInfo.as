package serverProto.ninjaProps
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoNinjaPropsLevelUpInfo extends Message
   {
      
      public static const ADD_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.add_exp","addExp",1 << 3 | WireType.VARINT);
      
      public static const NEED_MONEY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.need_money","needMoney",2 << 3 | WireType.VARINT);
      
      public static const IS_ULTIMATE:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.is_ultimate","isUltimate",3 << 3 | WireType.VARINT);
      
      public static const LEVEL_UP_EXP:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.level_up_exp","levelUpExp",4 << 3 | WireType.VARINT);
      
      public static const ADD_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaProps.ProtoNinjaPropsLevelUpInfo.add_propery","addPropery",5 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
       
      private var add_exp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var need_money$field:int;
      
      private var is_ultimate$field:Boolean;
      
      [ArrayElementType("int")]
      public var levelUpExp:Array;
      
      private var add_propery$field:ProtoNaurtoAllPropertyInfo;
      
      public function ProtoNinjaPropsLevelUpInfo()
      {
         this.levelUpExp = [];
         super();
      }
      
      public function clearAddExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.add_exp$field = new int();
      }
      
      public function get hasAddExp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set addExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.add_exp$field = param1;
      }
      
      public function get addExp() : int
      {
         return this.add_exp$field;
      }
      
      public function clearNeedMoney() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.need_money$field = new int();
      }
      
      public function get hasNeedMoney() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set needMoney(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.need_money$field = param1;
      }
      
      public function get needMoney() : int
      {
         return this.need_money$field;
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
      
      public function clearAddPropery() : void
      {
         this.add_propery$field = null;
      }
      
      public function get hasAddPropery() : Boolean
      {
         return this.add_propery$field != null;
      }
      
      public function set addPropery(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.add_propery$field = param1;
      }
      
      public function get addPropery() : ProtoNaurtoAllPropertyInfo
      {
         return this.add_propery$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasAddExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.add_exp$field);
         }
         if(this.hasNeedMoney)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.need_money$field);
         }
         if(this.hasIsUltimate)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_BOOL(param1,this.is_ultimate$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.levelUpExp.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.levelUpExp[_loc2_]);
            _loc2_++;
         }
         if(this.hasAddPropery)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,5);
            WriteUtils.write$TYPE_MESSAGE(param1,this.add_propery$field);
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
          * Error type: IndexOutOfBoundsException (Index: 5, Size: 5)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
