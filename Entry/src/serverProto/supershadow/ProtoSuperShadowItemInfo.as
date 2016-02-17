package serverProto.supershadow
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSuperShadowItemInfo extends Message
   {
      
      public static const ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.id","id",1 << 3 | WireType.VARINT);
      
      public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.num","num",2 << 3 | WireType.VARINT);
      
      public static const EXTRA_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.extra_num","extraNum",3 << 3 | WireType.VARINT);
      
      public static const FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.flag","flag",4 << 3 | WireType.VARINT);
      
      public static const STATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.state","state",5 << 3 | WireType.VARINT);
      
      public static const LOCAL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoSuperShadowItemInfo.local","local",6 << 3 | WireType.VARINT);
       
      public var id:int;
      
      public var num:int;
      
      private var extra_num$field:int;
      
      private var hasField$0:uint = 0;
      
      private var flag$field:int;
      
      private var state$field:int;
      
      private var local$field:int;
      
      public function ProtoSuperShadowItemInfo()
      {
         super();
      }
      
      public function clearExtraNum() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.extra_num$field = new int();
      }
      
      public function get hasExtraNum() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set extraNum(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.extra_num$field = param1;
      }
      
      public function get extraNum() : int
      {
         return this.extra_num$field;
      }
      
      public function clearFlag() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.flag$field = new int();
      }
      
      public function get hasFlag() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set flag(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.flag$field = param1;
      }
      
      public function get flag() : int
      {
         return this.flag$field;
      }
      
      public function clearState() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967291E9;
         this.state$field = new int();
      }
      
      public function get hasState() : Boolean
      {
         return (this.hasField$0 & 4) != 0;
      }
      
      public function set state(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 4;
         this.state$field = param1;
      }
      
      public function get state() : int
      {
         return this.state$field;
      }
      
      public function clearLocal() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967287E9;
         this.local$field = new int();
      }
      
      public function get hasLocal() : Boolean
      {
         return (this.hasField$0 & 8) != 0;
      }
      
      public function set local(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 8;
         this.local$field = param1;
      }
      
      public function get local() : int
      {
         return this.local$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.VARINT,1);
         WriteUtils.write$TYPE_INT32(param1,this.id);
         WriteUtils.writeTag(param1,WireType.VARINT,2);
         WriteUtils.write$TYPE_INT32(param1,this.num);
         if(this.hasExtraNum)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_INT32(param1,this.extra_num$field);
         }
         if(this.hasFlag)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,4);
            WriteUtils.write$TYPE_INT32(param1,this.flag$field);
         }
         if(this.hasState)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT32(param1,this.state$field);
         }
         if(this.hasLocal)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,6);
            WriteUtils.write$TYPE_INT32(param1,this.local$field);
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
          * Error type: IndexOutOfBoundsException (Index: 6, Size: 6)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
