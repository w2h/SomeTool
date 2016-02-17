package serverProto.chipRecycle
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_INT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoChipRefineryConf extends Message
   {
      
      public static const NEED_EXP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryConf.need_exp","needExp",1 << 3 | WireType.VARINT);
      
      public static const PACKAGE_ID:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.chipRecycle.ProtoChipRefineryConf.package_id","packageId",2 << 3 | WireType.VARINT);
       
      private var need_exp$field:int;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("int")]
      public var packageId:Array;
      
      public function ProtoChipRefineryConf()
      {
         this.packageId = [];
         super();
      }
      
      public function clearNeedExp() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.need_exp$field = new int();
      }
      
      public function get hasNeedExp() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set needExp(param1:int) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.need_exp$field = param1;
      }
      
      public function get needExp() : int
      {
         return this.need_exp$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasNeedExp)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_INT32(param1,this.need_exp$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageId.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_INT32(param1,this.packageId[_loc2_]);
            _loc2_++;
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
          * Error type: IndexOutOfBoundsException (Index: 2, Size: 2)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
