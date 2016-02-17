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
   
   public final class ProtoOpenServiceUpgradeData extends Message
   {
      
      public static const CUR_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceUpgradeData.cur_level","curLevel",1 << 3 | WireType.VARINT);
      
      public static const BOX_LEVEL:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceUpgradeData.box_level","boxLevel",2 << 3 | WireType.VARINT);
      
      public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceUpgradeData.package_boxes","packageBoxes",3 << 3 | WireType.LENGTH_DELIMITED,ProtoAwardPackageBox);
       
      private var cur_level$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("uint")]
      public var boxLevel:Array;
      
      [ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
      public var packageBoxes:Array;
      
      public function ProtoOpenServiceUpgradeData()
      {
         this.boxLevel = [];
         this.packageBoxes = [];
         super();
      }
      
      public function clearCurLevel() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.cur_level$field = new uint();
      }
      
      public function get hasCurLevel() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set curLevel(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.cur_level$field = param1;
      }
      
      public function get curLevel() : uint
      {
         return this.cur_level$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc4_:* = undefined;
         if(this.hasCurLevel)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.cur_level$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.boxLevel.length)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,2);
            WriteUtils.write$TYPE_UINT32(param1,this.boxLevel[_loc2_]);
            _loc2_++;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < this.packageBoxes.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,3);
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
          * Error type: IndexOutOfBoundsException (Index: 3, Size: 3)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}
