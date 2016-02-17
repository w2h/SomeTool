package serverProto.ninjaSystem
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import serverProto.inc.ProtoNaurtoAllPropertyInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoGetEatExpInfoResponse extends Message
   {
      
      public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.ret_info","retInfo",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const CURRENT_PROPERTY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.current_property","currentProperty",2 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const NEXT_LEVEL_PROPERY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.next_level_propery","nextLevelPropery",3 << 3 | WireType.LENGTH_DELIMITED,ProtoNaurtoAllPropertyInfo);
      
      public static const CURRENT_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.current_exp","currentExp",4 << 3 | WireType.VARINT);
      
      public static const FULL_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.full_exp","fullExp",5 << 3 | WireType.VARINT);
      
      public static const BUN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.bun","bun",6 << 3 | WireType.LENGTH_DELIMITED,ProtoEatExpItemInfo);
      
      public static const RAMEN:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.ramen","ramen",7 << 3 | WireType.LENGTH_DELIMITED,ProtoEatExpItemInfo);
      
      public static const ROAST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.ninjaSystem.ProtoGetEatExpInfoResponse.roast","roast",8 << 3 | WireType.LENGTH_DELIMITED,ProtoEatExpItemInfo);
       
      public var retInfo:ProtoRetInfo;
      
      private var current_property$field:ProtoNaurtoAllPropertyInfo;
      
      private var next_level_propery$field:ProtoNaurtoAllPropertyInfo;
      
      private var current_exp$field:int;
      
      private var hasField$0:uint = 0;
      
      private var full_exp$field:int;
      
      private var bun$field:serverProto.ninjaSystem.ProtoEatExpItemInfo;
      
      private var ramen$field:serverProto.ninjaSystem.ProtoEatExpItemInfo;
      
      private var roast$field:serverProto.ninjaSystem.ProtoEatExpItemInfo;
      
      public function ProtoGetEatExpInfoResponse()
      {
         super();
      }
      
      public function clearCurrentProperty() : void
      {
         this.current_property$field = null;
      }
      
      public function get hasCurrentProperty() : Boolean
      {
         return this.current_property$field != null;
      }
      
      public function set currentProperty(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.current_property$field = param1;
      }
      
      public function get currentProperty() : ProtoNaurtoAllPropertyInfo
      {
         return this.current_property$field;
      }
      
      public function clearNextLevelPropery() : void
      {
         this.next_level_propery$field = null;
      }
      
      public function get hasNextLevelPropery() : Boolean
      {
         return this.next_level_propery$field != null;
      }
      
      public function set nextLevelPropery(param1:ProtoNaurtoAllPropertyInfo) : void
      {
         this.next_level_propery$field = param1;
      }
      
      public function get nextLevelPropery() : ProtoNaurtoAllPropertyInfo
      {
         return this.next_level_propery$field;
      }
      
      public function clearCurrentExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.current_exp$field = new int();
      }
      
      public function get hasCurrentExp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set currentExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.current_exp$field = param1;
      }
      
      public function get currentExp() : int
      {
         return this.current_exp$field;
      }
      
      public function clearFullExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.full_exp$field = new int();
      }
      
      public function get hasFullExp() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set fullExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.full_exp$field = param1;
      }
      
      public function get fullExp() : int
      {
         return this.full_exp$field;
      }
      
      public function clearBun() : void
      {
         this.bun$field = null;
      }
      
      public function get hasBun() : Boolean
      {
         return this.bun$field != null;
      }
      
      public function set bun(param1:serverProto.ninjaSystem.ProtoEatExpItemInfo) : void
      {
         this.bun$field = param1;
      }
      
      public function get bun() : serverProto.ninjaSystem.ProtoEatExpItemInfo
      {
         return this.bun$field;
      }
      
      public function clearRamen() : void
      {
         this.ramen$field = null;
      }
      
      public function get hasRamen() : Boolean
      {
         return this.ramen$field != null;
      }
      
      public function set ramen(param1:serverProto.ninjaSystem.ProtoEatExpItemInfo) : void
      {
         this.ramen$field = param1;
      }
      
      public function get ramen() : serverProto.ninjaSystem.ProtoEatExpItemInfo
      {
         return this.ramen$field;
      }
      
      public function clearRoast() : void
      {
         this.roast$field = null;
      }
      
      public function get hasRoast() : Boolean
      {
         return this.roast$field != null;
      }
      
      public function set roast(param1:serverProto.ninjaSystem.ProtoEatExpItemInfo) : void
      {
         this.roast$field = param1;
      }
      
      public function get roast() : serverProto.ninjaSystem.ProtoEatExpItemInfo
      {
         return this.roast$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_MESSAGE(param1,this.retInfo);
         if(this.hasCurrentProperty)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.current_property$field);
         }
         if(this.hasNextLevelPropery)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.next_level_propery$field);
         }
         if(this.hasCurrentExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.current_exp$field);
         }
         if(this.hasFullExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.full_exp$field);
         }
         if(this.hasBun)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,6);
            WriteUtils.write$TYPE_MESSAGE(param1,this.bun$field);
         }
         if(this.hasRamen)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ramen$field);
         }
         if(this.hasRoast)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_MESSAGE(param1,this.roast$field);
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
