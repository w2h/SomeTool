package serverProto.summonMonster
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_SINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPropertyValue extends Message
   {
      
      public static const BASE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoPropertyValue.base","base",1 << 3 | WireType.VARINT);
      
      public static const EXTRA:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoPropertyValue.extra","extra",2 << 3 | WireType.VARINT);
       
      private var base$field:int;
      
      private var hasField$0:uint = 0;
      
      private var extra$field:int;
      
      public function ProtoPropertyValue()
      {
         super();
      }
      
      public function clearBase() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.base$field = new int();
      }
      
      public function get hasBase() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set base(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.base$field = param1;
      }
      
      public function get base() : int
      {
         return this.base$field;
      }
      
      public function clearExtra() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.extra$field = new int();
      }
      
      public function get hasExtra() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set extra(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.extra$field = param1;
      }
      
      public function get extra() : int
      {
         return this.extra$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasBase)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_SINT32(param1,this.base$field);
         }
         if(this.hasExtra)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_SINT32(param1,this.extra$field);
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
