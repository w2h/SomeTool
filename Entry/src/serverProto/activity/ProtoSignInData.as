package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoSignInData extends Message
   {
      
      public static const TOTAL_MONTH_SIGN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSignInData.total_month_sign_count","totalMonthSignCount",1 << 3 | WireType.VARINT);
      
      public static const CUR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSignInData.cur_time","curTime",2 << 3 | WireType.VARINT);
      
      public static const MONTH_SIGN_STATUS:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSignInData.month_sign_status","monthSignStatus",3 << 3 | WireType.VARINT);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoSignInData.package_boxes","packageBoxes",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var total_month_sign_count$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var cur_time$field:uint;
      
      [ArrayElementType("uint")]
      public var monthSignStatus:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      public function ProtoSignInData()
      {
         this.monthSignStatus = [];
         this.packageBoxes = [];
         super();
      }
      
      public function clearTotalMonthSignCount() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.total_month_sign_count$field = new uint();
      }
      
      public function get hasTotalMonthSignCount() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set totalMonthSignCount(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.total_month_sign_count$field = param1;
      }
      
      public function get totalMonthSignCount() : uint
      {
         return this.total_month_sign_count$field;
      }
      
      public function clearCurTime() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967293E9;
         this.cur_time$field = new uint();
      }
      
      public function get hasCurTime() : Boolean
      {
         return (this.hasField$0 & 2) != 0;
      }
      
      public function set curTime(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 2;
         this.cur_time$field = param1;
      }
      
      public function get curTime() : uint
      {
         return this.cur_time$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasTotalMonthSignCount)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.total_month_sign_count$field);
         }
         if(this.hasCurTime)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_time$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.monthSignStatus.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,3);
            WriteUtils.write$TYPE_UINT32(param1,this.monthSignStatus[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.packageBoxes[_loc3_]);
            _loc3_++;
         }
         for(_loc4_ in this)
         {
            super.writeUnknown(param1,_loc4_);
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
