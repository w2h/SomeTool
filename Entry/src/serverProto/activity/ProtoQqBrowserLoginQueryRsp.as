package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import serverProto.inc.ProtoRetInfo;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoQqBrowserLoginQueryRsp extends Message
   {
      
      public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQqBrowserLoginQueryRsp.ret","ret",1 << 3 | WireType.LENGTH_DELIMITED,ProtoRetInfo);
      
      public static const STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoQqBrowserLoginQueryRsp.status","status",2 << 3 | WireType.VARINT);
      
      public static const FRESHMAN_BOXES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQqBrowserLoginQueryRsp.freshman_boxes","freshmanBoxes",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const PACKAGE_BOXES:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoQqBrowserLoginQueryRsp.package_boxes","packageBoxes",4 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var ret$field:ProtoRetInfo;
      
      private var status$field:uint;
      
      private var hasField$0:uint = 0;
      
      private var freshman_boxes$field:serverProto.activity.ProtoAwardPackageBox;
      
      private var package_boxes$field:serverProto.activity.ProtoAwardPackageBox;
      
      public function ProtoQqBrowserLoginQueryRsp()
      {
         super();
      }
      
      public function clearRet() : void
      {
         this.ret$field = null;
      }
      
      public function get hasRet() : Boolean
      {
         return this.ret$field != null;
      }
      
      public function set ret(param1:ProtoRetInfo) : void
      {
         this.ret$field = param1;
      }
      
      public function get ret() : ProtoRetInfo
      {
         return this.ret$field;
      }
      
      public function clearStatus() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.status$field = new uint();
      }
      
      public function get hasStatus() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set status(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.status$field = param1;
      }
      
      public function get status() : uint
      {
         return this.status$field;
      }
      
      public function clearFreshmanBoxes() : void
      {
         this.freshman_boxes$field = null;
      }
      
      public function get hasFreshmanBoxes() : Boolean
      {
         return this.freshman_boxes$field != null;
      }
      
      public function set freshmanBoxes(param1:serverProto.activity.ProtoAwardPackageBox) : void
      {
         this.freshman_boxes$field = param1;
      }
      
      public function get freshmanBoxes() : serverProto.activity.ProtoAwardPackageBox
      {
         return this.freshman_boxes$field;
      }
      
      public function clearPackageBoxes() : void
      {
         this.package_boxes$field = null;
      }
      
      public function get hasPackageBoxes() : Boolean
      {
         return this.package_boxes$field != null;
      }
      
      public function set packageBoxes(param1:serverProto.activity.ProtoAwardPackageBox) : void
      {
         this.package_boxes$field = param1;
      }
      
      public function get packageBoxes() : serverProto.activity.ProtoAwardPackageBox
      {
         return this.package_boxes$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasRet)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.ret$field);
         }
         if(this.hasStatus)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.status$field);
         }
         if(this.hasFreshmanBoxes)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_MESSAGE(param1,this.freshman_boxes$field);
         }
         if(this.hasPackageBoxes)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,4);
            WriteUtils.write$TYPE_MESSAGE(param1,this.package_boxes$field);
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
          * Error type: IndexOutOfBoundsException (Index: 4, Size: 4)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
