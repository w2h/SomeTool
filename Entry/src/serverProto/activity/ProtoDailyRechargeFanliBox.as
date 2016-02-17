package serverProto.activity
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoDailyRechargeFanliBox extends Message
   {
      
      public static const PACKAGE_BOX:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyRechargeFanliBox.package_box","packageBox",1 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
      
      public static const FANLI_VALUE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyRechargeFanliBox.fanli_value","fanliValue",2 << 3 | WireType.VARINT);
       
      private var package_box$field:serverProto.activity.ProtoAwardPackageBox;
      
      private var fanli_value$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function ProtoDailyRechargeFanliBox()
      {
         super();
      }
      
      public function clearPackageBox() : void
      {
         this.package_box$field = null;
      }
      
      public function get hasPackageBox() : Boolean
      {
         return this.package_box$field != null;
      }
      
      public function set packageBox(param1:serverProto.activity.ProtoAwardPackageBox) : void
      {
         this.package_box$field = param1;
      }
      
      public function get packageBox() : serverProto.activity.ProtoAwardPackageBox
      {
         return this.package_box$field;
      }
      
      public function clearFanliValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.fanli_value$field = new uint();
      }
      
      public function get hasFanliValue() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set fanliValue(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.fanli_value$field = param1;
      }
      
      public function get fanliValue() : uint
      {
         return this.fanli_value$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPackageBox)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
            WriteUtils.write$TYPE_MESSAGE(param1,this.package_box$field);
         }
         if(this.hasFanliValue)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.fanli_value$field);
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
