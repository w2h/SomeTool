package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoMergeServerLoginData extends Message
   {
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMergeServerLoginData.package_boxes","packageBoxes",1 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const LOGIN_DAYS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMergeServerLoginData.login_days","loginDays",2 << 3 | WireType.VARINT);
       
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      private var login_days$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoMergeServerLoginData()
      {
         this.packageBoxes = [];
         super();
      }
      
      public function clearLoginDays() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.login_days$field = new uint();
      }
      
      public function get hasLoginDays() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set loginDays(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.login_days$field = param1;
      }
      
      public function get loginDays() : uint
      {
         return this.login_days$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         var _loc2_:uint = 0;
         while(_loc2_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc2_]);
            _loc2_++;
         }
         if(this.hasLoginDays)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.login_days$field);
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
