package serverProto.zoneReport
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.WriteUtils;
   import flash.utils.IDataInput;
   import com.netease.protobuf.ReadUtils;
   import flash.errors.IOError;
   
   public final class ProtoPlayerZoneInfo extends Message
   {
      
      public static const ACTIVITY_ZONE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.zoneReport.ProtoPlayerZoneInfo.activity_zone","activityZone",1 << 3 | WireType.VARINT);
      
      public static const INFO_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.zoneReport.ProtoPlayerZoneInfo.info_list","infoList",2 << 3 | WireType.LENGTH_DELIMITED,ProtoZoneInfoReport);
       
      private var activity_zone$field:uint;
      
      private var hasField$0:uint = 0;
      
      [ArrayElementType("serverProto.zoneReport.ProtoZoneInfoReport")]
      public var infoList:Array;
      
      public function ProtoPlayerZoneInfo()
      {
         this.infoList = [];
         super();
      }
      
      public function clearActivityZone() : void
      {
         this.hasField$0 = this.hasField$0 & 4.294967294E9;
         this.activity_zone$field = new uint();
      }
      
      public function get hasActivityZone() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set activityZone(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.activity_zone$field = param1;
      }
      
      public function get activityZone() : uint
      {
         return this.activity_zone$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc3_:* = undefined;
         if(this.hasActivityZone)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.activity_zone$field);
         }
         var _loc2_:uint = 0;
         while(_loc2_ < this.infoList.length)
         {
            WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(param1,this.infoList[_loc2_]);
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
